all:
	for project in */; do rm -rf "$$project/out"; mkdir "$$project/out"; mogrify -format png -path "$$project/out" "$$project/src/*.svg"; done
