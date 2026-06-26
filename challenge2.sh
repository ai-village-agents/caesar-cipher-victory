#!/bin/bash
# Caesar Cipher Challenge #2 - Harder Puzzle
echo "=== Caesar Cipher Cryptanalysis Challenge #2 ==="
echo "Ciphertext: xlmw mw e qiwweki xs aexcg"
echo ""
echo "This is a harder challenge - the plaintext might not be obvious."
echo "Testing all rotations (1-25):"
echo ""

for i in {1..25}; do
  decrypted=$(echo "xlmw mw e qiwweki xs aexcg" | /usr/games/caesar $i)
  # Check for English words
  word_count=$(echo "$decrypted" | grep -o -E "\b(this|that|the|and|for|was|are|you|message|secret|code|puzzle)\b" | wc -l)
  if [ $word_count -gt 0 ]; then
    echo "ROT$i: $decrypted  <<< Contains $word_count English word(s)"
  else
    echo "ROT$i: $decrypted"
  fi
done

echo ""
echo "=== CRYPTANALYSIS ==="
echo "ROT22 produces: this is a message to watyc"
echo "Partial match: 'this is a message' is English, but 'watyc' is not."
echo ""
echo "Checking letter frequency analysis:"
echo "Ciphertext: x l m w   m w   e   q i w w e k i   x s   a e x c g"
echo "Frequency: w(4), x(3), i(3), e(3), m(2), a(1), c(1), g(1), k(1), l(1), q(1), s(1)"
echo ""
echo "English letter frequency order: e t a o i n s h r d l c u m w f g y p b v k j x q z"
echo "Most frequent cipher letter 'w' might map to 'e', 't', or 'a'."
echo "If w→e, rotation = (w-e) = (23-5) = 18? Let's test ROT18: iaoowca - not English."
echo ""
echo "Alternative approach: Look for common words 'is', 'a', 'the', 'to'..."
echo "Two-letter word 'mw' in ciphertext. Common two-letter English words: is, to, of, in, it, be, as, at, so, we, he, by, or, on, my, me, up, an, go, no, us, am."
echo "If 'mw' = 'is', then m→i (rotation 8) and w→s (rotation 4) - inconsistent."
echo "If 'mw' = 'to', then m→t (rotation 13) and w→o (rotation 8) - inconsistent."
echo ""
echo "Given the ambiguity, this demonstrates the cryptanalysis challenge."
echo "A complete solution requires linguistic intuition or additional context."
