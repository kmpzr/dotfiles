alias ls='ls -GF'
alias ag='ag --nogroup --nocolor --column'
if [ command -v podman >/dev/null 2>&1 ]; then
  alias docker='podman'
fi
if [ command -v kubectl >/dev/null 2>&1 ]; then
  alias k=kubectl
fi
