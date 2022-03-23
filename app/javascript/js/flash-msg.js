// turbolinks:Execute when loading page with load
document.addEventListener('turbolinks:load', () => {

  //get flash message element
  const flashMessage = document.querySelector('.alert');

  //Fade out (gradually transparent,Define a function (to hide)
  const fadeOutFlashMessage = () => {
    //Variable timer as the return value to specify setInterval_Store in id
    const timer_id = setInterval(() => {
      //Get style attribute opacity of flash message
      const opacity = flashMessage.style.opacity;

      if (opacity > 0) {
      //0 if the opacity value is greater than 0.Decrease the value by 02
        flashMessage.style.opacity = opacity - 0.02;
      } else {
        //Hide when the opacity value reaches 0
        flashMessage.style.display = 'none';
        //Stop setInterval
        clearInterval(timer_id);
      };
    }, 50); //This time 0.Execute setInterval every 05 seconds
  }

  //Run only if there is a flash message
  if (flashMessage !== null) {
    //set style attribute opacity
    flashMessage.style.opacity = 1;
    //This time, execute the function that fades out as defined above 3 seconds after the display.
    setTimeout(fadeOutFlashMessage, 3000);
  };
});