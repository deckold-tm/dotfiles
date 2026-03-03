Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

$onedrive = Join-Path $home 'OneDrive - Techmodal'

$cabot = Join-Path $home 'Documents/projects/cabot'

$nvim = Join-Path $home 'AppData/Local/nvim'

$external = Join-Path $onedrive 'external'
$internal = Join-Path $onedrive 'internal'

function dotfiles { git --git-dir=$HOME/.dotfiles --work-tree=$HOME $args}

function AWS_CLI_LOCAL {docker run --rm -it -e AWS_ACCESS_KEY_ID=user -e AWS_SECRET_ACCESS_KEY=password -e AWS_ENDPOINT_URL=http://localhost:9000 -v $(pwd):/aws amazon/aws-cli:latest $args}
Set-Alias -Name aws_local AWS_CLI_LOCAL
function AWS_CLI_TMBRSSONI {docker run --rm -it -e AWS_ACCESS_KEY_ID=user -e AWS_SECRET_ACCESS_KEY=password -e AWS_ENDPOINT_URL=http://tmbrssoni01:9000 -v $(pwd):/aws amazon/aws-cli:latest $args}
Set-Alias -Name aws_tmbrssoni AWS_CLI_TMBRSSONI
