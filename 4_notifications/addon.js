var addon = require('./.build/release/Notifications.node')

addon.subscribeToDidActivateApplicationNotification(function (msg) {
  console.log('subscribeToDidActivateApplicationNotification: ', msg)
})
