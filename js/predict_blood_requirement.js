let data = JSON.parse(window.localStorage.getItem('hospital_blood_distribution'));
var count = data.count;
var da = "";
for (var i = 0; i < count; i++) {

    let ht = `<tr>
        <td>`+ (i + 1) + `.</td>
        <td>`+ data[i].name + `.</td>
        <td>`+ data[i].AP + `</td>
        <td>`+ data[i].AM + `</td>
        <td>`+ data[i].BP + `</td>
        <td>`+ data[i].BM + `</td>
        <td>`+ data[i].ABP + `</td>
        <td>`+ data[i].ABM + `</td>
        <td>`+ data[i].OP + `</td>
        <td>`+ data[i].OM + `</td>
      </tr>`;
    da += ht;
}
document.getElementById("table_predict").innerHTML += da;