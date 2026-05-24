cask "compliancecopilot" do
  version "1.0.0"
  sha256 "3505ab255aa562a8bce4b7ab112f829cfc807f9184231efc030385306a6f8ff5"

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
