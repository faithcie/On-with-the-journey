DB_USER="postgres"
DB_NAME="xulab_enrollment"
DB_HOST="localhost"
DB_PORT="5432"

CREATE_SCRIPT="create_tables.sql"
INPUT_SCRIPT="insert_data.sql"

psql -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" -d postgres -f "$CREATE_SCRIPT"

psql -U "$DB_USER" -h "$DB_HOST" -p "$DB_PORT" -d "$DB_NAME" -f "$INPUT_SCRIPT"

echo "EZDZ"
