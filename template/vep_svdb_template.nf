

process VEP {
	publishDir params.workingDir, mode: "copy", overwrite: true
	errorStrategy 'ignore' 

	input:
	¤¤¤¤

	output:
	set ID, "${ID}_VEP.vcf" into VEP_out

	script:
	"""
	variant_effect_predictor.pl --cache -i &&&& -o ${ID}_tmp --format vcf --vcf --port 3337 --offline --force_overwrite                    
	mv ${ID}_tmp ${ID}_VEP.vcf
	"""
}