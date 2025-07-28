import subprocess

def trigger_training_job(s3_key):
    # בגרסה פשוטה, מפיקים את ה-YAML עם --dry-run ואז מפעילים בפועל (כדאי להוסיף הפעלת ה-job)
    subprocess.run([
        "kubectl", "create", "-f", "k8s/trainer-job.yaml", "--dry-run=client", "-o", "yaml"
    ], check=True)
