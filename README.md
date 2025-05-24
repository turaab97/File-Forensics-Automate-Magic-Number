# File-Forensics-Automate-Magic-Number
A Bash script to automate file type detection via magic number analysis. Ideal for quick file forensics to identify unknown or mislabeled files.  Features  Read and parse magic numbers from file headers  Support common file types: JPEG, PNG, GIF, PDF, ZIP, ELF, and more.
File Analyzer

A Bash script to automate file type detection via magic number analysis. Ideal for quick file forensics to identify unknown or mislabeled files.

Features

Read and parse magic numbers from file headers

Support common file types: JPEG, PNG, GIF, PDF, ZIP, ELF, and more

Batch processing of multiple files

Human-readable and machine-friendly output

Prerequisites

Bash (tested on GNU Bash)

xxd or hexdump

(Optional) file command for fallback detection

Installation

Clone the repo:

git clone https://github.com/<your-username>/file-analyzer.git
cd file-analyzer
chmod +x file-analyzer.sh

Usage

./file-analyzer.sh [FILE]...

Options

-h, --help: Show help message

-v, --verbose: Enable verbose output

Examples

Analyze a single file:

./file-analyzer.sh secret.bin
# Output: secret.bin: PNG image (via magic number 89 50 4E 47)

Batch analyze:

./file-analyzer.sh *.dat

Contributing

Fork the repo (git fork)

Create your feature branch (git checkout -b feature/YourFeature)

Commit your changes (git commit -m 'Add awesome feature')

Push to the branch (git push origin feature/YourFeature)

Open a pull request

License

MIT © [Syed Ali Turab]

