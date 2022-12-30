import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:ytm_client/ytm_client.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:harmonoid/core/playback.dart';
import 'package:harmonoid/state/mobile_now_playing_controller.dart';
import 'package:harmonoid/utils/rendering.dart';
import 'package:harmonoid/constants/language.dart';

import 'package:harmonoid/web/state/parser.dart';

List<PopupMenuItem<int>> webTrackPopupMenuItems(BuildContext context) => [
      PopupMenuItem(
        padding: EdgeInsets.zero,
        value: 1,
        child: ListTile(
          leading: Icon(Platform.isWindows
              ? FluentIcons.list_16_regular
              : Icons.queue_music),
          title: Text(
            Language.instance.ADD_TO_PLAYLIST,
            style:
                isDesktop ? Theme.of(context).textTheme.headlineMedium : null,
          ),
        ),
      ),
      PopupMenuItem(
        padding: EdgeInsets.zero,
        value: 2,
        child: ListTile(
          leading: Icon(
              Platform.isWindows ? FluentIcons.link_20_regular : Icons.link),
          title: Text(
            Language.instance.COPY_LINK,
            style:
                isDesktop ? Theme.of(context).textTheme.headlineMedium : null,
          ),
        ),
      ),
      PopupMenuItem(
        padding: EdgeInsets.zero,
        value: 0,
        child: ListTile(
          leading: Icon(
              Platform.isWindows ? FluentIcons.earth_20_regular : Icons.web),
          title: Text(
            Language.instance.OPEN_IN_BROWSER,
            style:
                isDesktop ? Theme.of(context).textTheme.headlineMedium : null,
          ),
        ),
      ),
      PopupMenuItem<int>(
        padding: EdgeInsets.zero,
        value: 3,
        child: ListTile(
          leading: Icon(Platform.isWindows
              ? FluentIcons.music_note_2_16_regular
              : Icons.music_note),
          title: Text(
            Language.instance.ADD_TO_NOW_PLAYING,
            style:
                isDesktop ? Theme.of(context).textTheme.headlineMedium : null,
          ),
        ),
      ),
      if (Platform.isAndroid || Platform.isIOS)
        PopupMenuItem<int>(
          padding: EdgeInsets.zero,
          value: 4,
          child: ListTile(
            leading: Icon(Platform.isWindows
                ? FluentIcons.share_16_regular
                : Icons.share),
            title: Text(
              Language.instance.SHARE,
              style:
                  isDesktop ? Theme.of(context).textTheme.headlineMedium : null,
            ),
          ),
        ),
      if (!isDesktop && !MobileNowPlayingController.instance.isHidden)
        PopupMenuItem<int>(
          padding: EdgeInsets.zero,
          child: SizedBox(height: 64.0),
        ),
    ];

Future<void> webTrackPopupMenuHandle(
  BuildContext context,
  dynamic item,
  int? result,
) async {
  switch (result) {
    case 0:
      {
        await launchUrl(
          item.uri,
          mode: LaunchMode.externalApplication,
        );
        break;
      }
    case 1:
      {
        if (item is Track) {
          await showAddToPlaylistDialog(
            context,
            Parser.track(item),
          );
        } else if (item is Video) {
          await showAddToPlaylistDialog(
            context,
            Parser.video(item),
          );
        }
        break;
      }
    case 2:
      {
        Clipboard.setData(ClipboardData(text: item.uri.toString()));
        break;
      }
    case 3:
      {
        if (item is Track) {
          Playback.instance.add([Parser.track(item)]);
        } else if (item is Video) {
          Playback.instance.add([Parser.video(item)]);
        }
        break;
      }
    case 4:
      {
        var result;
        if (item is Track) {
          result = Parser.track(item);
        } else if (item is Video) {
          result = Parser.video(item);
        }
        if (result != null) {
          Share.share('${result.trackName} • ${result.uri.toString()}');
        }
        break;
      }
  }
}
