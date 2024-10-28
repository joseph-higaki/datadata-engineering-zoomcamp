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
debug1: Will attempt key: josephhigaki@hotmail.com ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE agent
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
debug1: Offering public key: josephhigaki@hotmail.com ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE agent
debug1: Server accepts key: josephhigaki@hotmail.com ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE agent
debug1: Authentication succeeded (publickey).
Authenticated to github.com ([140.82.121.4]:22).
debug1: channel 0: new [client-session]
debug1: Entering interactive session.
debug1: pledge: network
debug1: client_input_global_request: rtype hostkeys-00@openssh.com want_reply 0
debug1: Sending environment.
debug1: Sending env LANG = en_US.UTF-8
PTY allocation request failed on channel 0
debug1: client_input_channel_req: channel 0 rtype exit-status reply 0
Hi joseph-higaki! You've successfully authenticated, but GitHub does not provide shell access.
debug1: channel 0: free: client-session, nchannels 1
Connection to github.com closed.
Transferred: sent 2496, received 2700 bytes, in 0.3 seconds
Bytes per second: sent 8513.8, received 9209.7
debug1: Exit status 1