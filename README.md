# git-issues
Git plugin to manage Github Issues. 

Proxies ghi. See https://github.com/stephencelis/ghi for more infor

## Install

Requires the ghi which is included as the first part of this script.
This will install bleeding edge ghi and may be unstable. 
Use brew or gem to get a stable version. See https://github.com/stephencelis/ghi#install

Installs ghi via curl.

```
curl -sL https://raw.githubusercontent.com/stephencelis/ghi/master/ghi > ghi && \
chmod 755 ghi && \
mv ghi /usr/local/bin
```

Installs git-issues

```
curl -sL https://raw.githubusercontent.com/buckhx/git-issues/master/git-issues.sh > git-issues && \
chmod 755 git-issues && \
mv git-issues /usr/local/bin
```

You'll then need to store your github token in the keychain.
This is done with the following commaned which will prompt you for your user name and password

```
git issues config --auth <github_username>
```


## Usage

Proxies ghi and sets the default command to list.

```
usage: git issues [--version] [-p|--paginate|--no-pager] [--help] <command> [<args>]
           [ -- [<user>/]<repo>]

The most commonly used ghi commands are:
   list        List your issues (or a repository's) [DEFAULT]
   show        Show an issue's details
   open        Open (or reopen) an issue
   close       Close an issue
   lock        Lock an issue's conversation, limiting it to collaborators
   unlock      Unlock an issue's conversation, opening it to all viewers
   edit        Modify an existing issue
   comment     Leave a comment on an issue
   label       Create, list, modify, or delete labels
   assign      Assign an issue to yourself (or someone else)
   milestone   Manage project milestones
   status      Determine whether or not issues are enabled for this repo
   enable      Enable issues for the current repo
   disable     Disable issues for the current repo

See 'ghi help <command>' for more information on a specific command.
```
