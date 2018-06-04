
# generate rsa key in pem format
openssl genrsa -out private_key.pem 1024

# transfor rsa key to DER format, required by cloudfront
openssl pkcs8 -topk8 -nocrypt -in private_key.pem -inform PEM -out new.der -outform DER

# generate x509 certificate
openssl req -new -newkey rsa:1024 -days 36510 -nodes -x509 -keyout test.pem -out test.pem

# convert x509 pem to der
openssl x509 -in test.pem -out test.der -outform DER

# extract private key from .p12 keypair file
openssl pkcs12 -in server_root_.p12 -out MyKey.pem -nocerts -nodes

openssl pkcs8 -topk8 -nocrypt -in private_key.pem -inform PEM -out new.der -outform DER

# list valid curves
openssl ecparam -list_curves

# generate ECC certificate
# generate ECC key
openssl ecparam -genkey -name secp256k1 -out key.pem
# certificate signing request
openssl req -new -sha256 -key key.pem -out csr.csr
# gen cert
openssl req -x509 -sha256 -days 365 -key key.pem -in csr.csr -out certificate.pem


#
# pkcs8 private key to DER format
openssl pkcs8 -topk8 -inform PEM -outform DER -in filename -out filename -nocrypt

# build openssl 1.1.0 to have the CCM8 ciphersuite
./openssl s_client -cipher "ECDHE-ECDSA-AES128-CCM8" -connect localhost:5689
