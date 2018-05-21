import $ from 'jquery';

const initForm = () => {
  var elFormAdd = document.querySelector('#elFormAdd');
  var showDialogButton = document.querySelector('#show-dialog');

  $('#elFormAdd').hide();

  showDialogButton.addEventListener('click', function() {
    // dialog.showModal();
    // $('#elFormAdd').fadeIn();
    console.log(elFormAdd);
    $('#elFormAdd').toggle("slow");
    // elFormAdd.classList.remove('visuallyhidden');
    $('#cocktail_name').focus();

  });

}


export { initForm };
