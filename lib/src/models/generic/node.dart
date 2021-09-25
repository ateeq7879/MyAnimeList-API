/* 
 * Copyright (C) 2021 Real Phoenix <https://github.com/rsktg>
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */

import 'package:json_annotation/json_annotation.dart';

import '../anime/anime.dart';
import '../manga/manga.dart';
import '../../helpers/date_conversion.dart';
import 'alternative_titles.dart';
import 'genre.dart';
import 'main_picture.dart';
import 'picture.dart';
import 'recommendation.dart';
import 'relation.dart';
import '../anime/broadcast.dart';
import '../anime/my_list_status.dart';
import '../anime/start_season.dart';
import '../anime/statistics.dart';
import '../anime/studio.dart';

part 'node.g.dart';

/// [Anime] or [Manga] object with minimal fields.
///
/// Returned by most methods.
/// Use [id] to get the full [Anime] or [Manga] object, if necessary.
@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class Node {
  final int id;
  final String title;
  final MainPicture mainPicture;
  final double mean;
  final String status;
  final int numEpisodes;
  final String background;

  Node(this.id, this.title, this.mainPicture, this.mean, this.status,
      this.numEpisodes, this.background);

  factory Node.fromJson(Map<String, dynamic> json) {
    return _$NodeFromJson(json);
  }
}
