let data3 = JSON.parse(window.localStorage.getItem('hospital_blood_distribution'));
var count = data3.count;
var da = "";
for (var i = 0; i < count; i++) {

    let ht = `<tr>
        <td>`+ (i + 1) + `.</td>
        <td>`+ data3[i].name + `.</td>
        <td>`+ data3[i].AP + `</td>
        <td>`+ data3[i].AM + `</td>
        <td>`+ data3[i].BP + `</td>
        <td>`+ data3[i].BM + `</td>
        <td>`+ data3[i].ABP + `</td>
        <td>`+ data3[i].ABM + `</td>
        <td>`+ data3[i].OP + `</td>
        <td>`+ data3[i].OM + `</td>
      </tr>`;
    da += ht;
}
document.getElementById("table_predict").innerHTML += da;