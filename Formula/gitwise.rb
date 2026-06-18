class Gitwise < Formula
  include Language::Python::Virtualenv

  desc "Python CLI for optimizing git workflows and Claude Code integration"
  homepage "https://github.com/drzioner/gitwise"
  url "https://files.pythonhosted.org/packages/85/fb/0c0ebd49f40aa428537895c2e79ccfd60f6abfef30676b12ae5151299c3d/gitwise_cli-0.25.0.tar.gz"
  sha256 "edf49611ce1493bfb45c2d2a593895a9908a654aa51968d2f5ed91c9aa897ede"
  license "MIT"
  head "https://github.com/drzioner/gitwise.git", branch: "main"

  # livecheck do
  #   url :stable
  #   regex(/^v?(\d+(?:\.\d+)+)$/i)
  #   strategy :github_latest
  # end

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitwise --version")
  end
end
