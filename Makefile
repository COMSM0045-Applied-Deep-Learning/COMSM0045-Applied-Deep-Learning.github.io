.PHONY: check

HTML_FILES := $(shell find . -iname '*.xhtml' -type f)

check: $(HTML_FILES) vnu.jar
	java -jar vnu.jar $(HTML_FILES)

vnu.jar:
	curl -Lf "https://github.com/validator/validator/releases/download/17.9.0/vnu.jar_17.9.0.zip" -o vnu.jar.zip
	unzip -u -d /tmp/vnu vnu.jar.zip
	cp /tmp/vnu/dist/vnu.jar .
