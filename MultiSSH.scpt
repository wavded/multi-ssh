var iTerm = Application('iTerm')
var window = iTerm.terminalWindows[0]
var session = window.currentSession

// setup the session
session.rows = 100

// setup server list
var servers = [
  "list",
  "servers",
  "here",
]

servers.forEach(function (server, index) {
  if (index > 0) {
    var tab = window.createTabWithDefaultProfile()
  }
  iTerm.write(session, { text: "ssh " + server })
})
