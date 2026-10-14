variable "project_network" {
  type        = string
  description = "Name des bestehenden OpenStack Projekt-Netzwerks."
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "CIDR-Block, dem SSH-Zugriff gestattet wird (z. B. '203.0.113.45/32')."

  validation {
    condition     = can(cidrhost(var.ssh_allowed_cidr, 0))
    error_message = "Die Variable ssh_allowed_cidr muss ein gültiger CIDR-Block sein (z.B. '1.2.3.4/32')."
  }
  validation {
    condition     = var.ssh_allowed_cidr != "0.0.0.0/0"
    error_message = "SSH must not be open to the whole internet (0.0.0.0/0)."
  }
}

variable "student_name" {
  type        = string
  description = "Name der/des Studierenden für die HTML-Seite."
}

variable "name_prefix" {  
  type        = string
  description = "Praefix für Ressourcennamen."
  default     = "week7"
}

variable "ssh_public_key_path" {
  type        = string
  description = "Pfad zum öffentlichen SSH-Schlüssel."
  default     = "~/.ssh/week7_ed25519.pub"
}

variable "image_name" {
  type        = string
  description = "Name des Betriebssystem-Images."
  default     = "Ubuntu-26.04"
}

variable "flavor_name" {
  type        = string
  description = "Name des Flavors (Instanzgröße)."
  default     = "standard.large"
}

variable "page_message" {
  type        = string
  description = "Nachricht"
  default     = "Hello there"
}