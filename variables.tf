

variable "loc" {
    description = "Default Azure region"
    default     =   "centralus"
}

variable "tags" {
    default     = {
        source  = "citadel"
        env     = "training"
    }
}

variable "app_prefix" {
    description = "Default app prefix"
    default = ""
}

variable "webapplocs" {
    description = "Default webapplocation"
    default = [ "eastus2", "uksouth", "centralindia" ]
}
