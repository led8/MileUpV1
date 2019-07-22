const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-mileup');
  const navbarLink = document.getElementById('becoming-partner');
  var loginButton = $('.navbar-login-button');

  if (navbar) {
    window.addEventListener('scroll', () => {

      if(window.scrollY >= 50) {
        navbar.classList.add('purple');
        navbarLink.classList.add('white');
      } else {
        navbar.classList.remove('purple');
        navbarLink.classList.remove('white');
      }

      if(window.scrollY >= 670) {
        loginButton.fadeIn(1000);
      } else {
        loginButton.fadeOut(1600);
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
