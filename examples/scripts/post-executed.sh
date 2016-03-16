#!/bin/bash

sudo pear install PHP_CodeSniffer

PHPCS=/usr/share/php/PHP/CodeSniffer/Standards/
VERSION_CODER=coder-7.x-2.5.tar.gz
CODER=https://ftp.drupal.org/files/projects/$VERSION_CODER

if [ ! -d "$PHPCS/Drupal" ]; then
  echo `pwd`
  cd '/home/vagrant'

  echo 'We have to install Drupal code standards'
  if [ -d coder ]; then
      echo 'Found coder folder. Delete coder folder.'
      rm coder -R
  fi

  wget "$CODER" && tar -xvf "$VERSION_CODER" &> /dev/null && sudo cp -R 'coder/coder_sniffer/Drupal' $PHPCS && echo 'Drupal code standards have been successfully copied'
else
  echo 'Drupal code standards are already installed'
  echo 'Continue...'
fi
