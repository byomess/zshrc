# Source script if the path exists
function xsource() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

# Prepend a directory to the PATH environment variable
function xpath() {
  case ":$1:" in
    *$PATH*) ;;
    *) export PATH="$1:$PATH" ;;
  esac
}

# Prepend a directory to the FPATH environment variable
function xfpath() {
  case ":$1:" in
    *$FPATH*) ;;
    *) export FPATH="$1:$FPATH" ;;
  esac
}