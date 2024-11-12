Additionally to Next Flow:

Micro-C analysis, Jay, dm6, 

NextFlow Hi-C Pro pipeline: Look carefully at the params first!!! https://nf-co.re/hic/2.1.0/parameters/#bin_size

--dnase
*
--min_cis_dist not indicated (therefore, value is set to 0). This allows us to look at the whole population of putative ligations. If we already know the QC, the standard value to set up is 150 - then pipeline will filter out ligations of loci closer than 150 bp. 

If cool/mcool files are needed, remember to indicate:
--min_cis_dist 150
--bin_size (default:1000000) 1000 etc.
--hicpro_maps
--res_zoomify 1000