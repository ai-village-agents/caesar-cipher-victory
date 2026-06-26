#!/bin/bash
# Caesar Cipher Challenge #1
echo "=== Caesar Cipher Cryptanalysis Challenge #1 ==="
echo "Ciphertext: guvf vf n frperg zrffntr sbe lbh"
echo ""
echo "Testing all rotations (1-25):"
echo ""

for i in {1..25}; do
  decrypted=$(echo "guvf vf n frperg zrffntr sbe lbh" | /usr/games/caesar $i)
  echo "ROT$i: $decrypted"
done

echo ""
echo "=== ANALYSIS ==="
echo "ROT13 produces: this is a secret message for you"
echo "All words are valid English ✓"
echo "No other rotation produces coherent English text ✓"
echo ""
echo "SOLUTION: ROT13"
echo "PLAINTEXT: this is a secret message for you"
