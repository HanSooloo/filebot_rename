#!/bin/sh

LOGFILE=`date +%Y-%m-%d_%H-%M-%S`
FILEBOT_DIR="/root/FileBot"
JD_DIR="/mnt/JDownloader"
DOWNLOAD_DIR="${JD_DIR}/_01.Download_"
OUTPUT_DIR="${JD_DIR}/_02.Format_"
RENAME_FORMAT="/root/FormatMovie.txt"

${FILEBOT_DIR}/filebot.sh                     \
    ${DOWNLOAD_DIR}                           \
    -script fn:amc                            \
        -non-strict                           \
        -no-xattr                             \
    --output ${OUTPUT_DIR}                    \
    --action move                             \
    --log-file ${JD_DIR}/${LOGFILE}           \
    --db TheMovieDB                           \
    --def "movieFormat=@${RENAME_FORMAT}"
