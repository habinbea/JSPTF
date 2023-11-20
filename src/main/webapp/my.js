function edit_confirm() {
  if (validateForm()) {
    alert("Are you sure you want to save these changes?");
  } else {
    alert("Required: TF name");
  }
}

function delete_confirm(id) {
  alert("Hello, World!");
  // var a = confirm("Are you sure you want to delete this TF?");
  // if(a) location.href='deleteTFVO.jsp?id=' + id;
}
function add_confirm() {
  if (validateForm()) {
    alert("A new TF was added");
  } else {
    alert("Required: TF name");
  }
}
function validateForm() {
  var tfname = document.getElementById("tfname").value;
  if (tfname == "") {
    return false;
  } else {
    return true;
  }
}
