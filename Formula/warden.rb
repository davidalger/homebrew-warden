
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  version "0.1.8"
  url "https://github.com/davidalger/warden/archive/0.1.8.tar.gz"
  sha256 "65177fd89b4b4d15245b54dbfbab799d6630337e6f43e550b1f391afcd875338"
  head "https://github.com/davidalger/warden.git", :branch => "develop"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Warden manages a set of global services on the docker host machine. You
      will need to have Docker installed and docker-compose available in your
      local $PATH configuration prior to starting Warden.

      To start warden simply run:

        warden up

      This command will automatically run "warden install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by warden via the "warden sign-certificate warden.test" command.

      To print a complete list of available commands simply run "warden" without
      any arguments.
    EOS
  end
end
