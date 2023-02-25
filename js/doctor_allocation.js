let data1 = JSON.parse(window.localStorage.getItem('user_data'));
$.ajax(
    {
        url: "../php/get_assigned_duties.php",
        success: function (data) {
            let data3 = JSON.parse(window.localStorage.getItem('hospital_assigned_data'));
            var count = data3.count;
            var da="";
            for (var i = 0; i < count; i++) {
               
                let ht = `<div class="card">
                <div class="card-image">
                    <img src="../media/columbia-asia-hospital-patiala-patiala-1485238179-5886efa3ea671.jpeg" alt="">
                </div>
                <div class="category"> Contact:`+data3[i].ph_no+`</div>
                <div class="heading">`+data3[i].name+` <br>
                    <span class="author">No. of patients-`+data3[i].patients+`</span> <br>
                    <span class="author">No. of doctors-`+data3[i].doctors+`</span> <br>
                </div>`;
               da+=ht;
            }
            document.getElementById("container").innerHTML += da;
        },
        error: function (e) {
            alert('Error in putting data at     : ' + JSON.stringify(e));
            console.log("stcks=" + JSON.stringify(e));
        }
    });