
class Warden < Formula
  desc "Warden is a CLI utility for managing docker based environments on macOS"
  homepage "https://warden.dev"
  # version "0.1.0"
  # url "https://github.com/davidalger/warden/archive/0.1.0.tar.gz"
  # sha256 "29a5161f4b3a8f399ed121e6dae7e09a691ab4b5400c917f3fd6a3fa855ef4be"
  head "https://github.com/davidalger/warden.git", :branch => "develop"

  def install
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      Warden manages a set of global services on Docker for Mac. You will need
      to have Docker for Mac installed prior to using Warden.

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
