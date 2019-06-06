# Change tab title on iTerm.
function title() { echo -e "\033]0;${1:?please specify a title}\007" ; }