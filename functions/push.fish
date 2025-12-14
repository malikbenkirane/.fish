function push --description 'git push current branch to remote'
  set remote (git remote)
  set branch (git branch | sed -n '/^\*/s/^..//p')
  echo "pushing '$branch' to '$remote'"
  git push "$remote" "$branch" $argv
end
