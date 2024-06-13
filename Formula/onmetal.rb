class Onmetal < Formula
  desc "The missing PaaS for Hetzner"
  homepage "https://github.com/onmetal-dev/metal"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/onmetal-dev/metal/releases/download/v0.0.1/onmetal-0.0.1-alpha-macos-x64.tar.gz"
      sha256 "foo-bar"

      # bun build --compile --target=bun --outfile onmetal apps/cli/src/index.ts
      def install
        bin.install "onmetal"
      end
    end
  end
end
