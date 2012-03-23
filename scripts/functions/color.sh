#!/bin/sh -e
#
# ==============================================================================
# PAQUETE: canaima-semilla
# ARCHIVO: c-s.sh
# DESCRIPCIÓN: script principal de shell para la aplicación Canaima Semilla
# USO: 
# COPYRIGHT:
#  (C) 2010 Luis Alejandro Martínez Faneyth <luis@huntingbears.com.ve>
#  (C) 2012 Niv Sardi <xaiki@debian.org>
# LICENCIA: GPL3
# ==============================================================================
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# COPYING file for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# CODE IS POETRY

RED="\033[0;31m"
LRED="\033[1;31m"
GREEN="\033[0;32m"
LGREEN="\033[1;32m"
BROWN="\033[0;33m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
LIGHT_BLUE="\033[1;34m"
PURPLE="\033[0;35m"
LPURPLE="\033[1;35m"
CYAN="\033[0;36m"
LCYAN="\033[1;36m"
BLACK="\033[0;30m"
DGRAY="\033[1;30m"
GRAY="\033[0;37m"
WHITE="\033[1;37m"
UNDERSCORE="\033[4m"
BLINK="\033[5m"
END="\033[0m"

ERROR() {

	MESSAGE="${1}"
	shift || true

	if [ -n "${MESSAGE}" ]; then
		printf "${LRED}${MESSAGE}${END}\n" ${@}
		echo "[ERROR] ${MESSAGE}" >> "${ISOS}${LOGFILE}"
	fi
}

ADVERTENCIA() {

	MESSAGE="${1}"
	shift || true

	if [ -n "${MESSAGE}" ]; then
		printf "${YELLOW}${MESSAGE}${END}\n" ${@}
		echo "[ADVERTENCIA] ${MESSAGE}" >> "${ISOS}${LOGFILE}"
	fi
}

EXITO() {

	MESSAGE="${1}"
	shift || true

	if [ -n "${MESSAGE}" ]; then
		printf "${LGREEN}${MESSAGE}${END}\n" ${@}
		echo "[EXITO] ${MESSAGE}" >> "${ISOS}${LOGFILE}"
	fi
}

