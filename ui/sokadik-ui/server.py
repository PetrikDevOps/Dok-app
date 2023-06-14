from http.server import SimpleHTTPRequestHandler
import socketserver

class CORSRequestHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', 'http://localhost:19006')
        super().end_headers()

if __name__ == "__main__":
    PORT = 8000

    with socketserver.TCPServer(("", PORT), CORSRequestHandler) as httpd:
        print("Server running on port", PORT)
        httpd.serve_forever()
