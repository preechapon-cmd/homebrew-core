class Diffoscope < Formula
  include Language::Python::Virtualenv

  desc "In-depth comparison of files, archives, and directories"
  homepage "https://diffoscope.org"
  url "https://files.pythonhosted.org/packages/79/c7/ae27612eb542e2020364fda1f313957f09eb63adade5ca4326bf9a1a4667/diffoscope-290.tar.gz"
  sha256 "656eba71bc9ea5b8542c52005d3c7fd350af204bb5d988364cd268c3453e91f4"
  license "GPL-3.0-or-later"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "95518860ce328cec078d786fe94044bc4359ace4d4e539702497aa8c91cfc019"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "95518860ce328cec078d786fe94044bc4359ace4d4e539702497aa8c91cfc019"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "95518860ce328cec078d786fe94044bc4359ace4d4e539702497aa8c91cfc019"
    sha256 cellar: :any_skip_relocation, sonoma:        "c2d7b54364913d9a5c07c7b71007e517c06db595e200a6b3878d96fa3e1400cf"
    sha256 cellar: :any_skip_relocation, ventura:       "c2d7b54364913d9a5c07c7b71007e517c06db595e200a6b3878d96fa3e1400cf"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "513a4ac38d03d463651b6a5e2c938c45a6c77bd3c520a0bc38c40a39ec9c8b23"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "41b528fcf11934bf0423dd56bad0dbde1d1303b9da5136626288435a2a1340a8"
  end

  depends_on "libarchive"
  depends_on "libmagic"
  depends_on "python@3.13"

  resource "argcomplete" do
    url "https://files.pythonhosted.org/packages/ee/be/29abccb5d9f61a92886a2fba2ac22bf74326b5c4f55d36d0a56094630589/argcomplete-3.6.0.tar.gz"
    sha256 "2e4e42ec0ba2fff54b0d244d0b1623e86057673e57bafe72dda59c64bd5dee8b"
  end

  resource "libarchive-c" do
    url "https://files.pythonhosted.org/packages/bc/0d/c45fe1307564cf550a407fca69cab3969a093d1d41bcd633b278440b4c30/libarchive_c-5.2.tar.gz"
    sha256 "fd44a8e28509af6e78262c98d1a54f306eabd2963dfee57bf298977de5057417"
  end

  resource "progressbar" do
    url "https://files.pythonhosted.org/packages/a3/a6/b8e451f6cff1c99b4747a2f7235aa904d2d49e8e1464e0b798272aa84358/progressbar-2.5.tar.gz"
    sha256 "5d81cb529da2e223b53962afd6c8ca0f05c6670e40309a7219eacc36af9b6c63"
  end

  resource "python-magic" do
    url "https://files.pythonhosted.org/packages/da/db/0b3e28ac047452d079d375ec6798bf76a036a08182dbb39ed38116a49130/python-magic-0.4.27.tar.gz"
    sha256 "c1ba14b08e4a5f5c31a302b7721239695b2f0f058d125bd5ce1ee36b9d9d3c3b"
  end

  def install
    venv = virtualenv_create(libexec, "python3.13")
    venv.pip_install resources
    venv.pip_install buildpath

    bin.install libexec/"bin/diffoscope"
    libarchive = Formula["libarchive"].opt_lib/shared_library("libarchive")
    bin.env_script_all_files(libexec/"bin", LIBARCHIVE: libarchive)
  end

  test do
    (testpath/"test1").write "test"
    cp testpath/"test1", testpath/"test2"
    system bin/"diffoscope", "--progress", "test1", "test2"
  end
end
