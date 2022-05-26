const jsonWebToken = require('jsonwebtoken')

const tempSecretKey = "Test"

exports.createToken = (payload) => {
    return new Promise((resolve, reject) => {
        jsonWebToken.sign(payload, tempSecretKey, (err, token) => {
            if (err) 
                reject(err)
            else 
                resolve(token)
        })
    })
}

exports.verifyToken = (token) => {
    return new Promise((resolve, reject) => {
        jsonWebToken.verify(token, tempSecretKey, (err, decodedValue) => {
            if (err) {
                reject(err)
            } else {
                resolve(decodedValue)
            }
        })
    })
}