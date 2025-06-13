#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; Ruta del archivo application.ini
filePath := "C:\Program Files\Mozilla Firefox\browser\application.ini"

; Pedir al usuario la nueva versión
InputBox, newVersion, Actualizar versión de Firefox, Ingresa la nueva versión (ej: 139.0.4):,, 300, 150,,,,, 139.0.1

if (ErrorLevel) {
    MsgBox, Operación cancelada.
    ExitApp
}

; Leer el archivo
FileRead, fileContent, %filePath%
if (ErrorLevel) {
    MsgBox, No se pudo leer el archivo. Asegúrate de que la ruta sea correcta y tengas permisos.
    ExitApp
}

; Reemplazar las líneas de versión
fileContent := RegExReplace(fileContent, "Version=\d+\.\d+\.\d+", "Version=" . newVersion)
fileContent := RegExReplace(fileContent, "MinVersion=\d+\.\d+\.\d+", "MinVersion=" . newVersion)
fileContent := RegExReplace(fileContent, "MaxVersion=\d+\.\d+\.\d+", "MaxVersion=" . newVersion)

; Escribir los cambios en el archivo
FileDelete, %filePath%
FileAppend, %fileContent%, %filePath%
if (ErrorLevel) {
    MsgBox, No se pudo escribir el archivo. Verifica permisos de administrador.
    ExitApp
}

MsgBox, Versión actualizada a %newVersion% en el archivo application.ini.
ExitApp