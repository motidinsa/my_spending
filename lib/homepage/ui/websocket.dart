import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
class WebSocketDemo extends StatefulWidget {
  @override
  _WebSocketDemoState createState() => _WebSocketDemoState();
}

class _WebSocketDemoState extends State<WebSocketDemo> {
  // Replace with the URL of your WebSocket server
  late WebSocketChannel channel;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize WebSocket connection
    channel = WebSocketChannel.connect(Uri.parse('wss://echo.websocket.events')); // Example Echo Server
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebSocket Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Enter message',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    if (controller.text.isNotEmpty) {
                      channel.sink.add(controller.text); // Send message to WebSocket
                      controller.clear();
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            StreamBuilder(
              stream: channel.stream, // Listen to WebSocket stream
              builder: (context, snapshot) {
                return Text(
                  snapshot.hasData
                      ? 'Received: ${snapshot.data}' // Display received message
                      : 'No data yet...',
                  style: TextStyle(fontSize: 16),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    channel.sink.close(status.normalClosure); // Close WebSocket connection
    controller.dispose();
    super.dispose();
  }
}