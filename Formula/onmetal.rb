class Onmetal < Formula
  desc "The missing PaaS for Hetzner"
  homepage "https://github.com/onmetal-dev/metal"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/onmetal-dev/metal/releases/download/v0.0.1-alpha-5/onmetal-macos-x64.tar.gz"
      sha256 "204d8a061316f6251f7eadb0f46e62f806f68e8d349efed8c5c52c11b92db1b9"

      def install
        bin.install "onmetal"
      end
    end
  end
end
