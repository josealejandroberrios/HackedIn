function handleFileSelect(evt) {
  var files = evt.target.files; // FileList object
    f=files[0]
    // Only process image files.
    if (f.type.match('avatar.*')) {
      var reader = new FileReader();
      reader.onload = (function(theFile) {
        return function(e) {
          // alert(e.target.result);
          document.getElementById("something_unique").src=e.target.result;
        };
      })(f);

    // Read in the image file as a data URL.
    reader.readAsDataURL(f);
    }
  }
document.getElementById('something_else_unique').addEventListener('change', handleFileSelect, false)