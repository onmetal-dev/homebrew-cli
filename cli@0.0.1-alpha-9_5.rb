class CliAT001Alpha95 < Formula
  desc "The missing PaaS for Hetzner"
  homepage "https://github.com/onmetal-dev/metal"
  version "v0.0.1-alpha-8"
  base_url = "https://github.com/onmetal-dev/metal/releases/download/#{version}"

  # Each release of the Metal CLI contains binaries for MacOS, Linux etc compressed into
  # separate .tar.gz files. So no building of source code is necessary. We only need
  # to download, verify and install those binaries. That's why we use bin.install.
  # For more info on that method, see:
  # https://docs.brew.sh/Formula-Cookbook#bininstall-foo

  on_macos do
    if Hardware::CPU.arm?
      url "#{base_url}/metal-v0.0.1-alpha-8-darwin-arm64.tar.gz"
      sha256 "f726d0ad117e2ab0ec4d483996af559bc2d002e7ecfe5d83ec1f44cf8d4df890"

      def install
        bin.install "metal-v0.0.1-alpha-8-darwin-arm64" => "metal"
      end
    end

    if Hardware::CPU.intel?
      url "#{base_url}/metal-v0.0.1-alpha-8-darwin-x64.tar.gz"
      sha256 "286f384c8dd07b1ef24303faf493c30cf75bcda8a3bd514ef22ac14f53e66bb3"

      def install
        bin.install "metal-v0.0.1-alpha-8-darwin-x64" => "metal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "#{base_url}/metal-v0.0.1-alpha-8-linux-arm64.tar.gz"
      sha256 "9122e21864928f0124d16d5995ed5712bc938e60e8921e404216b371b5008c65"

      def install
        bin.install "metal-v0.0.1-alpha-8-linux-arm64" => "metal"
      end
    end

    if Hardware::CPU.intel?
      url "#{base_url}/metal-v0.0.1-alpha-8-linux-x64.tar.gz"
      sha256 "b104f2600ab931305024b00b76a76d7fcbfbfe02058fc7de9caadaa6e3cb9114"

      def install
        bin.install "metal-v0.0.1-alpha-8-linux-x64" => "metal"
      end
    end
  end

  test do
    system "#{bin}/metal", "--version"
    system "metal", "--version"
  end
end
