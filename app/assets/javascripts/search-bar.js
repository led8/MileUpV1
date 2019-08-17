const initSearchBarOnScroll = () => {
  const searchBar = document.querySelector('.search-bar');
  let searchBarHeight = searchBar.offsetHeight;

  window.addEventListener('scroll', () => {
    if(window.scrollY >= 100) {
      searchBar.style.transform = 'translateY(0px)';
    } else {
      searchBar.style.transform = `translateY(${-searchBarHeight}px)`;
    }
  });
}

initSearchBarOnScroll();
