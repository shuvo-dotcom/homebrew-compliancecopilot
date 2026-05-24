cask "compliancecopilot" do
  version "1.0.0"
  sha256 "7f4da0c099c1165a1efce0cb39aac272833aa9789ba587ccf1e1950e8562056a"

  url "https://github.com/shuvo-dotcom/compliancecopilot/releases/download/v#{version}/ComplianceCopilot.dmg"
  name "ComplianceCopilot"
  desc "Self-hosted multi-agent compliance reviewer for GDPR & EU AI Act"
  homepage "https://shuvo-dotcom.github.io/compliancecopilot/"

  depends_on macos: ">= :ventura"

  app "ComplianceCopilot.app"

  zap trash: [
    "~/Library/Application Support/ComplianceCopilot",
    "~/Library/Logs/ComplianceCopilot",
  ]
end
