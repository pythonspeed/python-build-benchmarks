# Local Variables:
# mode: makefile
# End:
DOCKER := 'docker'

build image docker=DOCKER:
  {{docker}} build -t pyperformance-{{image}} -f Dockerfile.{{image}} .

run image docker=DOCKER:
	{{docker}} run --privileged -t -v $PWD/results:/results pyperformance-{{image}} results/{{image}}.json
