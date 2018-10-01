function Avaliar(estrela) {
 var url = window.location;
 url = url.toString()
 url = url.split("local.html");
 url = url[0];

 var s1 = document.getElementById("s1").src;
 var s2 = document.getElementById("s2").src;
 var s3 = document.getElementById("s3").src;
 var s4 = document.getElementById("s4").src;
 var s5 = document.getElementById("s5").src;
 var avaliacao = 0;

if (estrela == 5){
 if (s5 == url + "assets/img/star0.png") {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star1.png";
 document.getElementById("s4").src = "assets/img/star1.png";
 document.getElementById("s5").src = "assets/img/star1.png";
 avaliacao = 5;
 } else {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star1.png";
 document.getElementById("s4").src = "assets/img/star1.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 4;
}}

if (estrela == 4){
 if (s4 == url + "assets/img/star0.png") {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star1.png";
 document.getElementById("s4").src = "assets/img/star1.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 4;
 } else {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star1.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 3;
}}

if (estrela == 3){
 if (s3 == url + "assets/img/star0.png") {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star1.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 3;
 } else {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star0.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 2;
}}

if (estrela == 2){
 if (s2 == url + "assets/img/star0.png") {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star1.png";
 document.getElementById("s3").src = "assets/img/star0.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 2;
 } else {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star0.png";
 document.getElementById("s3").src = "assets/img/star0.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 1;
}}

if (estrela == 1){
 if (s1 == url + "assets/img/star0.png") {
 document.getElementById("s1").src = "assets/img/star1.png";
 document.getElementById("s2").src = "assets/img/star0.png";
 document.getElementById("s3").src = "assets/img/star0.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 1;
 } else {
 document.getElementById("s1").src = "assets/img/star0.png";
 document.getElementById("s2").src = "assets/img/star0.png";
 document.getElementById("s3").src = "assets/img/star0.png";
 document.getElementById("s4").src = "assets/img/star0.png";
 document.getElementById("s5").src = "assets/img/star0.png";
 avaliacao = 0;
}}

 document.getElementById('rating').innerHTML = avaliacao;

}
