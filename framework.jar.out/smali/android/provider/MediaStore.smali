.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$FileExtensionColumns;,
        Landroid/provider/MediaStore$ImageExtensionColumns;,
        Landroid/provider/MediaStore$ThreeDimensionColumns;,
        Landroid/provider/MediaStore$ArtistExtensionColumns;,
        Landroid/provider/MediaStore$AlbumExtensionColumns;,
        Landroid/provider/MediaStore$PlaylistsExtensionColumns;,
        Landroid/provider/MediaStore$AudioExtensionColumns;,
        Landroid/provider/MediaStore$DrmColumns;,
        Landroid/provider/MediaStore$Streaming;,
        Landroid/provider/MediaStore$Video;,
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$MediaColumns;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_LOOP_PLAYBACK:Ljava/lang/String; = "android.intent.extra.loopPlayback"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_URI_LIST:Ljava/lang/String; = "android.intent.extra.uriList"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final MTP_TRANSFER_FILE_PATH:Ljava/lang/String; = "mtp_transfer_file_path"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2626
    return-void
.end method

.method private static GetPinyinForSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    .line 2699
    invoke-static {}, Landroid/provider/HanziToPinyin;->getInstance()Landroid/provider/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/provider/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2700
    .local v2, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/HanziToPinyin$Token;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2701
    .local v1, pinyin:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2702
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/HanziToPinyin$Token;

    iget-object v3, v3, Landroid/provider/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/HanziToPinyin$Token;

    iget v3, v3, Landroid/provider/HanziToPinyin$Token;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2704
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2701
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2707
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Landroid/provider/MediaStore;->getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Landroid/provider/MediaStore;->GetPinyinForSort(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 15
    .parameter "cr"
    .parameter "baseUri"
    .parameter "origId"

    .prologue
    .line 2645
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2646
    .local v14, tmpUri:Ljava/lang/String;
    const-string v2, "content://media/external/images/media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2647
    .local v3, imagesUri:Landroid/net/Uri;
    const-wide/16 v10, 0x0

    .line 2648
    .local v10, thumb_Id:J
    const/4 v8, 0x0

    .line 2650
    .local v8, c:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "mini_thumb_magic"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2651
    if-nez v8, :cond_1

    .line 2652
    const-string v2, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImageThumbnailId: Null cursor! id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2661
    if-eqz v8, :cond_0

    .line 2662
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v12, v10

    .line 2665
    .end local v10           #thumb_Id:J
    .local v12, thumb_Id:J
    :goto_0
    return-wide v12

    .line 2655
    .end local v12           #thumb_Id:J
    .restart local v10       #thumb_Id:J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2656
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    .line 2661
    :cond_2
    if-eqz v8, :cond_3

    .line 2662
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-wide v12, v10

    .line 2665
    .end local v10           #thumb_Id:J
    .restart local v12       #thumb_Id:J
    goto :goto_0

    .line 2658
    .end local v12           #thumb_Id:J
    .restart local v10       #thumb_Id:J
    :catch_0
    move-exception v9

    .line 2659
    .local v9, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "MediaStore"

    const-string v4, "getImageThumbnailId: SQLiteException!"

    invoke-static {v2, v4, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2661
    if-eqz v8, :cond_3

    .line 2662
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2661
    .end local v9           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 2662
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2222
    const-string v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMtpTransferFileUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2464
    const-string v0, "content://media/none/mtp_transfer_file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2247
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2250
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2252
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2253
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2259
    :cond_0
    :goto_0
    return-object v2

    .line 2256
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getVideoThumbnailId(Landroid/content/ContentResolver;Landroid/net/Uri;J)J
    .locals 15
    .parameter "cr"
    .parameter "baseUri"
    .parameter "origId"

    .prologue
    .line 2672
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2673
    .local v14, tmpUri:Ljava/lang/String;
    const-string v2, "content://media/external/video/media/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2674
    .local v3, imagesUri:Landroid/net/Uri;
    const-wide/16 v10, 0x0

    .line 2675
    .local v10, thumb_Id:J
    const/4 v8, 0x0

    .line 2677
    .local v8, c:Landroid/database/Cursor;
    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "mini_thumb_magic"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2678
    if-nez v8, :cond_1

    .line 2679
    const-string v2, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVideoThumbnailId: Null cursor! id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2688
    if-eqz v8, :cond_0

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v12, v10

    .line 2692
    .end local v10           #thumb_Id:J
    .local v12, thumb_Id:J
    :goto_0
    return-wide v12

    .line 2682
    .end local v12           #thumb_Id:J
    .restart local v10       #thumb_Id:J
    :cond_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2683
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    .line 2688
    :cond_2
    if-eqz v8, :cond_3

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move-wide v12, v10

    .line 2692
    .end local v10           #thumb_Id:J
    .restart local v12       #thumb_Id:J
    goto :goto_0

    .line 2685
    .end local v12           #thumb_Id:J
    .restart local v10       #thumb_Id:J
    :catch_0
    move-exception v9

    .line 2686
    .local v9, ex:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v2, "MediaStore"

    const-string v4, "getVideoThumbnailId: SQLiteException!"

    invoke-static {v2, v4, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2688
    if-eqz v8, :cond_3

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2688
    .end local v9           #ex:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_4

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method
