$x = Split-Path -Parent $MyInvocation.MyCommand.Definition
git add $x\*
git commit -m (Get-Date -Format "MM/dd/yyyy HH:mm:ss:fff")
git push
