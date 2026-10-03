class Decaf < Formula
  desc "Kill the caffeinate sessions you started from a shell"
  homepage "https://github.com/kurioscreative/decaf"
  url "https://github.com/kurioscreative/decaf/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "8c2f6700da11002e80d29bdd78c3265a97e91ae89b6569a0ee266d6e1c8448cd"
  license "MIT"
  head "https://github.com/kurioscreative/decaf.git", branch: "main"

  depends_on :macos

  def install
    bin.install "decaf"
  end

  test do
    # Only the usage path is safe: a bare `decaf` would kill the tester's real sessions.
    assert_match "usage", shell_output("#{bin}/decaf --bogus 2>&1", 2)
  end
end
