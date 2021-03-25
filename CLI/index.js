var command = document.querySelector('.command');
command.addEventListener('keypress', setQuery);

function setQuery(key){
    if(key.keyCode == 13)
    {
        const commandValue = command.value;

        var label = document.createElement("p");
        var node = document.createTextNode(`$ ${commandValue}`);
        label.appendChild(node);

        

        var element = document.getElementById('in');
        var br = document.createElement('br');
        element.appendChild(br);
        element.parentNode.insertBefore(label, element);

        let it = setInterval(()=>{
        command.value = "";
        clearInterval(it);
        },500)
    }
}