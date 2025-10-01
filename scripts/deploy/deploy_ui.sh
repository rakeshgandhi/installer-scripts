ZIP_DIR="UI8008"
ZIP_FILE_NAME="$ZIP_DIR.zip"

rm -rf /opt/local/share/deploy/temp
mkdir -p /opt/local/share/deploy/temp


BASE_PATH="/opt/local/share"
EXTRACT_DIR="/opt/local/share/deploy/temp"
LOCAL_ZIP_PATH="$BASE_PATH/deploy/$ZIP_FILE_NAME"


# Extract the zip file
echo "Extracting zip file to: $EXTRACT_DIR"
unzip -o "$LOCAL_ZIP_PATH" -d "$EXTRACT_DIR"

# Extract the zip file
echo "Copying contents to: $EXTRACT_DIR"
rm -rf "$BASE_PATH/DoctorPayout-WebApp/"
mkdir -p "$BASE_PATH/DoctorPayout-WebApp"
cp -r $EXTRACT_DIR/$ZIP_DIR/* $BASE_PATH/DoctorPayout-WebApp -v

rm -rf /opt/local/share/deploy/temp