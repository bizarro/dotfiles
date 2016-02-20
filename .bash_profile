# Add '~/bin' to the '$PATH'.
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles.
for file in ~/.{bash_aliases,bash_prompt,bash_functions}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
