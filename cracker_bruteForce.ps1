Add-Type -TypeDefinition @"
    using System;
    using System.Runtime.InteropServices;

    public class MouseInput {
        [DllImport("user32.dll")]
        public static extern void mouse_event(int dwFlags, int dx, int dy, int dwData, UIntPtr dwExtraInfo);

        public const int MOUSEEVENTF_LEFTDOWN = 0x0002; // Botón izquierdo del mouse presionado
        public const int MOUSEEVENTF_LEFTUP = 0x0004; // Botón izquierdo del mouse liberado
    }
"@ -Language CSharp

function Send-LeftClick {
    [MouseInput]::mouse_event([MouseInput]::MOUSEEVENTF_LEFTDOWN, 0, 0, 0, [UIntPtr]::Zero)
    [MouseInput]::mouse_event([MouseInput]::MOUSEEVENTF_LEFTUP, 0, 0, 0, [UIntPtr]::Zero)
}

function Send-Keys {
    param(
        [string]$keys
    )
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.SendKeys]::SendWait($keys)
}

# Ciclo para realizar un clic izquierdo 20 veces
for ($i = 1; $i -le 20; $i++) {
    Write-Host "Realizando clic izquierdo: Iteración $i"
    Send-LeftClick
    Start-Sleep -Seconds 1  # Espera de 1 segundo entre clics
    Send-Keys "ESCRITO"
}

Write-Host "Todos los clics han sido completados."