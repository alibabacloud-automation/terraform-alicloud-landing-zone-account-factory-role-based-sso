variable "role_name" {
  type        = string
  description = "The name of the role."
}

variable "role_description" {
  type        = string
  description = "The description of the role."
}

variable "policies" {
  type        = list(string)
  description = "A list of policies to attach to the role."
}

variable "account_uid" {
  type        = string
  description = "The account uid."
}

variable "idp_name" {
  type        = string
  description = "The idp name."
}
