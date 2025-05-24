#!/bin/bash

# Function to get file type based on the signature
get_file_type() {
    local signature=$1
    case $signature in
        "89504E47") echo "PNG";;
        "47494638") echo "GIF";;
        "25504446") echo "PDF";;
        "FFD8FFDB") echo "JPEG";;
        "FFD8FFE0") echo "JPEG";;
        "FFD8FFE1") echo "JPEG";;
        "504B0304") echo "ZIP/DOCX/JAR";;
        "52617221") echo "RAR";;
        "1F8B08") echo "GZIP";;
        "7F454C46") echo "ELF";;
        "3C21444F") echo "HTML";;
        "00000100") echo "ICO";;
        "4D5A") echo "EXE";;
        "494433") echo "MP3";;
        "52494646") echo "AVI/WAV";;
        "00000018") echo "ISO";;
        "377ABCAF") echo "7Z";;
        "D0CF11E0") echo "DOC/XLS";;
        "00000020") echo "MP4";;
        "49492A00") echo "TIFF";;
        "4D4D002A") echo "TIFF";;
        "425A68") echo "BZ2";;
        "1F9D") echo "TAR.Z";;
        "1FA0") echo "TAR.Z";;
        "4D546864") echo "MIDI";;
        "3026B275") echo "WMV";;
        "A0A0A0A0") echo "MSI";;
        "377ABCAF271C") echo "7Z";;
        "4C00000001140200") echo "LNK";;
        "38425053") echo "PSD";;
        "7B5C727466") echo "RTF";;
        "49443303") echo "MP3";;
        "FFFB") echo "MP3";;
        "66747970") echo "MP4/3GP";;
        "4F676753") echo "OGG";;
        "0000001C66747970") echo "MOV";;
        "FFD8FF") echo "JPEG";;
        *) echo "Unknown file type";;
    esac
}

# Check if a file was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# Read the first 8 bytes of the file
file=$1
signature=$(xxd -p -l 8 "$file" | tr 'a-f' 'A-F')

# Determine file type
file_type=$(get_file_type "${signature:0:8}")
echo "File signature: ${signature:0:8}"
echo "File type: $file_type"

