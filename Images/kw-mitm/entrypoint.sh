#!/bin/sh

set -o errexit
set -o pipefail
set -o nounset

prog=${1}
if [[ ${1} == 'mitmdump' || ${1} == 'mitmproxy' || ${1} == 'mitmweb' ]]; then
  MITMPROXY_PATH='/home/mitm/.mitmproxy'
  exec ${@} --set "confdir=${MITMPROXY_PATH}"
else
  exec ${@}
fi