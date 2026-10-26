class Renewhunt < Formula
  desc "Hunt ACME renewal windows that break with 64-day certificates"
  homepage "https://blackman99.github.io/renewhunt/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.3.0/renewhunt_0.3.0_darwin_arm64.tar.gz"
      sha256 "b38ecb7f085ff5e6160b9db7cf3e8af83823aa5a11d5535cc8ba1fab6eb679c4"
    end
    on_intel do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.3.0/renewhunt_0.3.0_darwin_amd64.tar.gz"
      sha256 "173cc848d2d2dcd907096d548e258b53db242b061ee4341fecd1771b03490728"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.3.0/renewhunt_0.3.0_linux_arm64.tar.gz"
      sha256 "ef1adcc985db4f23fc69c7a01e5a66b8f7b83d1582b2959f4e8040400160986a"
    end
    on_intel do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.3.0/renewhunt_0.3.0_linux_amd64.tar.gz"
      sha256 "ff7e4b6b1103e1e26304858c48b43f562717516b86e02b5731557ca46b469761"
    end
  end

  def install
    bin.install "renewhunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renewhunt -version")
  end
end
