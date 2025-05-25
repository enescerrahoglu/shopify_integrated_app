#!/bin/bash

if [ -z "$1" ]; then
    echo "Please enter a feature name! 🚨"
    exit 1
fi

FEATURE_NAME=$1
BASE_DIR="lib/features/$FEATURE_NAME"

# Klasörleri oluştur
mkdir -p "$BASE_DIR/data/data-source/request"
mkdir -p "$BASE_DIR/data/dto/response"
mkdir -p "$BASE_DIR/domain/model"
mkdir -p "$BASE_DIR/domain/repository"
mkdir -p "$BASE_DIR/presentation/view"
mkdir -p "$BASE_DIR/presentation/widget"
mkdir -p "$BASE_DIR/presentation/cubit"

# Dosyaları oluştur
echo "// $FEATURE_NAME Data Source" > "$BASE_DIR/data/data-source/${FEATURE_NAME}_data_source.dart"
echo "// $FEATURE_NAME Data DTO" > "$BASE_DIR/data/dto/${FEATURE_NAME}_data_dto.dart"
echo "// $FEATURE_NAME Repository" > "$BASE_DIR/domain/repository/${FEATURE_NAME}_repository.dart"

echo "$FEATURE_NAME feature structure has been created! 🚀"



# run
# chmod +x scripts/create_feature_structure.sh
# ./scripts/create_feature_structure.sh feature_name