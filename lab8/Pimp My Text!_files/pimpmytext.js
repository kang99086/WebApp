function hello() {
  alert("Hello,World!");
}

function bigger() {
  $("txt").style.fontSize = parseInt($("txt").style.fontSize)+2+"pt";
}

function text() {
  var text = document.getElementById("txt");
  text.value = "I`m hungry. so i want to go home!";
  $("txt").style.fontSize = "24pt";
}

function change() {
  alert("change");
  var checkbox = document.getElementById("Bling")
  if(checkbox.checked == true){
    $("txt").style.weight = "bold";
    $("txt").style.color = "green";
    $("txt").style.textDecoration = "underline";
    document.body.style.backgroundImage = "url('https://selab.hanyang.ac.kr/courses/cse326/2019/labs/images/8/hundred.jpg')";
  }
  else {
    $("txt").style.weight = "none";
    $("txt").style.color = "black";
    $("txt").style.textDecoration = "none";
    document.body.style.backgroundImage = "none";
  }
}

function hi() {
  var text = document.getElementById("txt");
  var u = text.value.toUpperCase();
  var a = u.split(".");
  text.value = a.join("-izzle");
  var checkbox = document.getElementById("Bling")
  if(checkbox.checked == true){
    $("txt").style.color = "black";
    $("txt").style.textDecoration = "none";
  }
}

function play() {
  $("txt").style.fontSize = "12pt";
  setInterval(bigger,500);
}

window.onload = function(){
  $('Bling').onchange=change;
  $('Pimpin').onclick=play;
  $('snoopify').onclick=hi;
  $('piglatin').onclick=piglatin;
  $('malkovich').onclick=malkovich;
}


function piglatin() {
  var text = document.getElementById('txt');
  console.log(text.value);
  var k = text.value.split(" ");
  console.log(k);
  console.log(k.lenght);
}

function malkovich() {
  var text = document.getElementById('txt');
  if(text.value.length >= 5) {
    text.value = "Malkovich";
  }
}
