const burgerButton = document.getElementById('burgerIcon');
const crossBurgerButton = document.getElementById('crossBurgerIcon');
const burgerMenu = document.getElementById('menu');
let isOpen = false;

const formContact = document.getElementById('formContact');
const availabilityForm = document.getElementById('availabilityForm');



const handleMenu = () => {
  if(!isOpen){
    burgerMenu.style.display = "block";
    isOpen = true;
  }else{
    burgerMenu.style.display = "none"
    isOpen = false;
  }
}



const handleForms = (form) => {
  if (form === 'data'){
    // alert('datos enviados correctamente')
  }else if(form === 'noData'){
    // location.href = './rooms.html'
  }
}

burgerButton.onclick = handleMenu;
// formContact.onclick = handleForms('data')
availabilityForm.onclick = handleForms('noData')