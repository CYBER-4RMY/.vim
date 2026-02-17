# Nim Template

echo "Hello, World from Nim!"

# Example procedure
proc greet(name: string): string =
  result = "Hello, " & name & "!"

# Call the procedure
echo greet("World")
