# OS File Copy Automation (Bash + MS-DOS Batch)

File copy automation using **Bash** (Linux/macOS) and **MS-DOS Batch** (Windows).  
This repository contains two small scripts that copy a folder from a **source** path to a **destination** path, with basic validation and overwrite confirmation.

> University / Operating Systems coursework project.

---

## Repository Structure

```
OS ASSIGNMENT/
  ├─ 2191136.bat
  ├─ bash 2191136.txt
  └─ Operating System Report.docx
```

---

## Features

### Windows (Batchfile)
- Prompts user for:
  - source folder path
  - destination folder path
- Validates that the **source exists**
- If destination exists, asks whether to **overwrite**
- Copies directories recursively using `xcopy`

### Linux/macOS (Bash)
- Supports two modes:
  1. **Interactive mode** (prompts for source & destination)
  2. **File-driven mode** (reads source/destination pairs from an input file)
- Validates that the **source directory exists**
- If destination exists, asks whether to **overwrite** and removes the destination folder before copying
- Copies directories recursively using `cp -r`

---

## Requirements

### Windows Script
- Windows CMD (Command Prompt)
- `xcopy` available (typically included in Windows)

### Bash Script
- Bash shell
- Core utilities: `cp`, `rm`, `cut`

---

## Usage

## 1) Windows (Batch) — `2191136.bat`

### Run
1. Open **Command Prompt**
2. Navigate to the script directory
3. Run:

```bat
2191136.bat
```

### Example workflow
- Enter the source folder (e.g., `C:\Users\YourName\Desktop\source`)
- Enter the destination folder (e.g., `D:\backup\source`)
- If destination exists, choose whether to overwrite

---

## 2) Linux/macOS (Bash) — `bash 2191136.txt`

### Recommended: rename to `.sh`
For clarity, you can rename it:
```bash
mv "bash 2191136.txt" copy_files.sh
chmod +x copy_files.sh
```

### A) Interactive Mode
```bash
./copy_files.sh
```
You will be prompted for:
- source folder path
- destination folder path

### B) Input-file Mode
```bash
./copy_files.sh input.txt
```

#### Input file format
Each line should contain:
```
<source_path> <destination_path>
```

Example:
```
/home/user/source1 /home/user/backup1
/home/user/source2 /home/user/backup2
```

---

## Notes / Limitations (Current Implementation)

- In the Bash script’s input-file mode, the script parses `src` and `dest`, but calls the copy function using `source` and `destination` variables instead of `src` and `dest`. That means the input-file mode may not work as intended without a small fix.
- Paths containing spaces may require additional quoting/handling (especially in Bash).

If you want, I can also propose a cleaned-up version of the Bash script (proper quoting, correct variable usage, safer copy options), while keeping behavior consistent with your report.

---

## Report

The full project report is included here:

- `OS ASSIGNMENT/Operating System Report.docx`

---

## Author

- **Aadithyan27**

---

## License

Add a license if your university/project requirements allow it (e.g., MIT). If you tell me what license you want (or if you want “All rights reserved”), I can update this section accordingly.
