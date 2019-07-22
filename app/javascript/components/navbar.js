const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-mileup');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-mileup-border');
        console.log("The window is scrolling !!")
      } else {
        navbar.classList.remove('navbar-mileup-border');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
