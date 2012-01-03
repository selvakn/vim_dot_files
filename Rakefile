def ln_nfs(dir)
  pwd = `pwd`.strip
  `ln -nfs #{pwd}/#{dir} ~/.#{dir}`
end

def bootstrap_janus
  `curl -Lo- http://bit.ly/janus-bootstrap | bash`
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
