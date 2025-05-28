# 🐚 Shell Scripting Concepts

This repository showcases essential concepts of Shell Scripting, useful for DevOps, system administrators, and automation engineers. It includes syntax, usage, and examples to help understand shell scripting fundamentals.

---

## 📘 What is Shell Scripting?

Shell scripting is a way to automate tasks in Unix/Linux using a sequence of shell commands stored in a file. These files are executed by shell interpreters like Bash.

---

## 📚 Topics Covered

### 1. 🧾 Basics of Shell Scripting
- `.sh` file is a shell script file.
- `#!` (shebang) defines which interpreter to use (`#!/bin/bash` for Bash).
- Run with `sh script.sh` or make it executable.

### 2. 🔐 Linux SSH Access
- SSH connects to servers securely.
- Use `.pem` for Linux/Git Bash, `.ppk` for PuTTY.
- Tools: Git Bash, PuTTY, MobaXterm, WinSCP.

### 3. 🧮 Variables and Arguments
- Assign values: `Fruit=Apple` (no spaces).
- Read values: `read Name`, `DATE=$(date)`.
- Positional arguments: `$1`, `$2`, `$@` (all), `$#` (count).

### 4. 📊 Data Types
- Default: strings.
- Integers: `$((NUMBER1 + NUMBER2))`.
- Arrays: `arr=(one two three)`.

#### Example:
```bash
Fruits=(Apple Banana Mango)
echo "First: ${Fruits[0]}"
```

### 5. 🔢 Exit Codes & Booleans
- `$?` stores exit code of last command.
- `0` = success, `1-127` = error.

### 6. ❓ Conditions
- `if`, `then`, `else`, `fi` used for branching logic.
- Example:
```bash
if [ $USERID -eq 0 ]; then
  echo "Root"
else
  echo "No root"
fi
```

### 7. 🔁 Functions
Reusable blocks of logic. Accepts arguments and uses exit codes.

#### Example:
```bash
Validate() {
  if [ $1 -ne 0 ]; then
    echo "$2..Failed"
    exit 1
  else
    echo "$2...Success"
  fi
}
```

### 8. 📤 Output Redirection
- `>` : overwrite stdout
- `>>` : append
- `2>` : stderr
- `&>` : both stdout and stderr---

## 📦 Standard Input, Output, and Error

| Stream | Name          | Description                      |
|--------|---------------|----------------------------------|
| stdin  | Standard Input| Usually the keyboard             |
| stdout | Standard Output| Normal output from commands      |
| stderr | Standard Error| Error messages from commands     |

```bash
command > file.txt     # stdout redirected to file
command 2> error.txt   # stderr redirected to error file
command &> all.txt     # stdout and stderr to same file
```

---

## 🔍 Useful Commands

| Command   | Purpose                               |
|-----------|----------------------------------------|
| `df`      | Disk space usage                       |
| `free`    | Memory usage                           |
| `top`     | Real-time system process monitoring    |
| `nproc`   | Number of available CPU cores          |

---

## 🧪 `set` Command Variants

| Command     | Use Case                                       |
|-------------|------------------------------------------------|
| `set -x`    | Show each command and its expanded arguments   |
| `set -e`    | Exit if any command fails                      |
| `set -o`    | Set various options (e.g., `set -o nounset`)   |

---

## 🔗 Pipe Operator `|`

- Used to **pass output of one command** as input to another.

```bash
ls -l | grep "txt"
```

---

## ⚠️ `trap` Command

Allows you to run custom commands when a signal is received (e.g., script exit, Ctrl+C).

```bash
trap "echo Cleaning up...; rm -f /tmp/tempfile" EXIT
trap "echo Interrupted!" SIGINT
```

To reset:
```bash
trap - SIGINT
```

Be cautious of malicious traps like:
```bash
trap "rm -rf *" SIGINT  # Dangerous: deletes all files if Ctrl+C is pressed
```

---

## 📁 `find` Command

```bash
find / -name "file.txt"      # Search by name
sudo find / 2>/dev/null      # Suppress permission errors
```

---

## 🕵️ `grep` vs `awk`

| Tool   | Best For                           |
|--------|------------------------------------|
| `grep` | Finding patterns in lines          |
| `awk`  | Field-based extraction, reporting  |

Example:
```bash
grep "error" logfile.txt
awk '{print $1, $3}' logfile.txt
```

---

## 🌐 `curl` vs `wget`

| Feature       | `curl`                      | `wget`                           |
|---------------|-----------------------------|----------------------------------|
| API support   | ✅ Yes                      | ❌ Limited                       |
| Download site | ❌ No                       | ✅ Yes (recursive download)     |
| Save file     | `-O` or `> file` needed     | Saves automatically              |
| Resume        | ❌ (scripted)               | ✅ `-c` to resume                 |

---

## ✅ Example: `curl` with API

```bash
curl -X GET https://api.github.com/users/octocat
```

---

## 🛑 Understanding `#!/bin/bash`, `#!/bin/sh`, `#!/bin/dash`

- `#!/bin/bash` → Full-featured Bash shell
- `#!/bin/sh` → May point to Bash or Dash (POSIX compliant)
- `#!/bin/dash` → Lightweight POSIX shell (used in Ubuntu `/bin/sh`)

Use `bash` for scripts with Bash-specific features.

---