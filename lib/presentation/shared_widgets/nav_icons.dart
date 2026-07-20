import 'package:flutter/widgets.dart';

/// Hand-painted line icons recreating the inline SVGs from the design
/// mockup (house/tag/archive-box tab icons, and the row chevron) — kept as
/// `CustomPainter`s instead of pulling in an icon package, since the
/// mockup only needs these four exact glyphs. Corner arcs in the source
/// SVGs (1-2px radius on a 24px viewBox) are drawn as sharp corners; at the
/// ~20px render size the difference is imperceptible.
class _LinePainter extends CustomPainter {
  _LinePainter(
    this.path, {
    required this.color,
    required this.viewBoxSize,
    this.strokeWidth = 1.6,
  });

  final Path Function(double scale) path;
  final Color color;
  final double viewBoxSize;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / viewBoxSize;
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth * scale
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(path(scale), paint);
  }

  @override
  bool shouldRepaint(covariant _LinePainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.strokeWidth != strokeWidth;
}

Path _scaled(double scale, List<Offset> points, {bool close = false}) {
  final path = Path()..moveTo(points.first.dx * scale, points.first.dy * scale);
  for (final p in points.skip(1)) {
    path.lineTo(p.dx * scale, p.dy * scale);
  }
  if (close) path.close();
  return path;
}

class HomeNavIcon extends StatelessWidget {
  const HomeNavIcon({super.key, required this.color, this.size = 20});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: _LinePainter(
        (scale) => _scaled(scale, const [
          Offset(4, 10.5),
          Offset(12, 4),
          Offset(20, 10.5),
          Offset(20, 20),
          Offset(19, 21),
          Offset(15, 21),
          Offset(14, 20),
          Offset(14, 16),
          Offset(10, 16),
          Offset(10, 20),
          Offset(9, 21),
          Offset(5, 21),
          Offset(4, 20),
          Offset(4, 10.5),
        ]),
        color: color,
        viewBoxSize: 24,
      ),
    );
  }
}

class CategoriesNavIcon extends StatelessWidget {
  const CategoriesNavIcon({super.key, required this.color, this.size = 20});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: _TagPainter(color: color),
    );
  }
}

class _TagPainter extends CustomPainter {
  _TagPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / 24;
    final outline = _scaled(scale, const [
      Offset(11, 4),
      Offset(6, 4),
      Offset(4, 6),
      Offset(4, 11),
      Offset(13.5, 20.5),
      Offset(16.3, 20.5),
      Offset(21.5, 15.3),
      Offset(21.5, 12.5),
      Offset(12, 4),
    ], close: true);
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6 * scale
      ..strokeJoin = StrokeJoin.round;
    canvas.drawPath(outline, strokePaint);
    canvas.drawCircle(
      Offset(8 * scale, 9 * scale),
      1.4 * scale,
      Paint()..color = color,
    );
  }

  @override
  bool shouldRepaint(covariant _TagPainter oldDelegate) =>
      oldDelegate.color != color;
}

class ArchiveNavIcon extends StatelessWidget {
  const ArchiveNavIcon({super.key, required this.color, this.size = 20});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.square(size),
      painter: _ArchivePainter(color: color),
    );
  }
}

class _ArchivePainter extends CustomPainter {
  _ArchivePainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final scale = size.width / 24;
    final strokePaint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6 * scale
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final lid = RRect.fromRectAndRadius(
      Rect.fromLTWH(3.5 * scale, 5 * scale, 17 * scale, 4 * scale),
      Radius.circular(1 * scale),
    );
    canvas.drawRRect(lid, strokePaint);

    final body = _scaled(scale, const [
      Offset(4.5, 9.5),
      Offset(4.5, 17),
      Offset(6.5, 19),
      Offset(17.5, 19),
      Offset(19.5, 17),
      Offset(19.5, 9.5),
    ]);
    canvas.drawPath(body, strokePaint);

    canvas.drawLine(
      Offset(10 * scale, 13 * scale),
      Offset(14 * scale, 13 * scale),
      strokePaint,
    );
  }

  @override
  bool shouldRepaint(covariant _ArchivePainter oldDelegate) =>
      oldDelegate.color != color;
}

/// The trailing chevron used on task rows and category cards.
class ChevronIcon extends StatelessWidget {
  const ChevronIcon({
    super.key,
    this.color = const Color(0x80CFD3E5),
    this.size = 8,
  });

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * 1.75),
      painter: _LinePainter(
        (scale) =>
            _scaled(scale, const [Offset(1, 1), Offset(7, 7), Offset(1, 13)]),
        color: color,
        viewBoxSize: 8,
        strokeWidth: 1.6,
      ),
    );
  }
}
