const initUpdateNavbarOnScroll = () => {
  const navbar = document.getElementById('navbar'),
        partnerLink = document.getElementById('becoming-partner'),
        navbarItem = document.querySelector('.nav-item'),
        map = document.getElementById('map');

  let navbarHeight = navbar.offsetHeight,
      navbarItemWidth = navbarItem.offsetWidth,
      mapHeight = map.offsetHeight;

  var navbarLoginButton = $('.navbar-login-button');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if(window.scrollY >= window.innerHeight) {
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

      // if(window.scrollY >= mapHeight) {
      //   partnerLink.style.transform = `translateX(${-navbarItemWidth}px)`;
      //   navbarLoginButton.fadeIn(2200);
      // } else {
      //   partnerLink.style.transform = "translateX(0px)";
      //   navbarLoginButton.fadeOut(100);
      // }
    });
  }
}

export { initUpdateNavbarOnScroll };
