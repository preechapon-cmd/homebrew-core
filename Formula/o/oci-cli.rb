class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://files.pythonhosted.org/packages/7e/82/2da5d966f4a66d6d84030be314c8f3161de7f33fe350a635d0d0c56f6002/oci_cli-3.51.2.tar.gz"
  sha256 "a30688ed83bdd6f5f1201f8adf8195578d713cb5f596e5959cdb6152ba58f131"
  license any_of: ["UPL-1.0", "Apache-2.0"]
  head "https://github.com/oracle/oci-cli.git", branch: "master"

  bottle do
    rebuild 1
    sha256 cellar: :any,                 arm64_sequoia: "258b4cbab117c0f6c72579337d4ebb93ebb02b3e7df0c64d7701806edf95f6f2"
    sha256 cellar: :any,                 arm64_sonoma:  "775e19019a4d1ce996f31d5cc015a4cf27bafc1f09320d46f483c1f0c7b9b613"
    sha256 cellar: :any,                 arm64_ventura: "c79ca5e85299b91bfa1cb69cfb0e8bfbe2581dca8a8af74ba03f78e1764df469"
    sha256 cellar: :any,                 sonoma:        "2462dec1a949f577f7132902ab95ed233fc292ee73fc8f3513ddb2df31bc0577"
    sha256 cellar: :any,                 ventura:       "2e24114b8044da6653f575152f36e6410b7e98f7746f91a79774e6f3ab36dd85"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "64ce6910d7f8c5005b62d65d9711fb579101b39ed6f2551a2d5569c2f3e19b6d"
  end

  depends_on "certifi"
  depends_on "cryptography"
  depends_on "libyaml"
  depends_on "python@3.13"

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/2e/00/0f6e8fcdb23ea632c866620cc872729ff43ed91d284c866b515c6342b173/arrow-1.3.0.tar.gz"
    sha256 "d4540617648cb5f895730f1ad8c82a65f2dad0166f57b75f3ca54759c4d67a85"
  end

  resource "circuitbreaker" do
    url "https://files.pythonhosted.org/packages/23/57/3bc8f0885c6914336d0b2fe36bf740476f0c827b3fb991993d67c1a9d3f3/circuitbreaker-2.0.0.tar.gz"
    sha256 "28110761ca81a2accbd6b33186bc8c433e69b0933d85e89f280028dbb8c1dd14"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/dd/cf/706c1ad49ab26abed0b77a2f867984c1341ed7387b8030a6aa914e2942a0/click-8.0.4.tar.gz"
    sha256 "8458d7b1287c5fb128c90e23381cf99dcde74beaf6c7ff6384ce84d6fe090adb"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "oci" do
    url "https://files.pythonhosted.org/packages/8c/56/8b8a642879318684b77270ebed20afbe301d468bfcda59eeed4f297de2c4/oci-2.142.0.tar.gz"
    sha256 "319b3a478891aa6b2e6c373dc9459254cfdfc2b17e4c084a0ad3e2b9c067f6a3"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/cc/c6/25b6a3d5cd295304de1e32c9edbcf319a52e965b339629d37d42bb7126ca/prompt_toolkit-3.0.43.tar.gz"
    sha256 "3527b7af26106cbc65a040bcc84839a3566ec1b051bb0bfe953631e704b0ff7d"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/c1/d4/1067b82c4fc674d6f6e9e8d26b3dff978da46d351ca3bac171544693e085/pyopenssl-24.3.0.tar.gz"
    sha256 "49f7a019577d834746bc55c5fce6ecbcec0f2b4ec5ce1cf43a9a173b8138bb36"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/3a/31/3c70bf7603cc2dca0f19bdc53b4537a797747a58875b552c8c413d963a3f/pytz-2024.2.tar.gz"
    sha256 "2aa355083c50a0f93fa581709deac0c9ad65cca8a9e9beac660adcbd493c798a"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "terminaltables" do
    url "https://files.pythonhosted.org/packages/f5/fc/0b73d782f5ab7feba8d007573a3773c58255f223c5940a7b7085f02153c3/terminaltables-3.1.10.tar.gz"
    sha256 "ba6eca5cb5ba02bba4c9f4f985af80c54ec3dccf94cfcd190154386255e47543"
  end

  resource "types-python-dateutil" do
    url "https://files.pythonhosted.org/packages/a9/60/47d92293d9bc521cd2301e423a358abfac0ad409b3a1606d8fbae1321961/types_python_dateutil-2.9.0.20241206.tar.gz"
    sha256 "18f493414c26ffba692a72369fea7a154c502646301ebfe3d56a04b3767284cb"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  def install
    # Loosen `pyyaml` version pin: https://github.com/oracle/oci-cli/pull/858
    inreplace "setup.py", "PyYAML>=5.4,<=6.0.1", "PyYAML>=5.4,<=6.0.2"

    venv = virtualenv_install_with_resources without: "terminaltables"

    # Switch build-system to poetry-core to avoid rust dependency on Linux.
    # Remove when released: https://github.com/matthewdeanmartin/terminaltables/pull/1
    resource("terminaltables").stage do
      inreplace "pyproject.toml", 'requires = ["poetry>=0.12"]', 'requires = ["poetry-core>=1.0"]'
      inreplace "pyproject.toml", 'build-backend = "poetry.masonry.api"', 'build-backend = "poetry.core.masonry.api"'
      venv.pip_install_and_link Pathname.pwd
    end

    generate_completions_from_executable(bin/"oci", shells: [:fish, :zsh], shell_parameter_format: :click)
  end

  test do
    version_out = shell_output("#{bin}/oci --version")
    assert_match version.to_s, version_out

    assert_match "Usage: oci [OPTIONS] COMMAND [ARGS]", shell_output("#{bin}/oci --help")
    assert_match "Could not find config file", shell_output("#{bin}/oci session validate 2>&1", 1)
  end
end
