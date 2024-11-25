variable "rg_name" {
  description = "Nom du groupe de ressources"
}

variable "location" {
  description = "Localisation Azure"
}

variable "postgresql_server_name" {
  description = "Nom du serveur PostgreSQL"
}

variable "administrator_login" {
  description = "Identifiant administrateur PostgreSQL"
  sensitive   = true
}

variable "administrator_password" {
  description = "Mot de passe administrateur PostgreSQL"
  sensitive   = true
}
