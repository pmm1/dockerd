# #!/bin/sh
#
# # Written by: Keefer Rourke <https://krourke.org>
# # Based on AUR package <https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=ttf-google-fonts-git>
#
# # dependancies: fonts-cantarell, ttf-ubuntu-font-family, git
# set -e
# srcdir="/tmp/google-fonts"
# pkgdir="/usr/share/fonts/truetype/google-fonts"
# giturl="git://github.com/google/fonts.git"
#
# mkdir $srcdir
# cd $srcdir
# echo "Cloning Git repository..."
# git clone $giturl
#
# echo "Installing fonts..."
# sudo mkdir -p $pkgdir
# sudo find $srcdir -type f -name "*.ttf" -exec install -Dm644 {} $pkgdir \;
#
# echo "Cleaning up..."
# sudo find $pkgdir -type f -name "Cantarell-*.tff" -delete \;
# sudo find $pkgdir -type f -name "Ubuntu-*.tff" -delete \;
#
# # provides roboto
# apt-get --purge remove fonts-roboto
#
# echo "Updating font-cache..."
# fc-cache -f > /dev/null
#
# echo "Done!"
