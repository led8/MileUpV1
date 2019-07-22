const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-mileup');
  const navbarLink = document.getElementById('becoming-partner');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if(window.scrollY >= 50) {
        navbar.classList.add('navbar-mileup-purple');
        navbarLink.classList.add('nav-link-white');
      }
      else {
        navbar.classList.remove('navbar-mileup-purple');
        navbarLink.classList.remove('nav-link-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
