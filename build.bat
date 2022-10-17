taskkill /F /IM Application-x64-profile.exe

del /S bin\WinData\*.pkm

rmdir /s /q FXFlatLand\bin
rmdir /s /q FXFlatLand\Build

bin\x64\Tools-x64.exe /build FXFlatLand.rsc /pathres ../FXFlatLand /pathdat ../FXFlatLand/bin
bin\x64\Tools-x64.exe /mod Package.rsc:FXFlatLand /pathres ../FXFlatLand /pathdat ../FXFlatLand/bin

rmdir /s /q FXLivestockDeer\bin
rmdir /s /q FXLivestockDeer\Build

bin\x64\Tools-x64.exe /build FXLivestockDeerResources.rsc /pathres ../FXLivestockDeer /pathdat ../FXLivestockDeer/bin
bin\x64\Tools-x64.exe /mod Package.rsc:FXLivestockDeer /pathres ../FXLivestockDeer /pathdat ../FXLivestockDeer/bin

rmdir /s /q FXMinesQuarry\bin
rmdir /s /q FXMinesQuarry\Build

bin\x64\Tools-x64.exe /build FXMinesQuarryResources.rsc /pathres ../FXMinesQuarry /pathdat ../FXMinesQuarry/bin
bin\x64\Tools-x64.exe /mod Package.rsc:FXMinesQuarry /pathres ../FXMinesQuarry /pathdat ../FXMinesQuarry/bin

rmdir /s /q FXPlus\bin
rmdir /s /q FXPlus\Build

bin\x64\Tools-x64.exe /build FXPlus.rsc /pathres ../FXPlus /pathdat ../FXPlus/bin
bin\x64\Tools-x64.exe /mod Package.rsc:FXPlus /pathres ../FXPlus /pathdat ../FXPlus/bin

rmdir /s /q FXStartCondition\bin
rmdir /s /q FXStartCondition\Build

bin\x64\Tools-x64.exe /build FXStartCondition.rsc /pathres ../FXStartCondition /pathdat ../FXStartCondition/bin
bin\x64\Tools-x64.exe /mod Package.rsc:FXStartCondition /pathres ../FXStartCondition /pathdat ../FXStartCondition/bin

bin\x64\Application-x64-profile.exe /onlypkg