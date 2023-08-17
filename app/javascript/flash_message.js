document.addEventListener("DOMContentLoaded", function () {
  setTimeout(function () {
    var flashMessages = document.querySelector(".flash-message");
    // flashMessages.forEach(function (message) {
      flashMessages.remove();
    // });
  }, 3000);
});