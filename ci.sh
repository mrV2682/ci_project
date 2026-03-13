#! /bin/bash
set -e

echo "================================================"
echo "Starting CI pipeline..."
echo "================================================"
# Step 1: Install dependencies
echo "Installing dependencies..."
pip install -r requirements.txt

# Step 2: Running lint check
echo "Running lint check..."
flake8 src

# Step 3: Running unit tests
echo "Running unit tests..."
python -m pytest \
    --cov=src \
    --cov-report=term \
    --cov-report=html:reports/coverage \
    --junitxml=reports/test-report.xml \
    --json-report \
    --json-report-file=reports/test-report.json

echo "================================================"
echo "CI pipeline completed successfully!"
echo "================================================"
