# typed: false
# frozen_string_literal: true

# This file was generated from your local formula. Once you push to GitHub,
# update the url and other fields as needed.
class RustSsm < Formula
  desc "AWS SSM parameter retrieval tool"
  homepage "https://github.com/somoore/rust-ssm"
  url "https://github.com/somoore/rust-ssm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
