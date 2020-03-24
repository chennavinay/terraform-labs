provider "azurerm" {
  subscription_id = "db89bad4-771b-440e-a75c-8a6bd6a14bc5"
  client_id       = "93752729-5c38-460f-8d66-bf7ef4782807"
  client_secret   = "DYOCn8-GRmg7f2@8EEw]w/QXp9BI9W0z"
  tenant_id       = "7fd4b77b-e9cf-4d60-a40e-ecf84a9fe03a"
}

terraform {
  backend "azurerm" {
  storage_account_name = "terraformstatevin"
  container_name       = "tfstate"
  key                  = "2d31be49-d999-4415-bb65-8aec2c90ba62.terraform.tfstate"
  access_key           = "lQBjxNo1075SBexGMqrnwz3nmaUFlAczJoORTFy6uxsY7jEiV1CVgao02sUz/JcySZFF2bQUGP5efsz2i3FUnQ=="
  }
}