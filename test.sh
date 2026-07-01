#!/bin/bash

# test.sh - Simple test for app.js

EXPECTED="Hello, Test!"

OUTPUT=$(node -e "
  const greet = require('./src/app.js');
  console.log(greet('Test'));
")

OUTPUT=$(echo "$OUTPUT" | xargs)

echo "Expected : $EXPECTED"
echo "Got      : $OUTPUT"

if [ "$OUTPUT" = "$EXPECTED" ]; then
  echo "✅ Test passed!"
  exit 0
else
  echo "❌ Test failed! Expected '$EXPECTED' but got '$OUTPUT'"
  exit 1
fi