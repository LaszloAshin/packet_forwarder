### Environment constants 

LGW_PATH ?= ../libloragw
ARCH ?=
CROSS_COMPILE ?=
export

### general build targets

all:
	$(MAKE) all -C libloragw
	$(MAKE) all -C poly_pkt_fwd
	$(MAKE) all -C util_ack
	$(MAKE) all -C util_sink
	$(MAKE) all -C util_tx_test

clean:
	$(MAKE) clean -C poly_pkt_fwd
	$(MAKE) clean -C util_ack
	$(MAKE) clean -C util_sink
	$(MAKE) clean -C util_tx_test
	$(MAKE) clean -C libloragw

### EOF
