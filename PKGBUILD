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

_evmfs_available="$( \
  command \
    -v \
    "evmfs" || \
    true)"
if [[ ! -v "_evmfs" ]]; then
  if [[ "${_evmfs_available}" != "" ]]; then
    _evmfs="true"
  elif [[ "${_evmfs_available}" == "" ]]; then
    _evmfs="false"
  fi
fi
_ns="themartiancompany"
_Pkg="DialAPirate"
_app_id="com.github.${_ns}.${_Pkg}"
_pkg=dial-a-pirate
pkgname="${_pkg}"
pkgver=0.0.1.1
pkgrel=3
_pkgdesc=(
  "A LÖVE implementation"
  "of Dial-A-Pirate from the"
  "EGA version of"
  "'The Secret of Monkey Island'."
)
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
_tag="${pkgver}"
_tag_name="tag"
_url="${url}"
_tarname="${pkgname}-${_tag}"
_http_uri="${_url}/archive/refs/tags/${_tag}.tar.gz"
_http_src="${_tarname}.tar.gz::${_http_uri}"
# Assets
_back_sum="3fbf95f9a9818b894a11128a1ffb2aaac35ea1d7ce90c870ef586c852c9d1321"
_front_sum="6dae8a6d1bdf97bdcb69b172f67663f78572acdae0123690a0ec5a98b100aa16"
_back_sig_sum="a1f8301c8dd2749adbbe0727a49110093ce1653c5f9f6c60523e5947f5ff2499"
_front_sig_sum="ec1f2fc07428b21cf4f6c6f5162bb39d8498c2a8ae7e3f292a3136ed2e95015d"
_evmfs_network="17000"
_evmfs_address="0x151920938488F193735e83e052368cD41F9d9362"
# Kid
_evmfs_ns="0x926acb6aA4790ff678848A9F1C59E578B148C786"
_archive_sum="195906f488c0b5b46458b4a723b61581933aea296ebea6b89c28834e34c642b7"
_pic_sum="343264e33545e96be98c552e9f8d3885de75144c08e38a26b38bef7258b4a4de"
_evmfs_archive_uri="evmfs://${_evmfs_network}/${_evmfs_address}/${_evmfs_ns}/${_archive_sum}"
_evmfs_pic_uri="evmfs://${_evmfs_network}/${_evmfs_address}/${_evmfs_ns}/${_pic_sum}"
_asset_back_uri="evmfs://${_evmfs_network}/${_evmfs_address}/${_evmfs_ns}/${_back_sum}"
_asset_front_uri="evmfs://${_evmfs_network}/${_evmfs_address}/${_evmfs_ns}/${_front_sum}"
_evmfs_archive_src="${_tarname}.tar.gz::${_evmfs_archive_uri}"
_evmfs_pic_src="${_app_id}.png::${_evmfs_pic_uri}"
_asset_back_src="back.png::${_asset_back_uri}"
_asset_front_src="front.png::${_asset_front_uri}"
_evmfs_sig_network="100"
_evmfs_sig_address="0x69470b18f8b8b5f92b48f6199dcb147b4be96571"
# Dvorak
_evmfs_sig_ns="0x87003Bd6C074C713783df04f36517451fF34CBEf"
_archive_sig_sum="1ee022c31f73440d31407a95000ec53d891dbde52fd57c1eb051bf0b3bd3f047"
_pic_sig_sum="7144458a58d272f0aa7c973dbb74a5ba764870e10c3cb56e5f18cf8b48c65bca"
_archive_sig_uri="evmfs://${_evmfs_sig_network}/${_evmfs_sig_address}/${_evmfs_sig_ns}/${_archive_sig_sum}"
_back_sig_uri="evmfs://${_evmfs_sig_network}/${_evmfs_sig_address}/${_evmfs_sig_ns}/${_back_sig_sum}"
_front_sig_uri="evmfs://${_evmfs_sig_network}/${_evmfs_sig_address}/${_evmfs_sig_ns}/${_front_sig_sum}"
_pic_sig_uri="evmfs://${_evmfs_sig_network}/${_evmfs_sig_address}/${_evmfs_sig_ns}/${_pic_sig_sum}"
_archive_sig_src="${_tarname}.tar.gz.sig::${_archive_sig_uri}"
_pic_sig_src="${_app_id}.png.sig::${_pic_sig_uri}"
_back_sig_src="back.png.sig::${_back_sig_uri}"
_front_sig_src="front.png.sig::${_front_sig_uri}"
source=(
  "${pkgname}.sh"
  "${_app_id}.desktop"
)
sha256sums=(
  "1d2d8f7fe730997a7b870fd14aaae14759e649b4a3699eacc3873877d5b3e593"
  "b8310e20a7e00c30b1283e45e1062911232e14ab2af74b91c5171c486771da4d"
)
if [[ "${_evmfs}" == "true" ]]; then
  makedepends+=(
    "evmfs"
  )
  _src="${_evmfs_archive_src}"
  source+=(
    "${_evmfs_pic_src}"
    "${_pic_sig_src}"
    "${_archive_sig_src}"
    "${_asset_back_src}"
    "${_asset_front_src}"
    "${_back_sig_src}"
    "${_front_sig_src}"
  )
  sha256sums+=(
    "${_pic_sum}"
    "${_pic_sig_sum}"
    "${_archive_sig_sum}"
    "${_back_sum}"
    "${_front_sum}"
    "${_back_sig_sum}"
    "${_front_sig_sum}"
  )
elif [[ "${_evmfs}" == "false" ]]; then
  _src="${_http_src}"
fi
source+=(
  "${_src}"
)
sha256sums+=(
  "${_archive_sum}"
)

build() {
  if [[ "${_evmfs}" == "true" ]]; then
    cp \
      "${srcdir}/"{"back.png","front.png"} \
      "${srcdir}/${_tarname}/assets"
  elif [[ "${_evmfs}" == "false" ]]; then
    cd \
      "${srcdir}/${_tarname}/assets"
    bash \
      "./download-assets.sh"
  fi
  cd \
    "${srcdir}/${_tarname}"
  bash \
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
