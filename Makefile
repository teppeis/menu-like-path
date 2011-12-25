generate: compile
	sed -e "s/keyframes '\(.*\)'/keyframes \1/g" css/path.css > css/official.css
	sed -e "s/@keyframes/@-webkit-keyframes/g" css/official.css > css/webkit.css
	sed -e "s/@keyframes/@-moz-keyframes/g" css/official.css > css/moz.css
	sed -e "s/@keyframes/@-ms-keyframes/g" css/official.css > css/ms.css

compile:
	compass compile

clean:
	rm css/*
