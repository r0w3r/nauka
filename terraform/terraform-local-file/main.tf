resource  "local_sensitive_file" "pet" {
  filename ="/home/babogdan/nauka/terraform/pets.txt"
  content = "We love pets!"
  directory_permission = "0770"
  file_permission = "0700"
}
