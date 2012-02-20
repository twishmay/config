if [ "$1" == "" ]; then
  echo ""
  echo "Usage to install amix's vimrc:"
  echo "   sh .vim_runtime/install.sh <system>"
  echo "      - where <system> can be 'mac', 'linux' or 'windows'"
  exit 1
fi
echo '
fun! MySys()
   return "$1"
endfun
set runtimepath=$CONFIG/vim,$CONFIG/vim/after,\$VIMRUNTIME
source $CONFIG/vim/vimrc
helptags $CONFIG/vim/doc' > ~/.vimrc
echo "Installed vim configuration successfully! Enjoy :)"
