function die()
{
    echo "${@}"
    exit 1
}

for i in $HOME/.vim $HOME/.vimrc $HOME/.gvimrc $HOME/.vim_selvakn $HOME/.janus $HOME/.gvimrc.after; do
if [[ ( -e $i ) || ( -h $i ) ]]; then
echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

git clone https://github.com/selvakn/vim_dot_files.git $HOME/.vim_selvakn \
  || die "Could not clone the repository to ${HOME}/.vim_selvakn"
cd $HOME/.vim_selvakn || die "Could not go into the ${HOME}/.vim_selvakn"
rake || die "Rake failed."
