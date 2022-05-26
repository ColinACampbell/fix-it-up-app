const express = require('express')
const app = express()

const userRoutes = require('./routes/user')

app.use('/user',userRoutes)

app.get('/',(req,res)=>{
    res.status(200).json({message:"Hello World"})
})

app.listen(3000,(err)=>{
    console.log("Server started")
})