#!/bin/bash

BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"
BETTY_WRAPPER="phone-betty"

APP_PATH="$PREFIX/opt/betty"
BIN_PATH="$PREFIX/bin"
MAN_PATH="$PREFIX/share/man/man1"

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"

cp "${BETTY_STYLE}.pl" "${APP_PATH}/${BETTY_STYLE}"
cp "${BETTY_DOC}.pl" "${APP_PATH}/${BETTY_DOC}"
cp "${BETTY_WRAPPER}.sh" "${APP_PATH}/betty"

chmod +x "${APP_PATH}/${BETTY_STYLE}"
chmod +x "${APP_PATH}/${BETTY_DOC}"
chmod +x "${APP_PATH}/betty"

ln -s "${APP_PATH}/${BETTY_STYLE}" "${BIN_PATH}/${BETTY_STYLE}"
ln -s "${APP_PATH}/${BETTY_DOC}" "${BIN_PATH}/${BETTY_DOC}"
ln -s "${APP_PATH}/betty" "${BIN_PATH}/betty"

echo -e "Installing man pages.."

mkdir -p "${MAN_PATH}"

cp "man/betty.1" "${MAN_PATH}"
cp "man/${BETTY_STYLE}.1" "${MAN_PATH}"
cp "man/${BETTY_DOC}.1" "${MAN_PATH}"

echo -e "All set."
