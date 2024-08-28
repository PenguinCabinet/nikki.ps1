# CONFIG START
$nikki_dir_path="日記"
$nikki_format="yyyy年MM月dd日"
$nikki_extension="txt"
# CONFIG END



if((Test-Path $nikki_dir_path) -eq "True"){
 	
}else{
	New-Item $nikki_dir_path -ItemType Directory
}

$today_nikki_path=(Join-Path $nikki_dir_path ((Get-Date -Format $nikki_format)+"."+$nikki_extension))

if((Test-Path $today_nikki_path) -eq "True"){
 	
}else{
	New-Item $today_nikki_path
}

Invoke-Item $today_nikki_path