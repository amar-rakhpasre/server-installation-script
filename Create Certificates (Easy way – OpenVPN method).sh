#On any Linux system:
git clone https://github.com/OpenVPN/easy-rsa.git
cd easy-rsa/easyrsa3
./easyrsa init-pki
./easyrsa build-ca nopass
./easyrsa build-server-full server nopass
./easyrsa build-client-full client1 nopass

#You will get:
#ca.crt
#server.crt
#server.key
#client1.crt
#client1.key
