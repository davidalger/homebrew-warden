
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments"
  homepage "https://warden.dev"
  version "0.8.2"
  url "https://github.com/davidalger/warden/archive/0.8.2.tar.gz"
  sha256 "a69758f4c678abb3f5c371095da4ebba7dd4630ffbc33e3bfbb1e3efd4ce6831"
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

        warden svc up

      This command will automatically run "warden install" to setup a trusted
      local root certificate and sign an SSL certificate for use by services
      managed by warden via the "warden sign-certificate warden.test" command.

      To print a complete list of available commands simply run "warden" without
      any arguments.

      Documentation is available at: https://docs.warden.dev
    EOS
  end
end
