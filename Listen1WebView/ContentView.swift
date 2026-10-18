import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        Listen1WebView()
            .ignoresSafeArea()
    }
}

struct Listen1WebView: UIViewRepresentable {
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.bounces = false

        if let url = URL(string: "https://listen1.github.io/listen1/") {
            webView.load(URLRequest(url: url))
        }

        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}
}

#Preview {
    ContentView()
}
