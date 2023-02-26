let data3 = JSON.parse(window.localStorage.getItem('user_data'));
var user = data3.user_type;
console.log(data3);
if (user == 0) {

}
else if (user == 2) {
    document.getElementById("pbr").style.visibility = "collapse";
    document.getElementById("log").style.visibility = "collapse";
    document.getElementById("doc").style.visibility = "collapse";
    document.getElementById("ambu").style.visibility = "collapse";
    document.getElementById("pbr").style.display = "none";
    document.getElementById("ambu").style.display = "none";
    document.getElementById("log").style.display = "none";
    document.getElementById("doc").style.display = "none";
}
else if (user == 3) {
    document.getElementById("pbr").style.visibility = "collapse";
    document.getElementById("log").style.visibility = "collapse";
    document.getElementById("ambu").style.visibility = "collapse";
    document.getElementById("pbr").style.display = "none";
    document.getElementById("ambu").style.display = "none";
    document.getElementById("log").style.display = "none";
}
else if (user == 1) {
    document.getElementById("pbr").style.visibility = "collapse";
    document.getElementById("doc").style.visibility = "collapse";
    document.getElementById("pbr").style.display = "none";
    document.getElementById("doc").style.display = "none";
}
else {
    document.getElementById("pbr").style.display = "none";
    document.getElementById("doc").style.display = "none";
    document.getElementById("pbr").style.display = "none";
    document.getElementById("ambu").style.display = "none";
    document.getElementById("log").style.display = "none";
    document.getElementById("pbr").style.display = "none";
    document.getElementById("ambu").style.display = "none";
    document.getElementById("log").style.display = "none";
    document.getElementById("doc").style.display = "none";
}
