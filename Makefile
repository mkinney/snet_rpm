.DEFAULT_GOAL := build

.PHONY: build

build: FORCE
	docker build -t mkinney:snet_rpm .
	docker cp $(shell docker create mkinney:snet_rpm):/root/rpmbuild/RPMS/x86_64/snet-0.4-1.el9.x86_64.rpm .

clean:
	docker rmi mkinney:snet_rpm || true
	docker system prune
	@rm *.rpm 2> /dev/null || true

FORCE: ;

