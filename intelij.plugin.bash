cite intelij-plugin
about-plugin 'open intelij from the cli'

function intelij ()
{
        open -na "IntelliJ IDEA.app" --args "$@"
}