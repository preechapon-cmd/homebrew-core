class Goawk < Formula
  desc "POSIX-compliant AWK interpreter written in Go"
  homepage "https://benhoyt.com/writings/goawk/"
  url "https://github.com/benhoyt/goawk/archive/refs/tags/v1.28.1.tar.gz"
  sha256 "bed9009c2702fca12fe773e223d9f22bae9a26133d45c523bc3d598b2819b4cf"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fef586aabb0dec506b6eea613a1328459f8b286569ca36b95bcce178283f1eea"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "fef586aabb0dec506b6eea613a1328459f8b286569ca36b95bcce178283f1eea"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "fef586aabb0dec506b6eea613a1328459f8b286569ca36b95bcce178283f1eea"
    sha256 cellar: :any_skip_relocation, sonoma:        "857ef311fda84f2ecf323b880bb64ce062ef419d826ec68efa3281cbcb180828"
    sha256 cellar: :any_skip_relocation, ventura:       "857ef311fda84f2ecf323b880bb64ce062ef419d826ec68efa3281cbcb180828"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "18b76abbfffaf91f770eb4a857e2a796d22d21a61d6e5fb96795c77d2dfea7ec"
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    output = pipe_output("#{bin}/goawk '{ gsub(/Macro/, \"Home\"); print }' -", "Macrobrew")
    assert_equal "Homebrew", output.strip
  end
end
