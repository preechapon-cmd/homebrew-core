class Conan < Formula
  include Language::Python::Virtualenv

  desc "Distributed, open source, package manager for C/C++"
  homepage "https://conan.io"
  url "https://files.pythonhosted.org/packages/af/04/9953e47e414c7e6bc79d797cdb34833219ff966088167f52fd7bc12f303d/conan-2.8.0.tar.gz"
  sha256 "ca80403fea7eb99a8e7b89ba7629f5d0d8a22fdcefd4c74f378dbad4b0ffd1bb"
  license "MIT"
  head "https://github.com/conan-io/conan.git", branch: "develop"

  bottle do
    sha256 cellar: :any,                 arm64_sequoia:  "77fdbdb92e62aabcd3f4d74ea482008b8bdbfb6457cd95ba25ac68b2b638f3cd"
    sha256 cellar: :any,                 arm64_sonoma:   "819941c251b8815c071c5b559b8acd283f6bfcd63fa4be237d34c93713ee9a84"
    sha256 cellar: :any,                 arm64_ventura:  "18e68c56d891e34daf4680c800bd3b73aec2310fe3f1849a235296612626a5e4"
    sha256 cellar: :any,                 arm64_monterey: "a779fbc50eb566126a4df0ee92b899be550f894fece2ad3356884c55196626db"
    sha256 cellar: :any,                 sonoma:         "57a018e5387a3bb6b158bd07aa2ecc1b6b5e797786cdf5af16cb1ee96f238116"
    sha256 cellar: :any,                 ventura:        "05d1ccd9b951ccb11347b76b97cfe1e5ea9e52fac3da8bbdd0f9857fea26f907"
    sha256 cellar: :any,                 monterey:       "6fc9dac4c91868f52276d509d48d2e0f1158369c4e7d69c4135985baf2129fc4"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "fa9049926d1d0b19d33d13cca0cff094cc342b23ce9e5037fcbf5e629feb41f3"
  end

  depends_on "pkg-config" => :build
  depends_on "cmake" => :test
  depends_on "certifi"
  depends_on "libyaml"
  depends_on "python@3.12"

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
    sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/4b/89/eaa3a3587ebf8bed93e45aa79be8c2af77d50790d15b53f6dfc85b57f398/distro-1.8.0.tar.gz"
    sha256 "02e111d1dc6a50abb8eed6bf31c3e48ed8b0830d1ea2a1b78c61765c2513fdd8"
  end

  resource "fasteners" do
    url "https://files.pythonhosted.org/packages/5f/d4/e834d929be54bfadb1f3e3b931c38e956aaa3b235a46a3c764c26c774902/fasteners-0.19.tar.gz"
    sha256 "b4f37c3ac52d8a445af3a66bce57b33b5e90b97c696b7b984f530cf8f0ded09c"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/ed/55/39036716d19cab0747a5020fc7e907f362fbf48c984b14e62127f7e68e5d/jinja2-3.1.4.tar.gz"
    sha256 "4a3aee7acbbe7303aede8e9648d13b8bf88a429282aa6122a993f0ac800cb369"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
    sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
  end

  resource "patch-ng" do
    url "https://files.pythonhosted.org/packages/2a/f0/f61a7368ae332d9a45534068c740d4eee4a06ece6cf48af5c3eb9e4bc50e/patch-ng-1.18.0.tar.gz"
    sha256 "da067628d6d5fd9dc5a55eab37951d46bd95661b7219fab364b711366abcc690"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
    sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e4/e8/6ff5e6bc22095cfc59b6ea711b687e2b7ed4bdb373f7eeec370a97d7392f/urllib3-1.26.20.tar.gz"
    sha256 "40c2dc0c681e47eb8f90e7e27bf6ff7df2e677421fd46756da1161c39ca70d32"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"conan", "profile", "detect"
    system bin/"conan", "install", "--requires=zlib/1.2.11",
                                   "--build=missing",
                                   "--lockfile-out=conan.lock"
    lockfile = JSON.parse(File.read("conan.lock", mode: "r"))
    refute_predicate lockfile["requires"].select { |req| req.start_with?("zlib/1.2.11") }, :empty?
  end
end
