# Function to generate a random password
function Get-RandomPassword {
    param (
        [int]$length = 12
    )

    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+'
    $randomPassword = -join (Get-Random -Count $length -InputObject $characters)
    return $randomPassword
}

# Read names from the text file
$names = Get-Content -Path ".\names.txt"

# Specify the OU (Organizational Unit) where you want to create the users
$ouPath = "OU=Users,DC=YourDomain,DC=com"

# Loop through each name and create a user account
foreach ($name in $names) {
    # Generate a username based on the name (you may customize this part)
    $username = $name.Replace(" ", "").ToLower()

    # Specify other user details (you may customize these)
    $password = Get-RandomPassword -length 12  # Generate a random password
    $displayName = $name
    $givenName = ($name -split ' ')[0]
    $surName = ($name -split ' ')[-1]

    # Create the user account
    New-ADUser -SamAccountName $username -UserPrincipalName "$username@YourDomain.com" -Name $displayName -GivenName $givenName -Surname $surName -DisplayName $displayName -Enabled $true -Path $ouPath -AccountPassword (ConvertTo-SecureString -AsPlainText $password -Force)

    Write-Host "User '$username' created with a random password."
}
