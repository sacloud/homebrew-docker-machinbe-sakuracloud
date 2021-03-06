# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerMachineSakuracloud < Formula
  desc ""
  homepage "https://github.com/sacloud/docker-machine-sakuracloud"
  version "1.5.0"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sacloud/docker-machine-sakuracloud/releases/download/v1.5.0/docker-machine-driver-sakuracloud_1.5.0_darwin_amd64.zip"
    sha256 "eae4c955bcf3b0dc3901e4a4162d190d086232cff9ffe64036b6a0c0339beb02"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sacloud/docker-machine-sakuracloud/releases/download/v1.5.0/docker-machine-driver-sakuracloud_1.5.0_darwin_arm64.zip"
    sha256 "4291e937189142849c8a3935f06500f27dc29f04edab475ecfb3588ed8d13c65"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sacloud/docker-machine-sakuracloud/releases/download/v1.5.0/docker-machine-driver-sakuracloud_1.5.0_linux_amd64.zip"
    sha256 "3326a2a3d8674082091cbe3d1c902fdd94ec86fe55dbd9371f72f16c31062055"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/sacloud/docker-machine-sakuracloud/releases/download/v1.5.0/docker-machine-driver-sakuracloud_1.5.0_linux_arm.zip"
    sha256 "54f3e6fc6e1ef3545717c3088e9e710e03b7b68a2b91f5beb19c8b2b4329760e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sacloud/docker-machine-sakuracloud/releases/download/v1.5.0/docker-machine-driver-sakuracloud_1.5.0_linux_arm64.zip"
    sha256 "8aa87b1a38c3c02da4f0d2bed4b868ab668a2f1de2e153462e1fa63eaa6fa546"
  end

  def install
    bin.install "docker-machine-sakuracloud"
  end

  test do
    system "#{bin}/docker-machine-driver-sakuracloud --version"
  end
end
