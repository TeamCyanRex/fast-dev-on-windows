#welcome

echo "nice to see you again!use 'lsmods' to check all modules!"

#aliases

#New-Alias py3 D:\Zeta_tools\py\python.exe
#New-Alias imdbg D:\Zeta_Tools\ImmunityDebugger\ImmunityDebugger.exe


#settings

#Import-Module oh-my-posh
#Set-PoshPrompt -Theme paradox

#modules

#about all >>>

function lsmods{
	echo "use 'lsmod <module name>' to see the module "
	echo "modules:"
	echo "windows"
	echo "rust"
	echo "git"
}

function lsmod {
	Param(
	[string] $chosen
	)
	$chosen="ls-"+$chosen
	&$chosen
}

function ls-windows{
	echo "windows module:"
	echo "sudo  (change to administrator)"
	echo "nip ( Use the netsh interface portproxy commands to act as proxies between IPv4 and IPv6 networks and applications.nip is abbreviation of  netsh interface portproxy )"
	echo "nip-show (show the config of nip)"
}

function ls-rust{
	echo "rust module:"
	echo "tors (cd to rust working directory)"
	echo "rsclear (clear cargo check cache to speed cargo check)"
	echo "rsbr (build this rust workspace by release mode)"
	echo "tauri-dbg (build this tauri workspace by debug mode)"
}

function ls-git{
	echo "git module:"
	echo "git-proxy-on-http (turn on global http proxy)"
	echo "git-proxy-on-socks (turn on global socks proxy)"
	echo "git-proxy-off (turn off global proxy)"
	echo "git-conf-check (show git global config)"
	echo "git-b (git branch)"
	echo "git-b-dev (git branch <your usually used git branch for dev>)"
	echo "git-br (git branch -r)"
	echo "git-cd-dev (git checkout <your usually used git branch for dev>)"
	echo "git-cd-main (git checkout main)"
	echo "git-m-dev (git merge <your usually used git branch for dev>)"
	echo "git-del-dev (git branch -d <your usually used git branch for dev>)"
	echo "git-cm <text> (args:$text;git commit -m $text)"
}

#all <<<
 
#about windows>>>

function sudo{
	Start-Process powershell -Verb runAs
}

function nip-show{
	netsh interface portproxy show all
}

function nip{
	netsh interface portproxy $args
}

#windows<<<


#about rust >>>

function tors{
	cd D:\LAB\Rust\
}

function rsclear{
	rm C:\Users\a\.cargo\.package-cache
}

function rsbr{
	cargo build --release 
}

function tauri-dbg{
	set RUST_DEBUG=1
	cargo tauri dev
}

#rust <<<


#about git >>>

function git-proxy-on-http{
	git config --global http.https://github.com.proxy http://127.0.0.1:1081
}
function git-proxy-on-socks{
	git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
	
}

function git-proxy-off{
	git config --global --unset http.https://github.com.proxy
}

function git-conf-check{
	git config --global -l
}

function git-b{
	git branch
}

function git-b-dev{
	git branch hex397-dev
}

function git-br{
	git branch -r
}

function git-cd-dev{
	git checkout hex397-dev	
}

function git-cd-main{
	git checkout main
}

function git-m-dev{
	git merge hex397-dev
}

function git-del-dev{
	git branch -d hex397-dev	
}

function git-cm{
	Param(
	[string] $text
	)
	 git commit -m $text

}

#git <<<
