function init(){
if (!window.applicationCache){
msg = "La API offline no está soportada";
document.querySelector('#box').innerHTML =  msg;
}
if (window.navigator.onLine) {
document.querySelector('#caja').className= 'online';
msg = "Conectado";
document.querySelector('#caja').innerHTML =  msg;
} else {
document.querySelector('#caja').className= 'offline';
msg = "Desconectado";
document.querySelector('#caja').innerHTML =  msg;
}
}
