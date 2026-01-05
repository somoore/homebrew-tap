# typed: false
# frozen_string_literal: true

class RustSsm < Formula
  desc "Powerful CLI tool for AWS Systems Manager Parameter Store"
  homepage "https://github.com/somoore/rust-ssm"
  url "https://github.com/somoore/rust-ssm.git", tag: "v0.2.0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"rust-ssm"
    assert_match "rust-ssm 0.2.0", shell_output("#{bin}/rust-ssm --version")
    assert_match "list", shell_output("#{bin}/rust-ssm --help")
  end
end
