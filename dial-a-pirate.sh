#!/usr/bin/env bash

# SPDX-License-Identifier: AGPL-3.0

#    ----------------------------------------------------------------------
#    Copyright © 2021, 2022, 2023,
#                2024, 2025
#                Pellegrino Prevete
#
#    All rights reserved
#    ----------------------------------------------------------------------
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.

_globals() {
  app_name="dial-a-pirate"
}

_global_variables() {
  game_path=""
}

_requirements() {
  local \
    _love
  _love="$( \
    command \
      -v \
      "love")"
  if [[ "${_love}" == "" ]]; then
    echo \
      "[${app_name}] ERROR: You need to install Love."
    exit \
      1
  fi
}

_usr_get() {
  dirname \
    "$(dirname \
         "$(command \
              -v \
	      "env")")"
}

_set_overrides() {
  if [[ "${game_path}" == "" ]]; then
    game_path="$( \
      _usr_get)/share/${app_name}/${app_name}.love"
  fi
}

_dial_a_pirate() {
  local \
    _game_path="${1}"  
  love \
    "${_game_path}"
}

_globals
_requirements
_set_overrides
app_opts=(
  "${game_path}"  
)
_dial_a_pirate \
  "${app_opts[@]}"
