local IsOnBlindfold = false

RegisterCommand("blindfold", function()
  if not IsOnBlindfold then  
    SetNuiFocus(false,false)
    SendNUIMessage({type = 'displayblindfold'})
    Notify('You\'ve put your blindfold on.')
    IsOnBlindfold = true
  else
    SetNuiFocus(false,false)
    SendNUIMessage({type = 'removeblindfold'})
    Notify('You\'ve taken your blindfold off.')
    IsOnBlindfold = false
  end
end, false)

function Notify(output)
    TriggerEvent('chatMessage', '^1SYSTEM: ', output)
end
