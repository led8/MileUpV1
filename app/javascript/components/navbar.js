const initUpdateNavbarOnScroll = () => {
  const transparentNavbar = document.getElementById('transparent-navbar'),
        purpleNavbar = document.getElementById('purple-navbar'),
        partnerLink = document.getElementById('becoming-partner'),
        navbarItem = document.querySelector('.nav-item'),
        map = document.getElementById('map');

  let transparentNavbarHeight = transparentNavbar.offsetHeight,
      purpleNavbarHeight = purpleNavbar.offsetHeight,
      navbarItemWidth = navbarItem.offsetWidth,
      mapHeight = map.offsetHeight;

  var navbarLoginButton = $('.navbar-login-button');

  if (transparentNavbar) {
    window.addEventListener('scroll', () => {
      if(window.scrollY >= 50) {
        transparentNavbar.style.transform = `translateY(${-transparentNavbarHeight}px)`;
        transparentNavbar.classList.add('absolute');
        purpleNavbar.classList.remove('absolute');
        purpleNavbar.style.transform = "translateY(0px)";
      } else {
        transparentNavbar.style.transform = "translateY(0px)";
        transparentNavbar.classList.remove('absolute');
        purpleNavbar.style.transform = `translateY(${-purpleNavbarHeight}px)`;
        purpleNavbar.classList.add('absolute');
      }

      if(window.scrollY >= mapHeight) {
        partnerLink.style.transform = `translateX(${-navbarItemWidth}px)`;
        navbarLoginButton.fadeIn(2200);
      } else {
        partnerLink.style.transform = "translateX(0px)";
        navbarLoginButton.fadeOut(100);
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
