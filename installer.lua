--pastebin run 63KJVFvu

local file = fs.open("startup", "w")
file.writeLine("shell.run(\"update_reactor.lua\")")
file.writeLine("while (true) do")
file.writeLine("	shell.run(\"reactorController.lua\")")
file.writeLine("	sleep(2)")
file.writeLine("end")
file.close()
shell.run("pastebin get w6vVtrLb update_reactor.lua")
shell.run("reboot")