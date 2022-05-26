const { Schema } = require("mongoose");
const mongooseConn = require('./index')

const schema = new Schema({
    userName:String,
    fullName:String,
    location:String,
    email:String,
    password:String
})


module.exports = mongooseConn.model('User',schema)