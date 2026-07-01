// src/app.js
function greet(name) {
  return `Hello, ${name}!`;
}

module.exports = greet;

// For direct execution
if (require.main === module) {
  console.log(greet("World"));
}