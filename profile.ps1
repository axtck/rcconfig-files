# located at users/name/documents/WindowsPowerShell
# https://dev.to/ofhouse/add-a-bash-like-autocomplete-to-your-powershell-4257

# shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# import docker completion module (https://github.com/matt9ucci/DockerCompletion)
Import-Module DockerCompletion