def ln_nfs(dir, dot_file = dir)
  pwd = `pwd`.strip
  `ln -nfs #{pwd}/#{dir} ~/.#{dot_file}`
end

def bootstrap_janus
  ln_nfs("janus_vim", "vim")
  `cd ~/.vim && rake`
end

def setup_customizations
  ln_nfs("gvimrc.after")
  ln_nfs("janus")
  `git submodule update --init`
end

task :default do
  bootstrap_janus
  setup_customizations
end
