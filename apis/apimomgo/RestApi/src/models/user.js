const mongoose = require ("mongoose");

const userSchema = mongoose.Schema ({
    firstName : {
        type : String
    },
    lastName : {
        type : String
    },
    phone : {
        type : String
    },
    gender : {
        type : String,
        default: null
    },
    email : {
        type : String
    },
    password : {
        type : String
    },
});

module.exports = mongoose.model('User',userSchema);