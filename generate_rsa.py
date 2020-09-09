"""
RSA key utils
"""
import sys
import subprocess

envs = ["tenant", "int", "loadtest", "bs", "prod"]

for env in envs:

    # Create private key
    create_priv_key_cmd = "openssl genrsa -out ./output/%s_rsa.private 2048" % env
    process = subprocess.Popen(create_priv_key_cmd.split(), stdout=subprocess.PIPE)
    process.communicate()

    # Create public key
    create_pub_key_cmd = "openssl rsa -in ./output/%s_rsa.private -out ./output/%s_rsa.public -pubout -outform PEM" % (env, env)
    process = subprocess.Popen(create_pub_key_cmd.split(), stdout=subprocess.PIPE)
    process.communicate()

    # Create base64-encoded version of private key and output to text file
    base64_encode_cmd = "base64 -i ./output/%s_rsa.private -o ./output/%s_b64_encoded.txt" % (env, env)
    process = subprocess.Popen(base64_encode_cmd.split(), stdout=subprocess.PIPE)
    process.communicate()

print("Key generation complete")