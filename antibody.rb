class Antibody < Formula
  desc "Faster and simpler antigen written in Golang"
  homepage "http://antibody.elasticbeanstalk.com"
  url "http://antibody.elasticbeanstalk.com/latest/#{`uname -s`}/#{`uname -m`}"
  version :latest
  sha256 :no_check
  head "http://github.com/caarlos0/antibody.git"

  def install
    share.install "bin"
    share.install "antibody.zsh"
  end

  test do
    (testpath/".zshrc").write "source $(brew --prefix)/share/antibody.zsh"
    system "/bin/zsh", "--login", "-i", "-c", "antibody"
  end
end
