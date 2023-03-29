#! /bin/sh

#fungsi untuk menampilkan disk usage untuk journal
function_show_journal(){
	sudo journalctl --disk-usage
	printf "\n\n"
}

#fungsi hapus journal log sampai 10MB
function_journal_mb(){
	sudo journalctl --vacuum-size=10M
	printf "\n\n"
}

while true
do
	printf "\n\nInformasi penggunaan Disk - Journal\n"
	function_show_journal
	printf "\n\n"
	sleep 3s
	
	printf "\n\nHapus Log hingga ruang disk log 10MB\n"
	function_journal_mb
	sleep 1m
done
