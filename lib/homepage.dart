import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xfff5f7fa),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: Colors.blue.shade700,
        title: const Text(
          'Row and Column',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onSelected: (value) {
              print("Selected: $value");
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: "message", child: Text("Messages")),
              PopupMenuItem(value: "updates", child: Text("Updates")),
              PopupMenuItem(value: "settings", child: Text("Settings")),
            ],
          ),
        ],
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ---------- First Card Group ----------
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Containers',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(child: _buildSmallBox("Box 1", Icons.cabin)),
                        const SizedBox(width: 10),
                        Expanded(child: _buildSmallBox("Box 2", Icons.backpack)),
                        const SizedBox(width: 10),
                        Expanded(child: _buildSmallBox("Box 3", Icons.eco)),
                        const SizedBox(width: 10),
                         ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // ---------- Second Card List ----------
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'List Items',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    _buildListCard("Text 1"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 2"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 3"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 4"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 5"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 6"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 7"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 8"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 9"),
                    const SizedBox(height: 12),
                    _buildListCard("Text 10"),
                    const SizedBox(height: 12)
                  ],
                ),
              ),

              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Small Box Widget ----------
  Widget _buildSmallBox(String title, IconData icon) {
    return SizedBox(
      width: 95,
      height: 110,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Colors.blue.shade700),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  // ---------- List Card Widget ----------
  Widget _buildListCard(String text) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 14),
        child: Row(
          children: [
            Icon(Icons.label_important, color: Colors.blue.shade700),
            const SizedBox(width: 14),
            Expanded(child: Text(text, style: const TextStyle(fontSize: 15))),
          ],
        ),
      ),
    );
  }
}
