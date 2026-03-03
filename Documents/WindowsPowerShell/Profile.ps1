Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

$onedrive = Join-Path $home 'OneDrive - Techmodal'

$cabot = Join-Path $home 'Documents/projects/cabot'

$nvim = Join-Path $home 'AppData/Local/nvim'

$external = Join-Path $onedrive 'external'
$internal = Join-Path $onedrive 'internal'

function dotfiles { git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args}

