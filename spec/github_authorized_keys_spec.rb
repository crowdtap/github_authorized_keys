require 'spec_helper'

describe GithubAuthorizedKeys do
  it "complains if the configuration file does not exist"
  it "will spit out the original authorized_keys file on error"
  it "sends a proper request to GitHub"
  it "generates a proper authorized_keys file"
end
