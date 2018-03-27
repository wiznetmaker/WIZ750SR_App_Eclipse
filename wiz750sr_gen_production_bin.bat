copy /b /y Debug\WIZ750SR_App.bin bin\
copy /b /y ..\WIZ750SR_Boot_Eclipse\Debug\WIZ750SR_Boot.hex + Debug\WIZ750SR_App.hex ..\WIZ750SR_Production.hex
hex2bin.exe ..\WIZ750SR_Production.hex

