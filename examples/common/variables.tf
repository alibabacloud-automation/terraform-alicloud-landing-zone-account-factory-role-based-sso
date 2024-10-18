variable "metadata_file_path" {
  type        = string
  default     = "./metadata.xml"
  description = "metadata.xml exported from IdP"
}

variable "ram_roles" {
  type = list(object({
    name        = string
    description = string
    policies    = list(string)
  }))
  default = [
    {
      name        = "Admin"
      description = "Super admin"
      policies = [
        "AdministratorAccess"
      ]
    },
    {
      name        = "LogAdmin"
      description = "Log service full access"
      policies = [
        "AliyunLogFullAccess"
      ]
    },
    {
      name        = "NetworkAdmin"
      description = "VPC/SLB/CEN... full access"
      policies = [
        "AliyunVPCFullAccess",
        "AliyunNATGatewayFullAccess",
        "AliyunEIPFullAccess",
        "AliyunCENFullAccess",
        "AliyunSLBFullAccess"
      ]
    }
  ]
  description = "The RAM roles."
}

variable "saml_provider_name" {
  type        = string
  default     = "EnterpriseIdP"
  description = "(optional) IdP name used as SSO"
}

variable "saml_provider_description" {
  type        = string
  default     = "IdP used for role based SSO"
  description = "(optional) IdP description"
}
