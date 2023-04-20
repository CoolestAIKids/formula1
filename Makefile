help:
	@echo 'Available make targets:'
	@grep PHONY: Makefile | cut -d: -f2 | sed '1d;s/^/make/'

.PHONY: venv                # Create virtualenv
venv:
	@if [ ! -d .venv ]; \
		then \
			python3 -m venv .venv; \
	fi; \
	./.venv/bin/pip install -r ./requirements.txt
	@echo; echo "Run \"source .venv/bin/activate\" to activate venv"
	@echo "Run \"deactivate\" to activate venv"
