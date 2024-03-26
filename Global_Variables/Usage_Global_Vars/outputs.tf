locals {
  Owner       = data.terraform_remote_state.Global_Vars.outputs.Owner
  Environment = data.terraform_remote_state.Global_Vars.outputs.Environment[2]
  From        = data.terraform_remote_state.Global_Vars.outputs.Created
  Github      = data.terraform_remote_state.Global_Vars.outputs.Github_Name
}
