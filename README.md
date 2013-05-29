[![Build Status](https://travis-ci.org/crowdtap/github_authorized_keys.png)](https://travis-ci.org/crowdtap/github_authorized_keys)

# GithubAuthorizedKeys

This will enable you to automatically generate an authorized_keys file based on members of a GitHub organization.

## Installation

Usually you will want this as a global gem:

    $ gem install github_authorized_keys

## Usage

Once installed, you will have a binary that you can use:

    $ github_authorized_keys

By default, it will search for a configuration in your home folder `~/.github_authorized_keys.yml`.
If you would like to use an alternative, simply pass it along on the command line:

    $ github_authorized_keys my_github_authorized_keys.yml

The executable will output to `STDOUT`, so if you would like to do this is cron for example:

    @daily github_authorized_keys > /home/deploy/.ssh/authorized_keys

## Configuration

The format looks like so:

    ---
    organization: 'my-organization'
    oauth_token: 'github-oauth-token'
    additional_keys:
      - '# a comment'
      - 'ssh-rsa 1'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
