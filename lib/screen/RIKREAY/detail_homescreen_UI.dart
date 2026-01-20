import 'package:flutter/material.dart';

class DetailHomescreenUi extends StatelessWidget {
  const DetailHomescreenUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            _buildHeader(),
            SizedBox(height: 16),
            _buildFeelingBubble(),
            SizedBox(height: 16),
            _buildFeelingInput(),
            SizedBox(height: 20),
            _buildSelfCareSection(),
            SizedBox(
              height: 20,
            ),
            _buildBody(),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  _buildInsightCard(
                    title: 'Daily Check-in',
                    backgroundColor: Color(0xFFFADBD8),
                    icon: Icons.check_circle_outline,
                    onTap: () {
                      // print('Tapped on Daily Check-in!');
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  _buildInsightCard(
                    title: 'Daily Check-in',
                    backgroundColor: Color.fromARGB(255, 226, 217, 188),
                    icon: Icons.check_circle_outline,
                    onTap: () {
                      // print('Tapped on Daily Check-in!');
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  _buildInsightCard(
                    title: 'Daily Check-in',
                    backgroundColor: const Color.fromARGB(255, 213, 168, 135),
                    icon: Icons.check_circle_outline,
                    onTap: () {
                      // print('Tapped on Daily Check-in!');
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            _buildCustomBottomNav(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Good morning, Nix Zin II ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade700,
            ),
          ),
          Row(
            children: [
              Icon(Icons.volume_up_outlined,
                  size: 24, color: Colors.green.shade600),
              SizedBox(width: 12),
              Icon(Icons.settings_outlined,
                  size: 24, color: Colors.green.shade600),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFeelingBubble() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        "How are you feeling today? ",
        style: TextStyle(fontSize: 16, color: Colors.brown.shade600),
      ),
    );
  }

  Widget _buildFeelingInput() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Center(
        child: Text(
          "I'm feeling...",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }

  Widget _buildSelfCareSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Self Care",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade700,
            ),
          ),
        ),
        SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildSelfCareItem("Mood", Icons.sentiment_satisfied_alt_outlined),
            _buildSelfCareItem("Meditations", Icons.self_improvement),
            _buildSelfCareItem("Plants", Icons.local_florist),
            _buildSelfCareItem("Add More", Icons.add),
          ],
        ),
      ],
    );
  }

  Widget _buildSelfCareItem(String label, IconData icon) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.green.shade700, size: 24),
        ),
        SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Today's Suggestion",
            style: TextStyle(
              color: Colors.green.shade700,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(
                  255, 240, 252, 230), // Light green background
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Try a 5-min calming breath",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade800,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Based on your past 3 days",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade500,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    child: Text(
                      "Start Now",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(
                  255, 240, 252, 230), // Light green background
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.1),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCustomBottomNav() {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(Icons.home, true),
          _buildNavItem(Icons.search, false),
          _buildNavItem(Icons.add_circle_outline, false),
          _buildNavItem(Icons.favorite_border, false),
          _buildNavItem(Icons.person_outline, false),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, bool isActive) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: isActive
          ? BoxDecoration(
              color: Colors.green.withOpacity(0.15),
              shape: BoxShape.circle,
            )
          : null,
      child: Icon(
        icon,
        color: isActive ? Colors.green.shade600 : Colors.grey.shade600,
        size: 26,
      ),
    );
  }

  Widget _buildInsightCard({
    required String title,
    required Color backgroundColor,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.7),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  icon,
                  color: Colors.grey[600],
                  size: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
