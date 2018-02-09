class Perfops < Formula
  desc "The PerfOps API command-line interface tool"
  homepage "https://perfops.net/cli"
  url "https://github.com/ProspectOne/perfops-cli.git", :branch => "master"
  version "0.6.0"
  head "https://github.com/ProspectOne/perfops-cli.git"

  depends_on "go"

  def install
    ENV["GOPATH"] = buildpath
    version = Utils.popen_read("git describe --tags --dirty").chomp
    commit = Utils.popen_read("git rev-parse --short HEAD").chomp
    date = Time.new.strftime("%Y-%m-%d")
    version_pkg = "github.com/ProspectOne/perfops-cli/cmd"
    api_pkg = "github.com/ProspectOne/perfops-cli/api"
    (buildpath/"src/github.com/ProspectOne/perfops-cli").install buildpath.children
    cd "src/github.com/ProspectOne/perfops-cli" do
      ldflags = [
        "-s", "-w",
        "-X #{version_pkg}.commitHash=#{commit}",
        "-X #{version_pkg}.buildDate=#{date}",
        "-X #{version_pkg}.version=#{version}",
        "-X #{api_pkg}.libVersion=#{version}"
      ]
      system "go", "build", "-o", bin/"perfops", "-ldflags", ldflags.join(" "), "."
    end
  end

  test do
    system "#{bin}/prefops", "--version"
  end
end
