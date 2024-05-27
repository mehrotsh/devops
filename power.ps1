# Define the username and password
$username = "<Your Username>"
$password = ConvertTo-SecureString "<Your Password>" -AsPlainText -Force

# Create a PSCredential object
$credential = New-Object System.Management.Automation.PSCredential($username, $password)

# Create a new PSDrive for the shared drive
$sharedDrivePath = "<Your Shared Drive Path>"
New-PSDrive -Name "SharedDrive" -PSProvider "FileSystem" -Root $sharedDrivePath -Credential $credential
