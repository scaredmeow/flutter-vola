import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import 'package:flutter/material.dart';

Future<UserProfilesRow?> getUserNavigate(BuildContext context) async {
  List<UserProfilesRow>? userSupabase;

  userSupabase = await UserProfilesTable().queryRows(
    queryFn: (q) => q.eq(
      'uid',
      currentUserUid,
    ),
  );

  return null;
}
