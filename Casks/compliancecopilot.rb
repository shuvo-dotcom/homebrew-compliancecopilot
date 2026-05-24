cask "compliancecopilot" do
  version "1.0.1"
  sha256 "e914216f8ffaaf915c2c86875071eeaa354ea1e168412d9ae1915492722890f5"

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
