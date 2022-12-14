class ColimaVz < Formula
  desc "Container runtimes on MacOS (and Linux) using the Virtualization framework v2"
  homepage "https://github.com/abiosoft/colima/blob/main/README.md"
  url "https://github.com/abiosoft/colima.git",
      tag: "412d01b467230181329bd339299435c36286da76"
  license "MIT"
  head "https://github.com/abiosoft/colima.git", branch: "support-vz"

  depends_on "go" => :build
  depends_on "lima"
  # This formula replaces the offical colima.
  conflicts_with "colima", because: "this formula installs colima from the support-vz branch"

  def install
    project = "github.com/abiosoft/colima"
    ldflags = %W[
      -s -w
      -X #{project}/config.appVersion=#{version}
      -X #{project}/config.revision=#{Utils.git_head}
    ]
    system "go", "build", *std_go_args(output: bin/"colima", ldflags: ldflags), "./cmd/colima"

    generate_completions_from_executable(bin/"colima", "completion")
  end

  test do
    assert_match "colima is not running", shell_output("#{bin}/colima status 2>&1", 1)
  end
end
