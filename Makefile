.PHONY: build push

export PATH := scripts:$(PATH)

build:
	imgh build 'build'

push:
	imgh push 'build'
