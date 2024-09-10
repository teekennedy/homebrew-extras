cask "rmir" do
  version "3.0.15"
  sha256 "e177d6c9f5cd0d4b1e62c0e8d9689bcd58fe540a5361ff45ec6b2ab562b560a6"

  url "https://sourceforge.net/projects/controlremote/files/RemoteMaster/v#{version}/RMIR.v#{version}-bin.zip/download"
  name "RMIR"
  desc "JP1 infrared remote programmer"
  homepage "https://sourceforge.net/projects/controlremote/"

  suite ".", target: "RMIR"

  caveats do
    depends_on_java
  end
end
