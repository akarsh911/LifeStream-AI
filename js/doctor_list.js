let data3 = JSON.parse(window.localStorage.getItem('doctors_assigned_data'));
let data2 = JSON.parse(window.localStorage.getItem('hospital_assigned_data'));

var count = data3.count;
var da = "";
var s_no = getParameters();
document.getElementById("hospital").innerHTML = data2[s_no].name;
for (var i = 0; i < count; i++) {
    var hid = data3[i].hospital_id;
    if (hid != s_no)
        continue;
    let ht = `<div class="card">
    <img src="`+ data3[i].url + `" alt="John" style="width:100%">
    <h1>`+ data3[i].name + `</h1>
    <p class="title">Email: `+ data3[i].email + `</p>
    <p>Contact: `+ data3[i].ph_no + `</p>
    <p><button>Contact</button></p>
  </div>`;
    da += ht;
}
document.getElementById("container").innerHTML += da;
function getParameters() {
    let urlString = window.location.href;
    let paramString = urlString.split('?')[1];
    let params_arr = paramString.split('&');
    for (let i = 0; i < params_arr.length; i++) {
        let pair = params_arr[i].split('=');
        console.log("Key is:" + pair[0]);
        console.log("Value is:" + pair[1]);
        return pair[1];
    }
}