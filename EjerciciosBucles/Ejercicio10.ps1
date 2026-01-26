Clear-Host
do {
    Write-Host "Seleccione una opción:"
    Write-Host "a) Crear una carpeta"
    Write-Host "b) Crear un fichero nuevo"
    Write-Host "c) Cambiar el nombre de un fichero o carpeta"
    Write-Host "d) Borrar un archivo o carpeta"
    Write-Host "e) Verificar si existe un fichero o carpeta"
    Write-Host "f) Mostrar el contenido de un directorio"
    Write-Host "g) Mostrar la fecha y hora actuales"
    Write-Host "x) Salir"
    
    $opcion = Read-Host "Opción seleccionada"

    switch ($opcion) {
        'a' {
            $carpeta = Read-Host "Introduzca el nombre de la carpeta"
            New-Item -ItemType Directory -Name $carpeta
            Write-Host "Carpeta '$carpeta' creada."
        }
        'b' {
            $fichero = Read-Host "Introduzca el nombre del fichero"
            New-Item -ItemType File -Name $fichero
            Write-Host "Fichero '$fichero' creado."
        }
        'c' {
            $nomAntiguo = Read-Host "Introduzca el nombre actual del fichero o carpeta"
            $nomNuevo = Read-Host "Introduzca el nuevo nombre"
            Rename-Item -Path $nomAntiguo -NewName $nomNuevo
            Write-Host "Elemento renombrado de '$nomAntiguo' a '$nomNuevo'."
        }
        'd' {
            $elemento = Read-Host "Introduzca el nombre del archivo o carpeta a borrar"
            Remove-Item -Path $elemento
            Write-Host "Elemento '$elemento' borrado."
        }
        'e' {
            $elemento = Read-Host "Introduzca el nombre del archivo o carpeta a verificar"
            if (Test-Path $elemento) {
                Write-Host "El archivo o carpeta '$elemento' existe."
            } else {
                Write-Host "El archivo o carpeta '$elemento' no existe."
            }
        }
        'f' {
            $directorio = Read-Host "Introduzca el nombre del directorio"
            Get-ChildItem -Path $directorio
        }
        'g' {
            Write-Host "Fecha y hora actuales: $(Get-Date)"
        }
        'x' {
            Write-Host "Saliendo del programa..."
        }
        default {
            Write-Host "Opción no válida. Por favor, intente nuevamente."
        }
    }
} while ($opcion -ne 'x')
