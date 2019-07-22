function debounce(func, wait = 20, immediate = true) {
  var timeout;
  return function() {
    var context = this, args = arguments;
    var later = function() {
      timeout = null;
      if (!immediate) func.apply(context, args);
    };
    var callNow = immediate && !timeout;
    clearTimeout(timeout);
    timeout = setTimeout(later, wait);
    if (callNow) func.apply(context, args);
  };
}

const sliderContainers = document.querySelectorAll('.slide-in');

function checkSlide(e) {
  sliderContainers.forEach(slideContainer => {
    const slideInAt = (window.scrollY + window.innerHeight) - slideContainer.offsetHeight / 2;
    const containerBottom = slideContainer.offsetTop + slideContainer.offsetHeight;
    const isHalfShown = slideInAt > slideContainer.offsetTop;
    const isNotScrolledPast = window.scrollY < containerBottom;

    if (isHalfShown && isNotScrolledPast) {
      slideContainer.classList.add('active');
    } else {
      slideContainer.classList.remove('active');
    }
  })
}

window.addEventListener('scroll', debounce(checkSlide));
