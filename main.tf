# Read a file.
data "local_file" "default" {
  filename = "${path.module}/input.txt"
}

# Write a file based on the contents of the read file.
resource "local_file" "default" {
  content  = data.local_file.default.content
  filename = "${path.module}/ouput.txt"
}
