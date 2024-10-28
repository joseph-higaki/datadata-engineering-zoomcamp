$ ssh -v git@github.com 
OpenSSH_9.9p1, OpenSSL 3.2.3 3 Sep 2024
debug1: Reading configuration data /etc/ssh/ssh_config
debug1: Connecting to github.com [140.82.121.3] port 22.
debug1: Connection established.
debug1: identity file /c/Users/josep/.ssh/id_rsa type -1
debug1: identity file /c/Users/josep/.ssh/id_rsa-cert type -1
debug1: identity file /c/Users/josep/.ssh/id_ecdsa type -1
debug1: identity file /c/Users/josep/.ssh/id_ecdsa-cert type -1
debug1: identity file /c/Users/josep/.ssh/id_ecdsa_sk type -1
debug1: identity file /c/Users/josep/.ssh/id_ecdsa_sk-cert type -1
debug1: identity file /c/Users/josep/.ssh/id_ed25519 type 3
debug1: identity file /c/Users/josep/.ssh/id_ed25519-cert type -1
debug1: identity file /c/Users/josep/.ssh/id_ed25519_sk type -1
debug1: identity file /c/Users/josep/.ssh/id_ed25519_sk-cert type -1
debug1: identity file /c/Users/josep/.ssh/id_xmss type -1
debug1: identity file /c/Users/josep/.ssh/id_xmss-cert type -1
debug1: Local version string SSH-2.0-OpenSSH_9.9
debug1: Remote protocol version 2.0, remote software version babeld-0ae455d31
debug1: compat_banner: no match: babeld-0ae455d31
debug1: Authenticating to github.com:22 as 'git'
debug1: load_hostkeys: fopen /c/Users/josep/.ssh/known_hosts2: No such file or directory
debug1: load_hostkeys: fopen /etc/ssh/ssh_known_hosts: No such file or directory
debug1: load_hostkeys: fopen /etc/ssh/ssh_known_hosts2: No such file or directory
debug1: SSH2_MSG_KEXINIT sent
debug1: SSH2_MSG_KEXINIT received
debug1: kex: algorithm: curve25519-sha256
debug1: kex: host key algorithm: ssh-ed25519
debug1: kex: server->client cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: kex: client->server cipher: chacha20-poly1305@openssh.com MAC: <implicit> compression: none
debug1: expecting SSH2_MSG_KEX_ECDH_REPLY
debug1: SSH2_MSG_KEX_ECDH_REPLY received
debug1: Server host key: ssh-ed25519 SHA256:+DiY3wvvV6TuJJhbpZisF/zLDA0zPMSvHdkr4UvCOqU
debug1: load_hostkeys: fopen /c/Users/josep/.ssh/known_hosts2: No such file or directory
debug1: load_hostkeys: fopen /etc/ssh/ssh_known_hosts: No such file or directory
debug1: load_hostkeys: fopen /etc/ssh/ssh_known_hosts2: No such file or directory
debug1: Host 'github.com' is known and matches the ED25519 host key.
debug1: Found key in /c/Users/josep/.ssh/known_hosts:1
debug1: ssh_packet_send2_wrapped: resetting send seqnr 3
debug1: rekey out after 134217728 blocks
debug1: SSH2_MSG_NEWKEYS sent
debug1: expecting SSH2_MSG_NEWKEYS
debug1: ssh_packet_read_poll2: resetting read seqnr 3
debug1: SSH2_MSG_NEWKEYS received
debug1: rekey in after 134217728 blocks
debug1: SSH2_MSG_EXT_INFO received
debug1: kex_ext_info_client_parse: server-sig-algs=<ssh-ed25519-cert-v01@openssh.com,ecdsa-sha2-nistp521-cert-v01@openssh.com,ecdsa-sha2-nistp384-cert-v01@openssh.com,ecdsa-sha2-nistp256-cert-v01@openssh.com,sk-ssh-ed25519-cert-v01@openssh.com,sk-ecdsa-sha2-nistp256-cert-v01@openssh.com,rsa-sha2-512-cert-v01@openssh.com,rsa-sha2-256-cert-v01@openssh.com,ssh-rsa-cert-v01@openssh.com,sk-ssh-ed25519@openssh.com,sk-ecdsa-sha2-nistp256@openssh.com,ssh-ed25519,ecdsa-sha2-nistp521,ecdsa-sha2-nistp384,ecdsa-sha2-nistp256,rsa-sha2-512,rsa-sha2-256,ssh-rsa>
debug1: SSH2_MSG_SERVICE_ACCEPT received
debug1: Authentications that can continue: publickey
debug1: Next authentication method: publickey
debug1: Will attempt key: /c/Users/josep/.ssh/id_rsa
debug1: Will attempt key: /c/Users/josep/.ssh/id_ecdsa
debug1: Will attempt key: /c/Users/josep/.ssh/id_ecdsa_sk
debug1: Will attempt key: /c/Users/josep/.ssh/id_ed25519 ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE
debug1: Will attempt key: /c/Users/josep/.ssh/id_ed25519_sk
debug1: Will attempt key: /c/Users/josep/.ssh/id_xmss
debug1: Trying private key: /c/Users/josep/.ssh/id_rsa
debug1: Trying private key: /c/Users/josep/.ssh/id_ecdsa
debug1: Trying private key: /c/Users/josep/.ssh/id_ecdsa_sk
debug1: Offering public key: /c/Users/josep/.ssh/id_ed25519 ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE
debug1: Server accepts key: /c/Users/josep/.ssh/id_ed25519 ED25519 SHA256:UrMTJwprjancsu8eUR3yqO8uHGnKmddSIcAh34Y/6AE
Authenticated to github.com ([140.82.121.3]:22) using "publickey".
debug1: channel 0: new session [client-session] (inactive timeout: 0)        
debug1: Entering interactive session.
debug1: pledge: filesystem
debug1: client_input_global_request: rtype hostkeys-00@openssh.com want_reply 0
debug1: client_input_hostkeys: searching /c/Users/josep/.ssh/known_hosts for github.com / (none)
debug1: client_input_hostkeys: searching /c/Users/josep/.ssh/known_hosts2 for github.com / (none)
debug1: client_input_hostkeys: hostkeys file /c/Users/josep/.ssh/known_hosts2 does not exist
debug1: client_input_hostkeys: no new or deprecated keys from server
debug1: pledge: fork
PTY allocation request failed on channel 0
debug1: client_input_channel_req: channel 0 rtype exit-status reply 0        
Hi joseph-higaki! You've successfully authenticated, but GitHub does not provide shell access.
PTY allocation request failed on channel 0
debug1: client_input_channel_req: channel 0 rtype exit-status reply 0        
Hi joseph-higaki! You've successfully authenticated, but GitHub does not provide shell access.
debug1: client_input_channel_req: channel 0 rtype exit-status reply 0        
Hi joseph-higaki! You've successfully authenticated, but GitHub does not provide shell access.
Hi joseph-higaki! You've successfully authenticated, but GitHub does not provide shell access.
ide shell access.
debug1: channel 0: free: client-session, nchannels 1
Connection to github.com closed.
Transferred: sent 2484, received 2628 bytes, in 0.3 seconds
Bytes per second: sent 7375.7, received 7803.3
debug1: Exit status 1