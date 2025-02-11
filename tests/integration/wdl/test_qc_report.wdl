import "../../../wgbs-pipeline.wdl" as wgbs

workflow test_qc_report {
    Array[File] map_qc_json
    File reference
    File gemBS_json
    File contig_sizes
    String sample_barcode
    String docker

    call wgbs.qc_report { input:
        reference = reference,
        gemBS_json = gemBS_json,
        contig_sizes = contig_sizes,
        map_qc_json = map_qc_json,
        sample_barcode = sample_barcode,
        docker = docker,
    }
}
