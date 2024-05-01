// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdateUserStruct extends BaseStruct {
  UpdateUserStruct({
    ActiveRoleStruct? activeRole,
    String? birthdate,
    String? createdAt,
    String? email,
    String? firstName,
    String? gender,
    String? image,
    String? lastName,
    String? middleName,
    String? phoneNumber,
    String? uid,
  })  : _activeRole = activeRole,
        _birthdate = birthdate,
        _createdAt = createdAt,
        _email = email,
        _firstName = firstName,
        _gender = gender,
        _image = image,
        _lastName = lastName,
        _middleName = middleName,
        _phoneNumber = phoneNumber,
        _uid = uid;

  // "active_role" field.
  ActiveRoleStruct? _activeRole;
  ActiveRoleStruct get activeRole => _activeRole ?? ActiveRoleStruct();
  set activeRole(ActiveRoleStruct? val) => _activeRole = val;
  void updateActiveRole(Function(ActiveRoleStruct) updateFn) =>
      updateFn(_activeRole ??= ActiveRoleStruct());
  bool hasActiveRole() => _activeRole != null;

  // "birthdate" field.
  String? _birthdate;
  String get birthdate => _birthdate ?? '';
  set birthdate(String? val) => _birthdate = val;
  bool hasBirthdate() => _birthdate != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "middle_name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;
  bool hasMiddleName() => _middleName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;
  bool hasUid() => _uid != null;

  static UpdateUserStruct fromMap(Map<String, dynamic> data) =>
      UpdateUserStruct(
        activeRole: ActiveRoleStruct.maybeFromMap(data['active_role']),
        birthdate: data['birthdate'] as String?,
        createdAt: data['created_at'] as String?,
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        gender: data['gender'] as String?,
        image: data['image'] as String?,
        lastName: data['last_name'] as String?,
        middleName: data['middle_name'] as String?,
        phoneNumber: data['phone_number'] as String?,
        uid: data['uid'] as String?,
      );

  static UpdateUserStruct? maybeFromMap(dynamic data) => data is Map
      ? UpdateUserStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'active_role': _activeRole?.toMap(),
        'birthdate': _birthdate,
        'created_at': _createdAt,
        'email': _email,
        'first_name': _firstName,
        'gender': _gender,
        'image': _image,
        'last_name': _lastName,
        'middle_name': _middleName,
        'phone_number': _phoneNumber,
        'uid': _uid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'active_role': serializeParam(
          _activeRole,
          ParamType.DataStruct,
        ),
        'birthdate': serializeParam(
          _birthdate,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'middle_name': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
      }.withoutNulls;

  static UpdateUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdateUserStruct(
        activeRole: deserializeStructParam(
          data['active_role'],
          ParamType.DataStruct,
          false,
          structBuilder: ActiveRoleStruct.fromSerializableMap,
        ),
        birthdate: deserializeParam(
          data['birthdate'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middle_name'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UpdateUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UpdateUserStruct &&
        activeRole == other.activeRole &&
        birthdate == other.birthdate &&
        createdAt == other.createdAt &&
        email == other.email &&
        firstName == other.firstName &&
        gender == other.gender &&
        image == other.image &&
        lastName == other.lastName &&
        middleName == other.middleName &&
        phoneNumber == other.phoneNumber &&
        uid == other.uid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        activeRole,
        birthdate,
        createdAt,
        email,
        firstName,
        gender,
        image,
        lastName,
        middleName,
        phoneNumber,
        uid
      ]);
}

UpdateUserStruct createUpdateUserStruct({
  ActiveRoleStruct? activeRole,
  String? birthdate,
  String? createdAt,
  String? email,
  String? firstName,
  String? gender,
  String? image,
  String? lastName,
  String? middleName,
  String? phoneNumber,
  String? uid,
}) =>
    UpdateUserStruct(
      activeRole: activeRole ?? ActiveRoleStruct(),
      birthdate: birthdate,
      createdAt: createdAt,
      email: email,
      firstName: firstName,
      gender: gender,
      image: image,
      lastName: lastName,
      middleName: middleName,
      phoneNumber: phoneNumber,
      uid: uid,
    );
