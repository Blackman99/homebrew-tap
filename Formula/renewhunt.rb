class Renewhunt < Formula
  desc "Hunt ACME renewal windows that break with 64-day certificates"
  homepage "https://blackman99.github.io/renewhunt/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.2.0/renewhunt_0.2.0_darwin_arm64.tar.gz"
      sha256 "1a595706e33ead90aac2a841ab92e30da653d636c992905b5989aa51a073cb52"
    end
    on_intel do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.2.0/renewhunt_0.2.0_darwin_amd64.tar.gz"
      sha256 "23a125b2625e8e076b4b1b76157de016e36a309c15da90d710fd6f2c781b236f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.2.0/renewhunt_0.2.0_linux_arm64.tar.gz"
      sha256 "0083fd34777e66eb1ab0b2f7803371935877907c642f9965c79601d0c9333fd6"
    end
    on_intel do
      url "https://github.com/Blackman99/renewhunt/releases/download/v0.2.0/renewhunt_0.2.0_linux_amd64.tar.gz"
      sha256 "983620f467ead8a4893470533252b80774651acec66d98fb9ffb15fc209be22d"
    end
  end

  def install
    bin.install "renewhunt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/renewhunt -version")
  end
end
