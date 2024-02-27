# optional script to install rsync on git-bash
# updated from: https://scicomp.aalto.fi/scicomp/rsynconwindows/

# This Script assumes to be run within git-bash!
# We first switch to the home directory-
cd
# create the users bin and lib folders if it doesn't exist
mkdir -p ~/bin
mkdir -p ~/lib
# create a emporary installation folder
mkdir tempinstall
cd tempinstall
# Download zstd
curl -LSs https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-v1.5.5-win64.zip -o zstd.zip
# Unzip zstd and copy it to an executable folder
unzip zstd.zip
# move zstd to the binary folder and delete the local copy
cp -r zstd-v1.5.5-win64/* ../bin
rm -rf zstd*
# Download rsync
curl -LSs  https://repo.msys2.org/msys/x86_64/rsync-3.2.7-2-x86_64.pkg.tar.zst -o rsync.tar.zst
# Download required libraries for rsync
curl -LSs https://repo.msys2.org/msys/x86_64/libzstd-1.5.5-1-x86_64.pkg.tar.zst -o libzstd.tar.zst
curl -LSs https://repo.msys2.org/msys/x86_64/libxxhash-0.8.2-1-x86_64.pkg.tar.zst -o libxxhash.tar.zst

# Download libopenssl. CAUTION: THIS WILL OVERWRITE YOUR GITBASH OPENSSL.
curl -LSs https://repo.msys2.org/msys/x86_64/libopenssl-3.1.1-1-x86_64.pkg.tar.zst -o libopenssl.tar.zst

# Extract downloaded packages
tar -I zstd -xvf rsync.tar.zst
tar -I zstd -xvf libzstd.tar.zst
tar -I zstd -xvf libxxhash.tar.zst
tar -I zstd -xvf libopenssl.tar.zst

cp -r usr/bin/* ~/bin
cp -r usr/lib/* ~/lib
cd ..
