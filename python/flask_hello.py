#!/usr/bin/python3
from flask import Flask

app = Flask(__name__)
@app.route('/')
def image_lynx():
    return '<center><b>Hello, Lynx!</b><br><img src="http://erlan.pro:9000/state-terraform-s3/2020_02_16_protected_lynx_in_france.jpg?Content-Disposition=attachment%3B%20filename%3D%222020_02_16_protected_lynx_in_france.jpg%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minioadmin%2F20210630%2F%2Fs3%2Faws4_request&X-Amz-Date=20210630T182947Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=7a354fc7a22dc00a7d04203393d130e223c0af5f76afd4f8b1d38c1230c40a3e" alt="Lynx"></center>'

if __name__ == '__main__':
    app.run(host='0.0.0.0')