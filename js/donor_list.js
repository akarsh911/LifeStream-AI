let data1 = JSON.parse(window.localStorage.getItem('user_data'));
$.ajax(
    {
        url: "../php/get_donors.php",
        dataType: "json",
        success: function (data) {
            //data = JSON.parse(data);
            window.localStorage.setItem('temp_data', JSON.stringify(data));
            let data3 = JSON.parse(window.localStorage.getItem('temp_data'));
            var count = data3.count;
            var da = "";
            for (var i = 0; i < count; i++) {
                var no = "No";
                if (data3[i].probable_donor == 1) {
                    no = "Yes";
                }
                let ht = `<tr>
                <td >`+ (i + 1) + `.</td>
                <td>`+ data3[i].name + `</td>
                <td>`+ data3[i].blood_group + `</td>
                <td>`+ data3[i].age + `</td>
                <td>`+ data3[i].gender + `</td>
                <td>`+ data3[i].last_donation_date + `</td>
                <td>`+ data3[i].ph_no + `</td>
                <td>`+ data3[i].times_donated + `</td>
                 <td>`+ no + `</td>
            </tr>`;
                da += ht;
            }
            document.getElementById("table_donor").innerHTML += da;
        },
        error: function (e) {
            alert('Error in putting data at     : ' + JSON.stringify(e));
            console.log("stcks=" + JSON.stringify(e));
        }
    });
function filter() {
    var da = ` <tr>
                <th>Sr.no</th>
                <th>Name</th>
                <th>Blood Group</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Last Donation</th>
                <th>Contact Number</th>
                <th>Times Donated</th>
                <th>Can Donate</th>
            </tr>`;
    var btype = document.getElementById("selectPointOfInterest").value;
    $.ajax(
        {
            url: "../php/get_donors.php",
            dataType: "json",
            success: function (data) {
                //data = JSON.parse(data);
                window.localStorage.setItem('temp_data', JSON.stringify(data));
                let data3 = JSON.parse(window.localStorage.getItem('temp_data'));
                var count = data3.count; var c = 1;
                for (var i = 0; i < count; i++) {
                    var no = "No";
                    if (data3[i].probable_donor == 1) {
                        no = "Yes";
                    }
                    if (data3[i].blood_group != btype) {
                        if (btype == "None") {

                        }
                        else
                            continue;
                    }
                    let ht = `<tr>
                    <td >`+ c++ + `.</td>
                    <td>`+ data3[i].name + `</td>
                    <td>`+ data3[i].blood_group + `</td>
                    <td>`+ data3[i].age + `</td>
                    <td>`+ data3[i].gender + `</td>
                    <td>`+ data3[i].last_donation_date + `</td>
                    <td>`+ data3[i].ph_no + `</td>
                    <td>`+ data3[i].times_donated + `</td>
                     <td>`+ no + `</td>
                </tr>`;
                    da += ht;
                }
                document.getElementById("table_donor").innerHTML = da;
            },
            error: function (e) {
                alert('Error in putting data at     : ' + JSON.stringify(e));
                console.log("stcks=" + JSON.stringify(e));
            }
        });
}