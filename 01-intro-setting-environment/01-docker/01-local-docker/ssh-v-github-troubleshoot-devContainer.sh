$ssh -v git@github.com


OpenSSH_8.4p1 Debian-5+deb11u1, OpenSSL 1.1.1w  11 Sep 2023
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: /etc/ssh/ssh_config line 19: include /etc/ssh/ssh_config.d/*.conf matched no files
debug1: /etc/ssh/ssh_config line 21: Applying options for *
debug1: Connecting to github.com [140.82.121.4] port 22.
debug1: Connection established.
debug1: identity file /home/vscode/.ssh/id_rsa type -1
debug1: identity file /home/vscode/.ssh/id_rsa-cert type -1
debug1: identity file /home/vscode/.ssh/id_dsa type -1
debug1: identity file /home/vscode/.ssh/id_dsa-cert type -1
debug1: identity file /home/vscode/.ssh/id_ecdsa type -1
debug1: identity file /home/vscode/.ssh/id_ecdsa-cert type -1
debug1: identity file /home/vscode/.ssh/id_ecdsa_sk type -1
debug1: identity file /home/vscode/.ssh/id_ecdsa_sk-cert type -1
debug1: identity file /home/vscode/.ssh/id_ed25519 type -1
debug1: identity file /home/vscode/.ssh/id_ed25519-cert type -1
debug1: identity file /home/vscode/.ssh/id_ed25519_sk type -1
debug1: identity file /home/vscode/.ssh/id_ed25519_sk-cert type -1
debug1: identity file /home/vscode/.ssh/id_xmss type -1
debug1: identity file /home/vscode/.ssh/id_xmss-cert type -1
debug1: Local version string SSH-2.0-OpenSSH_8.4p1 Debian-5+deb11u1
debug1: Remote protocol version 2.0, remote software version babeld-0ae455d31
debug1: no match: babeld-0ae455d31
debug1: Authenticating to github.com:22 as 'git'
debug1: SSH2_MSG_KEXINIT sent
debug1: SSH2_MSG_KEXINIT received
debug1: kex: algorithm: curve25519-sha256
debug1: kex: host key algorithm: ecdsa-sha2-nistp256
debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
debug1: Server host key: ecdsa-sha2-nistp256 SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM
debug1: Host 'github.com' is known and matches the ECDSA host key.
debug1: Found key in /home/vscode/.ssh/known_hosts:3
debug1: rekey out after 134217728 blocks
debug1: SSH2_MSG_NEWKEYS sent
debug1: expecting SSH2_MSG_NEWKEYS
debug1: SSH2_MSG_NEWKEYS received
debug1: rekey in after 134217728 blocks
debug1: Will attempt key: /home/vscode/.ssh/id_rsa 
debug1: Will attempt key: /home/vscode/.ssh/id_dsa 
debug1: Will attempt key: /home/vscode/.ssh/id_ecdsa 
debug1: Will attempt key: /home/vscode/.ssh/id_ecdsa_sk 
debug1: Will attempt key: /home/vscode/.ssh/id_ed25519 
debug1: Will attempt key: /home/vscode/.ssh/id_ed25519_sk 
debug1: Will attempt key: /home/vscode/.ssh/id_xmss 
debug1: SSH2_MSG_EXT_INFO received
debug1: kex_input_ext_info: server-sig-algs=<ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,sk-ssh-ed25519-cert-v01@openssh.com,sk-ecdsa-sha2-nistp256-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-rsa-cert-v01@openssh.com,sk-ssh-ed25519@openssh.com,sk-ecdsa-sha2-nistp256@openssh.com,ssh-ed25519,ecdsa-sha2-nistp521,ecdsa-sha2-nistp384,ecdsa-sha2-nistp256,rsa-sha2-512,rsa-sha2-256,ssh-rsa>
debug1: SSH2_MSG_SERVICE_ACCEPT received
debug1: Authentications that can continue: publickey
debug1: Next authentication method: publickey
debug1: Trying private key: /home/vscode/.ssh/id_rsa
debug1: Trying private key: /home/vscode/.ssh/id_dsa
debug1: Trying private key: /home/vscode/.ssh/id_ecdsa
debug1: Trying private key: /home/vscode/.ssh/id_ecdsa_sk
debug1: Trying private key: /home/vscode/.ssh/id_ed25519
debug1: Trying private key: /home/vscode/.ssh/id_ed25519_sk
debug1: Trying private key: /home/vscode/.ssh/id_xmss
debug1: No more authentication methods to try.
git@github.com: Permission denied (publickey).