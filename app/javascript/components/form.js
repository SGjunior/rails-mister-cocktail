import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  if (document.getElementById("sweet-alert-demo")) {
    document.getElementById('sweet-alert-demo').addEventListener('click', () => {
      swal({
        title: "A nice alert",
        text: "This is a great alert, isn't it?",
        icon: "success"
      })
    });
  }
}


export { bindSweetAlertButtonDemo };

