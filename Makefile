build:
	docker build -t armmarov_robot .

run:
	docker run -p 3333:3333 -h 0.0.0.0 armmarov_robot

.PHONY: build run
