#!/bin/sh

function_memory(){
    #perintah untuk menampilkan  jumlah memory
    free -m
    printf "\n" 
}

function_fs_gb(){
    #perintah untuk menampilkan ruang disk dalam satuan GB
    df -BG
    printf "\n"
}

function_fs_custom(){
    #menampilkan kolom fs & use(percent)
    df -h --output=source,pcent -x 'tmpfs'
    printf "\n"
}

#menggunakan looping
while true
do
    printf "\n\nUkuran memori (MB)\n\n"
    #menampilkan fungsi memory
    function_memory
    #delay 3 detik akan menampilkan kembali fungsi tersebut
    sleep 3s
    
    printf "\n\nUkuran ruang filesystem(GB)\n\n"
    function_fs_gb
    sleep 3s

    printf "\n\nUkuran ruang filesystem untuk kolom Filesystem dan use\n\n"
    function_fs_custom
    #delay 1 menit untuk menjalankan fungsi ini
    sleep 1m

done
