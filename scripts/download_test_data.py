import boto3

# uncomment this for local testing
# access = ''
# secret = ''
# token = ''
# s3 = boto3.client('s3', aws_access_key_id=access, aws_secret_access_key=secret, aws_session_token=token)
# s3.download_file('alphafold-dbs-mirrors', 'sorted_opt', 'sorted_opt')
# s3.download_file('alphafold-dbs-mirrors', 'mgy_clusters_2018_12.fa', 'mgy_clusters_2019_12.fa')
# s3.download_file('alphafold-dbs-mirrors', 'pdb70', 'pdb70')
# s3.download_file('alphafold-dbs-mirrors', 'obsolete.dat', 'obsolete.dat')
# s3.download_file('alphafold-dbs-mirrors', 'mmcif_files', 'mcif_files')
# s3.download_file('alphafold-dbs-mirrors', 'pdb_seqres.txt', 'pdb_seqres.txt')
# s3.download_file('alphafold-dbs-mirrors', 'bfd-first_non_consensus_sequences.fasta', 'bfd-first_non_concensus_sequences.fasta')
# s3.download_file('alphafold-dbs-mirrors', 'uniclust30_2018_08', 'uniclust30_2018_08')
# s3.download_file('alphafold-dbs-mirrors', 'uniprot.fasta', 'uniprot.fasta')
# s3.download_file('alphafold-dbs-mirrors', 'uniref90.fasta', 'uniref90.fasta')


# comment this for local testing
s3 = boto3.client('s3')
s3.download_file('alphafold-dbs-mirrors', 'sorted_opt', '/mnt/bfd_database_path/bfd_metaclust_clu_complete_id30_c90_final_seq.sorted_opt')
s3.download_file('alphafold-dbs-mirrors', 'mgy_clusters_2018_12.fa', '/mnt/mgnify_database_path/mgy_clusters_2019_12.fa')
s3.download_file('alphafold-dbs-mirrors', 'pdb70', '/mnt/pdb70_database_path/pdb70')
s3.download_file('alphafold-dbs-mirrors', 'obsolete.dat', '/mnt/obsolete_pdbs_path/obsolete.dat')
s3.download_file('alphafold-dbs-mirrors', 'mmcif_files', '/mnt/template_mcif_dir/mcif_files')
s3.download_file('alphafold-dbs-mirrors', 'pdb_seqres.txt', '/mnt/pdb_seqres_database_path/pdb_seqres.txt')
s3.download_file('alphafold-dbs-mirrors', 'bfd-first_non_consensus_sequences.fasta', '/mnt/small_bfd_database_path/bfd-first_non_concensus_sequences.fasta')
s3.download_file('alphafold-dbs-mirrors', 'uniclust30_2018_08', '/mnt/uniclust30_database_path/uniclust30_2018_08/uniclust30_2018_08')
s3.download_file('alphafold-dbs-mirrors', 'uniprot.fasta', '/mnt/uniprot_database_path/uniprot.fasta')
s3.download_file('alphafold-dbs-mirrors', 'uniref90.fasta', '/mnt/uniref90_database_path/uniref90.fasta')