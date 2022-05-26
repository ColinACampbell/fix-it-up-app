const UserModel = require('./../models/user')
const passwordUtil = require('./../utils/password.util')
const jwtUtil = require('./../utils/jwt.util')

exports.testUserController = (req,res) => {
    res.status(200).json({})
}

exports.signup = async (req, res) => {
    const { email, fullName, password, userName, location} = req.body

    if (email == undefined || phone == undefined || password == undefined) {
        res.status(400).json({})
        return
    }

    const eUser = await UserModel.findOne({
        email
    })

    if (eUser != undefined) {
        res.status(409).json({})
    } else {
        await passwordUtil.encryptPassword(password, async (err, hash) => {
            if (err) throw err
            let user = await UserModel.create({
                email,
                fullName,
                userName,
                location,
                password: hash
            })

            user.password = undefined
            user = JSON.parse(JSON.stringify(user))
            const token = await jwtUtil.createToken(user)
            //req.session.user = user
            res.status(201).json({ user,token});
        })
    }
}

exports.login = async (req, res) => {
    const { email, password } = req.body

    if (email == null || password == null) {
        res.status(400).json({})
        return
    }

    let user = await UserModel.findOne({
        email
    })

    if (user == undefined || user == null) {
        res.status(401).json({})
    } else {
        await passwordUtil.comparePassword(password, user.password, async (err, isMatch) => {
            if (err) throw err;

            if (isMatch) {
                user.password = undefined
                user = JSON.parse(JSON.stringify(user))
                const token = await jwtUtil.createToken(user)
                const paymentAccounts = await PaymentAccountModel.find({ user: user._id })
                const bankRecipients = await BankRecipientModel.find({ user: user._id })
                //req.session.user = user
                res.status(200).json({ user, paymentAccounts, bankRecipients, token })
            } else
                res.status(401).json({})
        })
    }
}
