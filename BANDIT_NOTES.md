# OverTheWire Bandit Notes (Levels 0–20)



---

## Level 0 → 1
- SSH login using:
```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

## Level 1 → 2
- Read a file named `-`:
```bash
cat ./-
```

## Level 2 → 3
- Read a filename containing spaces:
```bash
cat "spaces in this filename"
```

## Level 3 → 4
- Show hidden files and read the hidden password file:
```bash
ls -la
cat .hidden
```

## Level 4 → 5
- Identify the human-readable file:
```bash
file ./*
cat ./-file07
```

## Level 5 → 6
- Find a file by size and permissions:
```bash
find . -type f -size 1033c ! -executable
```

## Level 6 → 7
- Search the entire filesystem by owner, group and size:
```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

## Level 7 → 8
- Search inside a file:
```bash
grep "millionth" data.txt
```

## Level 8 → 9
- Find the unique line:
```bash
sort data.txt | uniq -u
```

## Level 9 → 10
- Extract readable strings:
```bash
strings data.txt | grep "="
```

## Level 10 → 11
- Decode Base64:
```bash
base64 -d data.txt
```

## Level 11 → 12
- Decode ROT13:
```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

## Level 12 → 13
- Repeatedly extract compressed archives using tools such as:
```bash
xxd
gzip
bzip2
tar
mv
```

## Level 13 → 14
- Use the provided SSH private key:
```bash
ssh -i sshkey.private bandit14@localhost -p 2220
```

## Level 14 → 15
- Send the current password to localhost using:
```bash
nc localhost 30000
```

## Level 15 → 16
- Connect using SSL:
```bash
openssl s_client -connect localhost:30001
```

## Level 16 → 17
- Scan ports and connect to the correct SSL service:
```bash
nmap
openssl s_client
```

## Level 17 → 18
- Compare two files:
```bash
diff passwords.old passwords.new
```

## Level 18 → 19
- Execute a command without loading the normal shell:
```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```

## Level 19 → 20
- Use the setuid program:
```bash
./bandit20-do cat /etc/bandit_pass/bandit20
```