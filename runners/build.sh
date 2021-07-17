#From https://github.com/ProjectHDS/Herodotus/blob/master/build.sh

#!/bin/sh -x

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"

mkdir artifacts
mv .minecraft artifacts/overrides
mv manifest.json artifacts
mv modlist.html artifacts