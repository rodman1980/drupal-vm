#!/bin/bash

sudo chown vagrant:vagrant '/var/www/'
sudo pear install PHP_CodeSniffer

PHPCS='/usr/share/php/PHP/CodeSniffer/Standards/'
VERSION_CODER='coder-7.x-2.5.tar.gz'
CODER="https://ftp.drupal.org/files/projects/$VERSION_CODER"

if [ -d "$PHPCS" ]; then
  echo "`pwd`"
  echo 'We have to install Drupal code standards'
  cd '/home/vagrant'
  wget "$CODER"
  tar -xvf "$VERSION_CODER"
  sudo cp -R 'coder/coder_sniffer/Drupal' $PHPCS
else
  echo 'Drupal code standards are already installed'
  echo 'Continue...'
fi