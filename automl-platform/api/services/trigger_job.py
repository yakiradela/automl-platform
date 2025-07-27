import subprocess

def trigger_training_job(s3_key):
    subprocess.run(["kubectl", "create", "-f", "k8s/trainer-job.yaml", "--dry-run=client", "-o", "yaml"], check=True)
    
