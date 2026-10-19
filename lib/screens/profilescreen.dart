import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ---------------- COVER PHOTO & PROFILE IMAGE ----------------
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Cover Image
                Container(
                  height: 220,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(16)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1519681393784-d120267933ba?ixlib=rb-4.0.3&auto=format&fit=crop&w=1470&q=80",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(16)),
                      color: Colors.black.withOpacity(0.25),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 40),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.menu, color: Colors.white, size: 28),
                        Row(
                          children: [
                            Icon(Icons.camera_alt_outlined,
                                color: Colors.white, size: 24),
                            SizedBox(width: 16),
                            Icon(Icons.search, color: Colors.white, size: 24),
                            SizedBox(width: 16),
                            Icon(Icons.more_vert,
                                color: Colors.white, size: 24),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Profile Picture
                Positioned(
                  bottom: -60,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 56,
                          backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.camera_alt,
                                color: Colors.white, size: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Dropdown Icon
                Positioned(
                  top: 170,
                  right: 20,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: const Icon(Icons.keyboard_arrow_down,
                            color: Colors.black, size: 20),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 70),

            // ---------------- PROFILE NAME & INFO ----------------
            const Text(
              "Sam Dy",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text("3 posts",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            const SizedBox(height: 8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 18, color: Colors.grey),
                SizedBox(width: 4),
                Text("Iloilo City",
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 16),

            // ---------------- ACTION BUTTONS ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle_outline, size: 18),
                      label: const Text("Add to story"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit, size: 18),
                      label: const Text("Edit profile"),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black87,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // ---------------- PRIVACY NOTICE ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.lock_person,
                        size: 22, color: Colors.black54),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("You locked your profile",
                              style: TextStyle(fontSize: 14)),
                          const SizedBox(height: 2),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 20),
                            ),
                            child: const Text("Learn more",
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 13)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // ---------------- PROFILE TABS ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade50,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                          ),
                          child: const Text("All",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(height: 4),
                        Container(height: 2, width: 24, color: Colors.blue),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Photos",
                          style: TextStyle(color: Colors.black54)),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Reels",
                          style: TextStyle(color: Colors.black54)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // ---------------- PERSONAL DETAILS SECTION ----------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Personal details",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit_outlined, size: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildDetailRow(
                      Icons.location_on, "Iloilo City, Philippines"),
                  _buildDetailRow(Icons.home, "Guimbal, Iloilo"),
                  _buildDetailRow(Icons.calendar_today, "August 4, 2020"),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // Helper widget for personal details rows
  Widget _buildDetailRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey.shade700),
          const SizedBox(width: 14),
          Text(text, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
