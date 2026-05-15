/* import 'package:flutter/material.dart';

class Ratepage extends StatelessWidget {
  const Ratepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 220, 213),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: _buildEmojiButton(context, '😢', 'Triste')),
                    Expanded(
                      flex: 2,
                      child: _buildEmojiButton(context, '😊', 'Heureux'),
                    ),
                    Expanded(child: _buildEmojiButton(context, '🤩', 'Génial')),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              TextField(
                maxLength: 150,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Exprime toi par des mots...',
                  filled: true,
                  fillColor: const Color.fromRGBO(82, 159, 132, 0.3),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 55,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(53, 78, 82, 1),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Valider',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmojiButton(BuildContext context, String emoji, String label) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Vous avez choisi : $label $emoji')),
        );
      },
      borderRadius: BorderRadius.circular(50),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          emoji,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
*/
