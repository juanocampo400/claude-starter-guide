#!/bin/bash
# Builds a standalone version of index.html with all assets
# (videos and SVGs) base64-encoded inline. The output is a single
# self-contained HTML file.

INPUT="index.html"
OUTPUT="claude-starter-guide.html"

python3 -c "
import base64, re, os

with open('$INPUT', 'r') as f:
    html = f.read()

def replace_video(match):
    filename = match.group(1)
    if not os.path.isfile(filename):
        print(f'  Warning: {filename} not found, skipping')
        return match.group(0)
    with open(filename, 'rb') as vf:
        b64 = base64.b64encode(vf.read()).decode('utf-8')
    print(f'  Embedded {filename} ({len(b64) // 1024} KB base64)')
    return f'src=\"data:video/mp4;base64,{b64}\"'

def replace_svg(match):
    attr = match.group(1)   # 'src' or 'href'
    filename = match.group(2)
    if not os.path.isfile(filename):
        print(f'  Warning: {filename} not found, skipping')
        return match.group(0)
    with open(filename, 'rb') as sf:
        b64 = base64.b64encode(sf.read()).decode('utf-8')
    print(f'  Embedded {filename} ({len(b64) // 1024} KB base64)')
    return f'{attr}=\"data:image/svg+xml;base64,{b64}\"'

print('Building standalone HTML...')
html = re.sub(r'src=\"([^\"]+\.mp4)\"', replace_video, html)
html = re.sub(r'(src|href)=\"([^\"]+\.svg)\"', replace_svg, html)

with open('$OUTPUT', 'w') as f:
    f.write(html)

size = os.path.getsize('$OUTPUT')
print(f'Done: {\"$OUTPUT\"} ({size / (1024*1024):.1f} MB)')
"
