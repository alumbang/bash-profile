#TODO: check if .profile.d/ already exists
if [ ! -d "${HOME}/.profile.d/" ]; then
  ln -s "${PWD}" "${HOME}/.profile.d"
fi

if [ ! -f "${HOME}/.profile" ]; then
  ln -s "${HOME}/.profile.d/init" "${HOME}/.profile"
fi

source "${HOME}/.profile"
