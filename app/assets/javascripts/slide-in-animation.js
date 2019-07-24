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

// const sliderImages = document.querySelectorAll('.slide-in');

// function handleImages(e) {
//   sliderImages.forEach(sliderImage => {
//     const slideInAt = (window.scrollY + window.innerHeight) - sliderImage.offsetHeight / 2;
//     const containerBottom = sliderImage.offsetTop + sliderImage.offsetHeight;
//     const isHalfShown = slideInAt > sliderImage.offsetTop;
//     const isNotScrolledPast = window.scrollY < containerBottom;

//     if (isHalfShown && isNotScrolledPast) {
//       sliderImage.classList.add('active');
//     } else {
//       sliderImage.classList.remove('active');
//     }
//   })
// }

const unShowContents = document.querySelectorAll('.show-up');

function handleContents(e) {
  unShowContents.forEach(unShowContent => {
    const slideInAt = (window.scrollY + window.innerHeight) - unShowContent.offsetHeight / 2;
    const containerBottom = unShowContent.offsetTop + unShowContent.offsetHeight;
    const isHalfShown = slideInAt > unShowContent.offsetTop;
    const isNotScrolledPast = window.scrollY < containerBottom;

  if (isHalfShown && isNotScrolledPast) {
      unShowContent.classList.add('active');
    } else {
      unShowContent.classList.remove('active');
    }
  })
}


// window.addEventListener('scroll', debounce(handleImages));
window.addEventListener('scroll', debounce(handleContents));
