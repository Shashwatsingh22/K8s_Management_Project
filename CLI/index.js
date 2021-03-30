var command = document.querySelector('.command');
command.addEventListener('keypress', setQuery);

function setQuery(key){
    if(key.keyCode == 13)
    {
        const commandValue = command.value;
        if(commandValue.trim() != "")
        {
            var url = `http://13.232.160.12/cgi-bin/cmd.py?cmd=${commandValue}`;

            var getResponse = '';
            
            var label = document.createElement("p");
            var node = document.createTextNode(`$ ${commandValue}`);
            label.appendChild(node);

            var content = document.createElement("p");

            axios.get(url)
            .then(function (response) {
                console.log(response.data)
                console.log(response);
                getResponse = response.data;
                var value = document.createTextNode(response.data);
                content.appendChild(value);
                label.appendChild(content);
                
                var element = document.getElementById('in');
                var br = document.createElement('br');
                element.appendChild(br);
                element.parentNode.insertBefore(label, element);

            })
            .catch(function (error) {
                console.log(error);
                getResponse = `There is some error - see the console log of your browser`;
                var value = document.createTextNode(error);
                content.appendChild(value);
                label.appendChild(content);
                
                var element = document.getElementById('in');
                var br = document.createElement('br');
                element.appendChild(br);
                element.parentNode.insertBefore(label, element);
            })
            


            let it = setInterval(()=>{
            command.value = "";
            getResponse = "";
            var element = document.getElementById("screen");
            element.scrollTop = element.scrollHeight- element.scrollTop+30;
            clearInterval(it);
            },5)
        }
        else
        {
            var label = document.createElement("p");
            var node = document.createTextNode(`$ ${commandValue}`);
            label.appendChild(node);

            var element = document.getElementById('in');
            var br = document.createElement('br');
            element.appendChild(br);
            element.parentNode.insertBefore(label, element);

            let it = setInterval(()=>{
            command.value = "";
            var element = document.getElementById("screen");
            element.scrollTop =element.scrollHeight- element.clientHeight - element.scrollTop;
            clearInterval(it);
            },1)

        }
        
    }
}

// var axios = require('axios');

// axios.get('http://13.232.160.12/cgi-bin/cmd.py?cmd=kubectl')
//   .then(function (response) {
//     console.log(response.data);
//   })
//   .catch(function (error) {
//     console.log(error);
//   })