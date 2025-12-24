#!/bin/bash
# Test script to verify Ghostty terminal configuration

echo "=== Ghostty Terminal Configuration Test ==="
echo

echo "Current terminal info:"
echo "TERM: $TERM"
echo "TERM_PROGRAM: $TERM_PROGRAM" 
echo "COLORTERM: $COLORTERM"
echo

echo "Testing colors (256-color palette):"
for i in {0..15}; do
    printf "\e[48;5;${i}m  \e[0m"
    if (( (i + 1) % 8 == 0 )); then echo; fi
done
echo

echo "Testing truecolor support:"
printf "\e[38;2;255;100;0mTruecolor Orange\e[0m "
printf "\e[38;2;0;255;100mTruecolor Green\e[0m "
printf "\e[38;2;100;0;255mTruecolor Blue\e[0m\n"
echo

echo "Testing control characters:"
printf "Bold: \e[1mText\e[0m\n"
printf "Italic: \e[3mText\e[0m\n" 
printf "Underline: \e[4mText\e[0m\n"
printf "Strikethrough: \e[9mText\e[0m\n"
echo

echo "Testing cursor positioning:"
printf "Line 1\n"
printf "\e[1A\e[20CInserted at column 20\n"
printf "Line 2\n"
echo

echo "Testing unicode characters:"
printf "Box drawing: ┌─┐│└─┘\n"
printf "Arrows: ← ↑ → ↓ ↕ ↔\n"
printf "Emoji: 🚀 ✨ 🎯 📦\n"
echo

echo "=== Test complete ==="
echo "If you see proper colors, formatting, and characters, Ghostty is working correctly!"