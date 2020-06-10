export RBENV_ROOT="$HOME/.rbenv"
if [ -d $RBENV_ROOT ]; then
  export PATH="$RBENV_ROOT/.rbenv/bin:$PATH"
  if [ command -v rbenv >/dev/null 2>&1 ]; then
    eval "$(rbenv init -)";
  fi
fi
