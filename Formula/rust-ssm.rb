# typed: false
# frozen_string_literal: true

# This file was generated from your local formula. Once you push to GitHub,
# update the url and other fields as needed.
class RustSsm < Formula
  desc "AWS SSM parameter retrieval tool"
  homepage "https://github.com/somoore/rust-ssm"
  # Using git URL until tarball is available - will switch to tarball URL once GitHub generates it
  url "https://github.com/somoore/rust-ssm.git", tag: "v0.1.0"
  version "0.1.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "ssm"
    bin.install "target/release/ssm" => "ssm"
  end

  test do
    # Test that the binary exists and is executable
    assert_predicate bin/"ssm", :exist?
    # If your binary supports --version or --help, uncomment:
    # system "#{bin}/ssm", "--version"
  end
end
