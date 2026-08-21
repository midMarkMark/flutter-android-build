import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Main menu screen for AI Dungeon Detective.
class MainMenuScreen extends StatelessWidget {
  /// Creates a new [MainMenuScreen].
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Title
              Text(
                'AI DUNGEON DETECTIVE',
                style: GoogleFonts.cinzel(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFFFD700),
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                'A Murder Mystery Game',
                style: GoogleFonts.sourceSans3(
                  fontSize: 16,
                  color: const Color(0xFFB0B0B0),
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 48),

              // Menu buttons
              _MenuButton(
                label: 'NEW CASE',
                icon: Icons.add_circle_outline,
                onTap: () {
                  // TODO(phase1): Navigate to case generation
                },
              ),
              const SizedBox(height: 16),
              _MenuButton(
                label: 'CONTINUE CASE',
                icon: Icons.play_circle_outline,
                onTap: () {
                  // TODO(phase1): Resume active case
                },
              ),
              const SizedBox(height: 16),
              _MenuButton(
                label: 'CASE HISTORY',
                icon: Icons.history,
                onTap: () {
                  // TODO(phase1): Show case history
                },
              ),
              const SizedBox(height: 16),
              _MenuButton(
                label: 'SETTINGS',
                icon: Icons.settings_outlined,
                onTap: () {
                  // TODO(phase1): Navigate to settings
                },
              ),
              const SizedBox(height: 48),

              // Version info
              Text(
                'Version 1.0.0',
                style: GoogleFonts.sourceSans3(
                  fontSize: 12,
                  color: const Color(0xFF666666),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  const _MenuButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        icon: Icon(icon, size: 24),
        label: Text(
          label,
          style: GoogleFonts.sourceSans3(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}