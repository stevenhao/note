if hash terminal-notifier 2> /dev/null; then

  echo 'Installing in ~/.note ...'
  [ -d ~/.note ] || (echo 'mkdir ~/.note'  && mkdir ~/.note)
  [ -d ~/.note/icons ] || (echo 'mkdir ~/.note/icons' && mkdir ~/.note/icons)
  [ -f ~/.note/icons/note-red.png ] || (
    echo 'cp icons/note-red.png ~/.note/icons/note-red.png' &&
    cp icons/note-red.png ~/.note/icons/note-red.png
  )
  [ -f ~/.note/icons/note-green.png ] || (
    echo 'cp icons/note-green.png ~/.note/icons/note-green.png' &&
    cp icons/note-green.png ~/.note/icons/note-green.png
  )

  cp note /usr/local/bin || echo 'Please add note to your PATH'

  echo 'Done!'
else
  echo 'Please run'
  echo '$ sudo gem install terminal-notifier'
  echo 'Then try again'
fi
