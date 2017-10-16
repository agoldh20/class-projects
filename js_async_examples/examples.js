setTimeout(function() {
  console.log("First Task Complete!");
  setTimeout(function() {
    console.log("Second Task Complete!");
    setTimeout(function() {
      console.log("Third Task Complete!");
    }, 2000);
  }, 2000);
}, 2000);


