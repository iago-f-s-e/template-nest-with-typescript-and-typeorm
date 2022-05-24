test -f .env && (rm .env && > .env) || > .env

read -p 'Set default environment (Y|N): ' results

if [ "$results" == "y" ] || [ "$results" == "Y" ] 
  then 
    echo "### Server config ###" >> .env
    echo "NODE_ENV=development" >> .env
    echo "HOST=0.0.0.0" >> .env
    echo "PORT=8080" >> .env
    echo >> .env
    echo "### Auth config ###" >> .env
    echo "AUTH_KEY_SECURITY=secret" >> .env
    echo "AUTH_KEY_TOKEN_EXPIRES=300000" >> .env
    echo >> .env
    echo "### Database config ###" >> .env
    echo "DB_CONNECTION_NAME=app" >> .env
    echo "DB_HOST=localhost" >> .env
    echo "DB_PORT=5432" >> .env
    echo "DB_NAME=root" >> .env
    echo "DB_USER=root" >> .env
    echo "DB_PASS=root" >> .env
    echo >> .env
    echo "### Redis config ###" >> .env
    echo "REDIS_HOST=localhost" >> .env
    echo "REDIS_PORT=27017" >> .env
    echo >> .env
    echo "### TypeORM config ###" >> .env
    echo "TRANSFORMER_KEY_SECURITY=secret" >> .env
    echo "TRANSFORMER_KEY_IV=secret" >> .env

else 
  echo ""
  echo "### Server config ###"
  echo ""

  echo "### Server config ###" >> .env

  read -p 'Node environment (development): ' INPUT
    [ -z "$INPUT" ] && echo "NODE_ENV=development" >> .env || echo "NODE_ENV=$INPUT" >> .env

  read -p 'Server host (0.0.0.0): ' INPUT
    [ -z "$INPUT" ] && echo "HOST=0.0.0.0" >> .env || echo "HOST=$INPUT" >> .env


  read -p 'Server port (8080): ' INPUT
    [ -z "$INPUT" ] && echo "PORT=8080" >> .env || echo "PORT=$INPUT" >> .env

  echo >> .env
  echo ""
  echo "----------------------------"

  echo "### Auth config ###"
  echo ""

  echo "### Auth config ###" >> .env

  read -p 'Auth key security (secret): ' INPUT
    [ -z "$INPUT" ] && echo "AUTH_KEY_SECURITY=secret" >> .env || echo "AUTH_KEY_SECURITY=$INPUT" >> .env

  read -p 'Auth key expires (300000): ' INPUT
    [ -z "$INPUT" ] && echo "AUTH_KEY_TOKEN_EXPIRES=300000" >> .env || echo "AUTH_KEY_TOKEN_EXPIRES=$INPUT" >> .env

  echo >> .env
  echo ""
  echo "----------------------------"

  echo "### Database config ###"
  echo ""

  echo "### Database config ###" >> .env

  read -p 'Connection name (app): ' INPUT
    [ -z "$INPUT" ] && echo "DB_CONNECTION_NAME=app" >> .env || echo "DB_CONNECTION_NAME=$INPUT" >> .env

  read -p 'Database Server host (localhost): ' INPUT
    [ -z "$INPUT" ] && echo "DB_HOST=localhost" >> .env || echo "DB_HOST=$INPUT" >> .env

  read -p 'Database Server port (5432): ' INPUT
    [ -z "$INPUT" ] && echo "DB_PORT=5432" >> .env || echo "DB_PORT=$INPUT" >> .env

  read -p 'Database Server database (root): ' INPUT
    [ -z "$INPUT" ] && echo "DB_NAME=root" >> .env || echo "DB_NAME=$INPUT" >> .env

  read -p 'Database Server user (root): ' INPUT
    [ -z "$INPUT" ] && echo "DB_USER=root" >> .env || echo "DB_USER=$INPUT" >> .env

  read -sp 'Database Server password (root): ' INPUT
    [ -z "$INPUT" ] && echo "DB_PASS=root" >> .env || echo "DB_PASS=$INPUT" >> .env

  echo >> .env
  echo ""
  echo "----------------------------"

  echo "### Redis config ###"
  echo ""

  echo "### Redis config ###" >> .env

  read -p 'Redis host (localhost): ' INPUT
    [ -z "$INPUT" ] && echo "REDIS_HOST=localhost" >> .env || echo "REDIS_HOST=$INPUT" >> .env

  read -p 'Redis port (6379): ' INPUT
    [ -z "$INPUT" ] && echo "REDIS_PORT=6379" >> .env || echo "REDIS_PORT=$INPUT" >> .env

  echo >> .env
  echo ""
  echo "----------------------------"

  echo "### TypeORM config  ###"
  echo ""

  echo "### TypeORM config ###" >> .env

  read -p 'Transformer key security (secret): ' INPUT
    [ -z "$INPUT" ] && echo "TRANSFORMER_KEY_SECURITY=localhost" >> .env || echo "TRANSFORMER_KEY_SECURITY=$INPUT" >> .env

  read -p 'Transformer key IV (secret): ' INPUT
    [ -z "$INPUT" ] && echo "TRANSFORMER_KEY_IV=secret" >> .env || echo "TRANSFORMER_KEY_IV=$INPUT" >> .env

  echo >> .env
  echo ""
  echo "----------------------------"
fi


echo "Successfully!!"
echo ""