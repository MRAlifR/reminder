// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/translation.dart';

export 'package:flutter_gen/gen_l10n/translation.dart';

extension TranlationExtension on BuildContext {
  Translation get tr => Translation.of(this);
}
