# If yarn isn't installed this will be an empty string
YARNBIN=$(yarn global bin 2> /dev/null)

if [ -d "$YARNBIN" ] ; then
    PATH="$YARNBIN:$PATH"
fi
