import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://jvkmtyoxcclkryubmnkh.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp2a210eW94Y2Nsa3J5dWJtbmtoIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcxMzA0NTUyMCwiZXhwIjoyMDI4NjIxNTIwfQ.0T2jL6fBqOb3d4MKBIy-wrLABiVh2-IZc8V40WkegrA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
