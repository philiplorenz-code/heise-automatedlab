Cd C:\CopyFiles
New-Item -ItemType Directory -Name 'MyWebsite' -Path 'C:\'
Copy-Item -Path .\test.html -Destination C:\MyWebsite
New-IISSite -Name 'MyWebsite' -PhysicalPath 'C:\MyWebsite\' -BindingInformation "*:8088:"

