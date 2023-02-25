let data3 = JSON.parse(window.localStorage.getItem('hospital_assigned_data'));
var count = data3.count;
var da = "";
for (var i = 0; i < count; i++) {

    let ht = `<div class="card">
                <div class="card-image">
                    <img href="../html/doctors_list.html?s_no="`+data3[i].s_no+` src="`+data3[i].url+`" alt="">
                </div>
                <div class="category"> Contact:`+ data3[i].ph_no + `</div>
                <div class="heading">`+ data3[i].name + ` <br>
                    <span class="author">No. of patients-`+ data3[i].patients + `</span> <br>
                    <span class="author">No. of doctors-`+ data3[i].doctors + `</span> <br>
                </div></div>`;
    da += ht;
}
document.getElementById("container").innerHTML += da;