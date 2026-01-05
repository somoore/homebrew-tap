# typed: false
# frozen_string_literal: true

class RustSsm < Formula
  desc "AWS SSM parameter retrieval tool"
  homepage "https://github.com/somoore/rust-ssm"
  url "https://github.com/somoore/rust-ssm.git", tag: "v0.1.1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_path_exists bin/"rust-ssm"
    assert_match "rust-ssm", shell_output("#{bin}/rust-ssm --version")
  end
end
