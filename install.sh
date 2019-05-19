#!/usr/bin/env sh

_has() {
  # shellcheck disable=SC2039
  type "$1" > /dev/null 2>&1
}

_req() {
  if _has curl && [ "${ACME_USE_WGET:-0}" = "0" ]; then
    curl -kLs "$1"
  elif _has wget; then
    wget -qO- "$1"
  else
    echo "You need wget or curl to install acme.sh"
    exit 2
  fi
}

_req https://raw.githubusercontent.com/honzahommer/acme.sh/feat/installonline-arguments/acme.sh | INSTALLONLINE=1 sh -s - "$@"
