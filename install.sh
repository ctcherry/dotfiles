#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

install_hidden() {
  dest=$HOME/.$1
  file=$DIR/$1
  
  if [ -e $dest ]; then
    if [ -h $dest ]; then
      if [ $file != `readlink $dest`]; then
        echo "$dest is symlinked somewhere else, remove it first"
      fi
    else
      echo "$dest is a file, remove it first"
    fi
  else
    ln -s $file $dest
  fi
}

install_folder_items() {
  mkdir -p $HOME/$1
  for file in $DIR/$1/*
  do
    basename=${file##*/}
    dest=$HOME/$1/$basename
    if [ -e $dest ]; then
      
      if [ -h $dest ]; then
        if [ $file != `readlink $dest` ]; then
          echo "$dest is symlinked somewhere else, remove it first"
        fi
      else
        echo "$dest is a file, remove it first"
      fi
    else
      ln -s $file $dest
    fi
  done
}

install_hidden 'gemrc'
install_hidden 'vimrc'
install_hidden 'vim'
install_folder_items 'bin'
