#!/bin/bash

echo "=== PortFind - Network Diagnostic Tool ==="
echo "Checking open ports..."

# Utilisation de netstat ou ss pour scanner les ports actifs
if command -v ss &> /dev/null; then
    ss -tuln
elif command -v netstat &> /dev/null; then
    netstat -tuln
else
    echo "Error: Neither ss nor netstat found."
fi