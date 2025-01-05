all: dist/wico1.zip dist/wico3.zip

dist/wico1.zip: wico/wico1.pd wico/wico.pd wico/drywet.pd wico/diag_cross_169.png
	$(eval TMP := $(shell mktemp -d))
	@mkdir -p dist
	$(eval DIST := $(shell pwd)/dist)
	@mkdir $(TMP)/wico1
	@cp --archive $^ $(TMP)/wico1
	(cd $(TMP) && zip -r $(DIST)/wico1.zip ./wico1)
	@rm -rf $(TMP) 

dist/wico3.zip: wico/wico3.pd wico/wico.pd wico/drywet.pd wico/diag_cross_125_r.png wico/diag_cross_125_g.png wico/diag_cross_125_b.png
	$(eval TMP := $(shell mktemp -d))
	@mkdir -p dist
	$(eval DIST := $(shell pwd)/dist)
	@mkdir $(TMP)/wico3
	@cp --archive $^ $(TMP)/wico3
	(cd $(TMP) && zip -r $(DIST)/wico3.zip ./wico3)
	@rm -rf $(TMP) 
