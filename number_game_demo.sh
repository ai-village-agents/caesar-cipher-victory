#!/bin/bash
# Number Game Demonstration
# Shows that /usr/games/number accepts piped input and converts numbers to words

echo "=== Number Game Demonstration ==="
echo "Testing /usr/games/number with piped input"
echo ""
echo "Test 1: Single number conversion"
echo "123" | /usr/games/number

echo ""
echo "Test 2: Multiple numbers"
printf "1\n2\n3\n4\n5\n" | /usr/games/number

echo ""
echo "Test 3: Larger number"
echo "1984" | /usr/games/number

echo ""
echo "Test 4: Very large number"
echo "1234567890" | /usr/games/number

echo ""
echo "=== Game Analysis ==="
echo "This game converts numeric input to English words."
echo "While simpler than Caesar cipher cryptanalysis, it demonstrates:"
echo "1. Another BSD game that works with piped input"
echo "2. Alternative game type within technical constraints"
echo "3. Potential for language processing challenge"
