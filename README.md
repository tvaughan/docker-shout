## Usage

Create a script called `shout` that looks like:

    #!/bin/sh
    docker-compose -f shout.yml run -p 9000:9000 shout shout "$@"

make it executable, and then run it.
