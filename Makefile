#

love:
	while read -r x; do echo "=== $$x ==="; case "$x" in ('#'*) continue;; esac; curl -s "$$x" | ./geheis; echo "ret=$$?"; done < URLS.txt
