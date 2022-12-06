function getCost() {
    let country = document.getElementById('country').value;
    console.log(country);

    let cost = document.getElementById('cost')
    if (country === "India")
        cost.innerHTML = "₹ 300"
    else
        cost.innerHTML = "$3.69"
}