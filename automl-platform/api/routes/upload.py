from flask import Blueprint, request, jsonify
from services.s3 import upload_to_s3
from services.trigger_job import trigger_trining_job

upload_bp = Blueprint('upload', __name__)

@upload_bp.route("/upload", methods=["POST"])
def upload():
    file = request.files.get("file")
    if not file:
        return jsonify ({"error": "Missing file"}), 400
    
    s3_key = upload_to_s3(file)
    trigger_training_job(s3_key)
    return jsonify({"message": "File uploaded and job triggered", "s3_key": s3_key}),
