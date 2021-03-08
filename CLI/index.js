// chalk is used to color the text given to us in console or in terminal
const chalk = require('chalk');

// we use clear package to clear the screen by just using clear() funciton
const clear = require('clear');

// figlet actually prints the data bigger and pretty with some designs
const figlet = require('figlet');

figlet('Vishwanath', (err, data)=>{
    if(err){
        console.log('SOmething went wrong..')
        console.dir(err);
        return;
    }

    console.log(data)
})