
resource "local_file" "pet" {
  filename = var.filename
  content = "I love my ${random_pet.my-pet.id}"
  depends_on = [
    random_pet.my-pet
  ]
}

resource "random_pet" "my-pet" {
  prefix = var.prefix[0]
  separator = "."
  length = var.length
}

output pen-name{
  value = random_pet.my-pet.id
  description = "Record the value of pet"
}
