
class Warden < Formula
  desc "Warden is a CLI utility for working with docker-compose environments.  Warden has moved to the wardenenv namespace"
  homepage "https://warden.dev"
  version "0.13.0"
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "wardenenv/warden/warden"
  
  def install
    (bin+"wardenInstall").write <<-EOS
        #!/bin/sh
        echo "Warden Installed"
    EOS
  end
end
