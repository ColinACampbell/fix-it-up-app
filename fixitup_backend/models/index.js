const mongoose = require('mongoose'); // set up mongo connection
 
mongoose.connect('mongodb://localhost:27017/fix_it_up',()=>{
    console.log('Database connected')
});

mongoose.connection.on('error',(err)=>{
    console.log(err)
})
module.exports = mongoose;