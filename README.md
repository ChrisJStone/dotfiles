<h1 align="center">No Sym Dotfiles</h1>

<p align="center">Track user configurations in home folder with out the need to use symlinks.</p>
<p>This method is a modification to the one presented by Derek Taylor on his youtube channel DistroTube. Links to his origional video and article below.</p>
<p>The only difference between the method outlined by DT and my implementation is I have chosen to use nested gitignore files that by default exclude everything except for .gitignore. This was done
  primarily to add an additional layer of securtiy to any personal information in the home folder such as ssh and gpg keys. Secondly by using this method we can use the . pathspec to stage files instaled of
  having to list each file individually.</p>

## Links

- [DT Youtube Video](https://www.youtube.com/watch?v=tBoLDpTWVOM)

- [Article](https://www.atlassian.com/git/tutorials/dotfiles)

- [Repo](https://github.com/ChrisJStone/dotfiles)

- [Bugs](https://github.com/ChrisJStone/dotfiles/issues "Issues Page")


## Installation
- clone project as a bare repository using git clone --bare can be anywhere on the system.
- Add the following line to your .bashrc: alias config='/usr/bin/git --git-dir="location of bare repo" --work-tree=$HOME'
- source your .bashrc file to make the alias available 
- checkout the repository into $HOME by running config checkout
  <p>NOTE: you may receive an error stating there were untracked files that would be overwritten by the checkout. If this is the case you can move them outside of your home folder or remove them entierly.</p>
- See example gitignore files below for details on how to include files and folders into the repository
  
## Available Commands

  <p>All standard git commands are available through the alias config command.</p>
  
## Example $HOME .gitignore file
  <p> The following is an example .gitignore file that can be placed in your $HOME folder.</p>
  <p> NOTE: It is assumed that subfolders with have a similar .gitignore file in them to prevent auto inclusion of everything</p>

```
  # By default excluded everything
  /*

  # Include ignore file
  !.gitignore

  # Include .config folder
  !/.config
  
  # Include .bashrc
  !.bashrc
```
## Exmpale .config .gitignore file
```
  # By default excluded everything
  /*

  # Include ignore file
  !.gitignore

  # Include neovim
  !/nvim
```

## Author

**Chris Stone**

- [Profile](https://github.com/ChrisJStone "Chris Stone")
- [Email](mailto:chrisjstone79@gmail.com?subject=Hi "Hi!")

## 🤝 Support

Contributions, issues, and feature requests are welcome!

Give a ⭐️ if you like this project!
