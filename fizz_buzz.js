var fs  = require("fs");
var content = fs.readFileSync(process.argv[2]).toString().split('\n');
content.forEach(function(line) {
  var line = line.split(" ");
  var result = [];
  for (var i = 1; i <= line[2]; i++) {
    if (i % line[0] === 0 && i % line[1] === 0) {
      result.push("FB");
    } else if (i % line[1] === 0) {
      result.push("B");
    } else if (i % line[0] === 0) {
      result.push("F");
    } else {
      result.push(i)
    }
  }
  console.log(result.join(" "))

})
