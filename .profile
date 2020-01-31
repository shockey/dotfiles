###### https://gist.github.com/airtonix/9925531
##### Imports npm bin directories to $PATH

export GITHUB_TOKEN=602f71fee71bce1d89ec165f759ad89805045d62
export PATH=$HOME/bin:$PATH

ORIGINAL_PATH=$PATH

function build_path {
	export PATH=$(npm bin):$ORIGINAL_PATH
}

#this line causes the PATH to be regenerated each time a new 
# prompt is printed to the screen
PROMPT_COMMAND=build_path


export PATH="$HOME/.cargo/bin:$PATH"
