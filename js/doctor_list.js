let data3 = JSON.parse(window.localStorage.getItem('doctors_assigned_data'));
var count = data3.count;
var da = "";
for (var i = 0; i < count; i++) {

    let ht = `<div class="card">
    <img src="`+data3[i].url+`" alt="John" style="width:100%">
    <h1>`+data3[i].name+`</h1>
    <p class="title">Email: `+data3[i].email+`</p>
    <p>Contact: `+data3[i].ph_no+`</p>
    <p><button>Contact</button></p>
  </div>`;
    da += ht;
}
document.getElementById("container").innerHTML += da;