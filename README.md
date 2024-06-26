by. JMDL.

------------------------------------------------------------------- Spanish -------------------------------------------------------------------------------------

Para verificar la política de ejecución de scripts actual en tu sistema, puedes usar el siguiente comando en PowerShell:

```powershell
Get-ExecutionPolicy
```

Este comando te mostrará la política de ejecución actualmente configurada en tu sistema. Las políticas de ejecución posibles son:

- **Restricted**: No se permitirá la ejecución de scripts. Solo se permiten comandos interactivos.
- **AllSigned**: Se permitirá la ejecución de scripts siempre que estén firmados digitalmente por un editor de confianza.
- **RemoteSigned**: Se permitirá la ejecución de scripts descargados de Internet siempre que estén firmados digitalmente por un editor de confianza.
- **Unrestricted**: Se permitirá la ejecución de todos los scripts sin restricciones.
- **Undefined**: No hay una política de ejecución definida. Esto puede ocurrir si no se ha establecido ninguna política o si la configuración de la política ha sido modificada externamente.

Después de ejecutar el comando, verás el nombre de la política actual. Si necesitas cambiar la política, puedes usar el comando `Set-ExecutionPolicy` que mencionamos anteriormente.


------------------------------------------------------------------------ English ----------------------------------------------------------------------------------

To check the current script execution policy on your system, you can use the following command in PowerShell:

```powershell
Get-ExecutionPolicy
```

This command will display the currently configured execution policy on your system. The possible execution policies are:

- **Restricted**: Script execution is not allowed. Only interactive commands are permitted.
- **AllSigned**: Script execution is allowed only if they are digitally signed by a trusted publisher.
- **RemoteSigned**: Script execution from the internet is allowed only if they are digitally signed by a trusted publisher.
- **Unrestricted**: All scripts can be executed without any restrictions.
- **Undefined**: There is no defined execution policy. This may occur if no policy has been set or if the policy setting has been externally modified.

After running the command, you will see the name of the current policy. If you need to change the policy, you can use the `Set-ExecutionPolicy` command mentioned earlier.
