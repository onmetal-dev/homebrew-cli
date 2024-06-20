\# THIS IS A GENERATED FILE, DO NOT EDIT. GENERATED BY https://github.com/onmetal-dev/metal/actions/workflows/release.yml
class Cli < Formula
  desc "The missing PaaS for Hetzner"
  homepage "https://github.com/onmetal-dev/metal"
  version "v0.0.1-alpha-9_14"
  base_url = "https://github.com/onmetal-dev/metal/releases/download/\#{version}"

  \# Each release of the Metal CLI contains binaries for MacOS, Linux etc compressed into
  \# separate .tar.gz files. So no building of source code is necessary. We only need
  \# to download, verify and install those binaries. That's why we use bin.install.
  \# For more info on that method, see:
  \# https://docs.brew.sh/Formula-Cookbook\#bininstall-foo

  on_macos do
    if Hardware::CPU.arm?
      url "\#{base_url}/metal-\#{version}-darwin-arm64.tar.gz"
      sha256 "7f7624604112ed2eddc8d1b45ecd83c42d7d13a8f1bb72987d3477db2ba3db06"

      def install
        bin.install "metal-\#{version}-darwin-arm64" => "metal"
      end
    end

    if Hardware::CPU.intel?
      url "\#{base_url}/metal-\#{version}-darwin-x64.tar.gz"
      sha256 "aa822dcf456ebfa26303d0448e9d00dd1e7c3d3ee35b05c18e28d5220faf4628"


      def install
        bin.install "metal-\#{version}-darwin-x64" => "metal"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "\#{base_url}/metal-\#{version}-linux-arm64.tar.gz"
      sha256 "83f6c7fb1c4ca0853769dd98c394724d7172bb3dd066ef7942a813d6fc304e7b"

      def install
        bin.install "metal-\#{version}-linux-arm64" => "metal"
      end
    end

    if Hardware::CPU.intel?
      url "\#{base_url}/metal-\#{version}-linux-x64.tar.gz"
      sha256 "4e73ee91eb6038326e31c2691ace53aae3fad1765c37e7cf4d4234a8d35a8cfa"

      def install
        bin.install "metal-\#{version}-linux-x64" => "metal"
      end
    end
  end
