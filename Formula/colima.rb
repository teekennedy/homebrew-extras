class Colima < Formula
  desc "Container runtimes on MacOS (and Linux) with minimal setup. Prelrelease version that uses the MacOS Virtualization framework v2."
  homepage "https://github.com/abiosoft/colima/blob/main/README.md"
  license "MIT"
  head "https://github.com/abiosoft/colima.git", branch: "support-vz"
  # This formula replaces the offical colima.
  conflicts_with "colima", because: "This formula installs colima from the support-vz branch."

  depends_on "go" => :build
  depends_on "lima"

  def install
    project = "github.com/abiosoft/colima"
    ldflags = %W[
      -s -w
      -X #{project}/config.appVersion=#{version}
      -X #{project}/config.revision=#{Utils.git_head}
    ]
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/colima"

    generate_completions_from_executable(bin/"colima", "completion")
  end

  test do
    assert_match "colima is not running", shell_output("#{bin}/colima status 2>&1", 1)
  end
end