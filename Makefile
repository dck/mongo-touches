run-mongo:
	docker run -d --name=mongodb -p 27017:27017 -v /opt/db:/data/db mongo:latest mongod --smallfiles --noprealloc

shell:
	@docker exec -it mongodb bash

stop-mongo:
	docker rm -f mongodb

reload-mongo:
	docker restart mongodb

