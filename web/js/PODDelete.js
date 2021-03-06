// var imageName= 'kubectl';
// var service = 'pod';
// var subService = 'get_all';
// var tag = "sudo%20kubectl%20get%20pod";
// var url = `http://master_ip/cgi-bin/main.py?service=${service}&subser=${subService}&tag=${tag}&image_name=${imageName}`
    
// GetAll function
function get_all(){
    var service = 'pod';
    var subService = 'describe';
    var tagName = document.getElementById('tagName').value;
    var url = `http://13.232.160.12/cgi-bin/main.py?service=${service}&subser=${subService}&tag=${tagName}`;

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