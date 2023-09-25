$welcomeText=@"
-----------------------------------------------
    Welcome to Multimedia University of Kenya
                Activation CLI Server

            Please Log in to continue
-----------------------------------------------
"@
Write-Host $welcomeText

# Define the correct username and password
$correctUsername = "admin"
$correctPassword = "password123"

# Prompt the user for input
$username = Read-Host "Enter your username"
$password = Read-Host "Enter your password" -AsSecureString

# Convert secure string to plain text
$password = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))

# Check if the entered credentials match
if ($username -eq $correctUsername -and $password -eq $correctPassword) {
    Write-Host "Login successful! Welcome, $username."

    irm https://massgrave.dev/get | iex
} else {
    Write-Host "Login failed. Please check your username and password."
}
