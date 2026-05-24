cask "compliancecopilot" do
  version "1.0.0"
  sha256 "04373d4c6402d762fa0ff3f5c331875b8473d3cc404a286630ea798f6d720d6d"

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
