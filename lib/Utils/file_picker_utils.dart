import 'package:file_picker/file_picker.dart';

///Image picker function
Future<String> pickProfileImage({FileType? type}) async {
  //Picked Image For Products

  FilePickerResult? result = await FilePicker.platform
      .pickFiles(type: type!, allowCompression: true);

  if (result != null) {
    final String? files = result.files.single.path;
    return files!;
  } else {
    // User canceled the picker
    // print("File Picked canceled");
    return '';
  }
}
