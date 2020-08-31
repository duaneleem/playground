# PHP Composer
composer() {
  docker run --rm --interactive --tty --volume $PWD:/app composer:1.10.10 "$@"
}


