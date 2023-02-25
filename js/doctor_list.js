let data3 = JSON.parse(window.localStorage.getItem('doctors_assigned_data'));
var count = data3.count;
var da = "";
for (var i = 0; i < count; i++) {

    let ht = ` <div class="card">
    <img src="../media/istockphoto-1327024466-170667a.jpeg" alt="John" style="width:100%">
    <h1>John Doe</h1>
    <p class="title">CEO & Founder, Example</p>
    <p>Harvard University</p>
    <p><button>Contact</button></p>
  </div>`;
    da += ht;
}
document.getElementById("container").innerHTML += da;