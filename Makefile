all: compile

compile:
	compass compile

clean:
	rm -rf css/* .sass-cache
