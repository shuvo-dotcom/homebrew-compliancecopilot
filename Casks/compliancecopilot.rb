cask "compliancecopilot" do
  version "1.0.0"
  sha256 "addfa9bbdc49a40e04a136d6fe4fa1eb22147b64f833d5c9b15467db20190732"

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
