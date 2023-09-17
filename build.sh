#!/bin/bash
set -e

pushd "tools/buildpackages/win6x_registry_tweak"
    msbuild -p:Configuration="Release"
popd

cp "tools/buildpackages/win6x_registry_tweak/bin/Release/install_wim_tweak.exe" "packages"

pushd "tools/buildpackages/win6x_registry_tweak"
    msbuild -p:Configuration="Release" -t:clean
    rm -r "bin"
    rm -r "obj"
popd
