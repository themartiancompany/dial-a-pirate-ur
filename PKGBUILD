# SPDX-License-Identifier: AGPL-3.0

#    ----------------------------------------------------------------------
#    Copyright © 2021, 2022, 2023,
#                2024, 2025  Pellegrino Prevete
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

# Maintainer:
#   Truocolo
#     <truocolo@aol.com>
#     <truocolo@0x6E5163fC4BFc1511Dbe06bB605cc14a3e462332b>
# Maintainer:
#   Pellegrino Prevete (dvorak)
#     <pellegrinoprevete@gmail.com>
#     <dvorak@0x87003Bd6C074C713783df04f36517451fF34CBEf>

# Maintainer: Pellegrino Prevete <pellegrinoprevete@gmail.com>

_ns="tallero"
_Pkg="DialAPirate"
_app_id="com.github.${_ns}.${_Pkg}"
_pkg=dial-a-pirate
pkgname="${_pkg}"
pkgver=0.0.1
pkgrel=3
_pkgdesc=(
  "A LÖVE implementation of Dial-A-Pirate "
  "from the EGA version of The Secret of Monkey Island")
pkgdesc="${_pkgdesc[*]}"
arch=(
  'aarch64'
  'arm'
  'armv7l'
  'mips'
  'powerpc'
  'i686'
  'pentium4'
  'x86_64'
)
_http="https://github.com"
_ns="tallero"
url="${_http}/${_ns}/${_pkg}"
license=(
  'AGPL3'
)
depends=(
  'love'
)
makedepends=(
  'wget'
)
options=(
  "!strip"
)
_url="${url}"
_tarname="${_pkg}-${pkgver}"
_http_uri="${_url}/archive/refs/tags/${pkgver}.tar.gz"
_http_src="${_tarname}.tar.gz::${_http_uri}"
source=(
  "${_http_src}"
  "${pkgname}.sh"
  "${_app_id}.desktop"
  "${_app_id}.png"
)
sha512sums=(
  "5186dfc8fc400ac911766bfb62e471321221f2faf50ae843261bb1261215aebfeb09003e4b1f0ea4c0be7cf521f162e7c6687a74a14f1c90dbbdc80db0489b68"
  "18ed8c35ae97402b0b5b10630f7e9a477015200a6447fd6a45cab7e580d781381beb2b1c6bb8e2c893ddb6b0142ecec58b24831e75a0501f8ab3e3f5132b6e45"
  "3aba506f26279f439d37a1105e3ac10ea63d69a5c184f9a41bff425421bd4a9a65a7c17952f17369fe9b908ea5924fdeaf5dbf6eef2be285d96b49d03d991be2"
  "b1c111f49ef594e06a3882a517a4cdc7314b5a8472989d694099e0313b0041643071ce5c461bba23c5837cc57aaeec6e641e5df4aabb69eb03b667a7a060d8cf"
)

build() {
  cd \
    "${srcdir}/${_tarname}/assets"
  "./download-assets.sh"
  cd \
    ".."
  "./build.sh"
}

package() {
  install \
    -vDm755 \
    "${_app_id}.desktop" \
    "${pkgdir}/usr/share/applications/${_app_id}.desktop"
  install \
    -vDm755 \
    "${_app_id}.png" \
    "${pkgdir}/usr/share/icons/${_app_id}.png"
  install \
    -vDm0755 \
    "${_pkg}.sh" \
    "${pkgdir}/usr/bin/${_pkg}"
  install \
    -vDm0644 \
    "${srcdir}/${_tarname}/${_pkg}.love" \
    "${pkgdir}/usr/share/${_pkg}/${_pkg}.love"
}

# vim:set ts=2 sw=2 et:
