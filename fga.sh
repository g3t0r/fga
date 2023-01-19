selected=$(git -c color.status=always status -s | fzf --ansi | sed "s/^...//g");
if [ -z "$selected" ]; then
	exit 0
fi

git add $selected;
