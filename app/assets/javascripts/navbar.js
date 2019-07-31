const initUpdateNavbarOnScroll = () => {
  const navbar = document.getElementById('navbar'),
        partnerLink = document.getElementById('becoming-partner'),
        navbarItem = document.querySelector('.nav-item');

  var navbarLoginButton = $('.navbar-login-button');

  if (navbar) {
    let navbarHeight = navbar.offsetHeight,
      navbarItemWidth = navbarItem.offsetWidth;

    window.addEventListener('scroll', () => {
      if(window.scrollY >= 50) {
        navbar.style.transform = 'translateY(0px)';
        setTimeout(function(){
          partnerLink.style.transform = `translateX(${-navbarItemWidth}px)`;
        }, 500)
        setTimeout(function(){
          navbarLoginButton.fadeIn(1000);
        }, 1000)
      } else {
        navbar.style.transform = `translateY(${-navbarHeight}px)`;
      }
    });
  }
}

initUpdateNavbarOnScroll();
