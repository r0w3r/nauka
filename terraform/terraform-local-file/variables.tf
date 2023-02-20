variable "filename" {
  default = "/home/babogdan/nauka/terraform/pets.txt"
}
variable "content" {
  default = "My favorite pet is Mrs. Whiskers"
}
variable "prefix" {
  default = ["Mr", "Mrs", "Sir"]
  type = list(string)
}
variable "separator" {
  default = "."
}
variable "length" {
  default = "2"
}
variable "file-content" {
  type = map
  default = {
    "statement1" = "We love pets!"
    "statement2" = "We love animals!"
  }
}
variable "bella" {
  type = object({
    name = string
    color = string
    age = number
    foof = list(string)
    favorite_pet = bool
  })
  default = {
    name = "bella"
    color = "brown"
    age = 7
    food = ["fish", "chicken", "turkey"]
    favorite_pet = true
  }
}

