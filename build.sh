#!/bin/bash
set -e

# Install Dart SDK
echo "Installing Dart SDK..."
curl -fsSL https://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip -o /tmp/dart.zip
unzip -qo /tmp/dart.zip -d /opt
export PATH="/opt/dart-sdk/bin:$HOME/.pub-cache/bin:$PATH"

# Verify dart
dart --version

# Get dependencies
dart pub get

# Activate jaspr CLI
dart pub global activate jaspr_cli

# Build the site
jaspr build

echo "Build complete!"
