// var image_name= document.getElementById('image_name');
// var service = 'pod';
// var subService = 'launch';
// var tagName = document.getElementById('tagName');
// var url = `http://master_ip/cgi-bin/main.py?service=${service}&subser=${subService}&tag=${tag}&image_name=${image_name}`;

    
// POD-LAUNCH function
function podLaunch(){
    var image_name= document.getElementById('image_name');
    var service = 'pod';
    var subService = 'launch';
    var tagName = document.getElementById('tagName');
    var url = `http://master_ip/cgi-bin/main.py?service=${service}&subser=${subService}&tag=${tagName}&image_name=${image_name}`;
    // var service = 'pod';
    // var subService = 'launch';

    // var url = `http://master_ip/cgi-bin/main.py?service=${service}&subser=${subService}`

    var content = document.createElement('p');

    axios.get(url)
    .then((response)=>{
        console.log(response)
        var value = document.createTextNode(`->  ${response.data}`);
        content.appendChild(value);

        var element = document.getElementById("divOperationMessage");
        element.appendChild(content);
    })
    .catch((error)=>{
        console.log(error);
        
        var value = document.createTextNode(`->  ${error}`);
        content.appendChild(value);

        var element = document.getElementById("divOperationMessage");
        element.appendChild(content);
    })
}