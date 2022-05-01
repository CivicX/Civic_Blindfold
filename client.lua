------By Civic-----

RegisterCommand("blindfold", function()
  SetNuiFocus(false,false)
  SendNUIMessage({type = 'displayblindfold'})
end, false)

RegisterCommand("blindfoldoff", function()
  SetNuiFocus(false,false)
  SendNUIMessage({type = 'removeblindfold'})
end, false)