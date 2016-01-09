# Add '~/bin' to the '$PATH'.
export PATH="$HOME/bin:$PATH";

# Programs.
if [ ! -d "$HOME/bin" ]; then
  mkdir ~/bin
fi

# Load the shell dotfiles.
for file in ~/.{bash_prompt,aliases}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
