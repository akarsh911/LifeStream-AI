let data1 = JSON.parse(window.localStorage.getItem('user_data'));
$.ajax(
    {
        url: "../php/get_blood_logistics.php",
        dataType: "json",
        success: function (data) {
            //data = JSON.parse(data);
            window.localStorage.setItem('temp_data', JSON.stringify(data));
            let data3 = JSON.parse(window.localStorage.getItem('temp_data'));
            var count = data3.count;
            var da = "";
            for (var i = 0; i < count; i++) {
                let ht = `<tr>
                     <td>`+ (i + 1) + `.</td>
                     <td>`+ data3[i].city_to + `</td>
                     <td>`+ data3[i].city_from + `</td>
                     <td>`+ data3[i].units + `</td>
                     <td>`+ data3[i].blood_group + `</td>
                     <td>`+ data3[i].status + `</td>
                     </tr>`;
                da += ht;
            }
            document.getElementById("container").innerHTML += da;
        },
        error: function (e) {
            alert('Error in putting data at     : ' + JSON.stringify(e));
            console.log("stcks=" + JSON.stringify(e));
        }
    });