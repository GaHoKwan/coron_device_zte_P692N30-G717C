.class public Lcom/mediatek/phone/recording/PhoneRecorder;
.super Lcom/mediatek/phone/recording/Recorder;
.source "PhoneRecorder.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final AUDIO_3GPP:Ljava/lang/String; = "audio/3gpp"

.field private static final AUDIO_AMR:Ljava/lang/String; = "audio/amr"

.field private static final AUDIO_ANY:Ljava/lang/String; = "audio/*"

.field private static final AUDIO_DB_TITLE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field public static final LOW_STORAGE_THRESHOLD:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "PhoneRecorder"

.field private static sIsRecording:Z

.field private static sLock:[B

.field private static sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

.field private static sSDcardFullFlag:Z


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioDBPlaylistName:Ljava/lang/String;

.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mContext:Landroid/content/Context;

.field mMaxFileSize:J

.field mRequestedType:Ljava/lang/String;

.field mSampleInterrupted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/mediatek/phone/recording/Recorder;-><init>()V

    .line 80
    const-string v0, "audio/3gpp"

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mMaxFileSize:J

    .line 95
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    .line 98
    return-void
.end method

.method private addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    .locals 17
    .parameter "file"

    .prologue
    .line 248
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v5, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 250
    .local v3, current:J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 251
    .local v7, modDate:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 253
    .local v6, date:Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 254
    .local v12, sTime:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-static {v14}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, sDate:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, title:Ljava/lang/String;
    const-string v14, "_data"

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v14, "mime_type"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v5, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 276
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 278
    .local v2, base:Landroid/net/Uri;
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 280
    .local v10, result:Landroid/net/Uri;
    if-nez v10, :cond_1

    .line 281
    const-string v14, "PhoneRecorder"

    const-string v15, "----- Unable to save recorded audio !!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v10, 0x0

    .line 297
    .end local v10           #result:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v10

    .line 285
    .restart local v10       #result:Landroid/net/Uri;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 286
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/phone/recording/PhoneRecorder;->createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 288
    :cond_2
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 289
    .local v1, audioId:I
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->getPlaylistId()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1, v14, v15}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToPlaylist(Landroid/content/ContentResolver;IJ)V

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v14, v15}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v14, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v14}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_0
.end method

.method private addToPlaylist(Landroid/content/ContentResolver;IJ)V
    .locals 10
    .parameter "resolver"
    .parameter "audioId"
    .parameter "playlistId"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 354
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    .line 355
    .local v2, cols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 357
    .local v7, cur:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 358
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 359
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 360
    .local v6, base:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 361
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 362
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "play_order"

    add-int v3, v6, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string v0, "audio_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    invoke-virtual {p1, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 366
    .end local v6           #base:I
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private createPlaylist(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"

    .prologue
    .line 336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 338
    const-string v2, "name"

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 341
    const-string v2, "PhoneRecorder"

    const-string v3, "---- Unable to save recorded audio -----"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    return-object v1
.end method

.method private getExactRecordingPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "path"

    .prologue
    .line 418
    const-string v1, ""

    .line 419
    .local v1, exactPath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): path is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 420
    iget-object v10, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const-string v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    invoke-virtual {v10}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 421
    .local v5, storageVolumeList:[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_1

    .line 422
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v9, v0, v3

    .line 423
    .local v9, volume:Landroid/os/storage/StorageVolume;
    iget-object v10, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 424
    .local v7, volDescription:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, volPath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): volDes is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", volPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 426
    if-eqz p1, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 427
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, subPath:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 429
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExactRecordingPath(): exactPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", subPath is: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 434
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v1           #exactPath:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #subPath:Ljava/lang/String;
    .end local v7           #volDescription:Ljava/lang/String;
    .end local v8           #volPath:Ljava/lang/String;
    .end local v9           #volume:Landroid/os/storage/StorageVolume;
    .local v2, exactPath:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 422
    .end local v2           #exactPath:Ljava/lang/String;
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v1       #exactPath:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #volDescription:Ljava/lang/String;
    .restart local v8       #volPath:Ljava/lang/String;
    .restart local v9       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v7           #volDescription:Ljava/lang/String;
    .end local v8           #volPath:Ljava/lang/String;
    .end local v9           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    move-object v2, v1

    .line 434
    .end local v1           #exactPath:Ljava/lang/String;
    .restart local v2       #exactPath:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;
    .locals 2
    .parameter "context"

    .prologue
    .line 114
    sget-object v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sLock:[B

    monitor-enter v1

    .line 115
    :try_start_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/mediatek/phone/recording/PhoneRecorder;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/recording/PhoneRecorder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    .line 118
    :cond_0
    sget-object v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sPhoneRecorder:Lcom/mediatek/phone/recording/PhoneRecorder;

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPlaylistId()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 305
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 306
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 309
    .local v2, ids:[Ljava/lang/String;
    const-string v8, "name=?"

    .line 310
    .local v8, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    const v3, 0x7f080009

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    .line 311
    new-array v4, v5, [Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mAudioDBPlaylistName:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 314
    .local v4, args:[Ljava/lang/String;
    const-string v3, "name=?"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/phone/recording/PhoneRecorder;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 315
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 316
    const-string v0, "PhoneRecorder"

    const-string v3, "query returns null"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    const/4 v7, -0x1

    .line 319
    .local v7, id:I
    if-eqz v6, :cond_2

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 324
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_2
    return v7
.end method

.method public static isRecording()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    return v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 386
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 384
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 385
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 386
    goto :goto_0
.end method

.method public static sdcardFullFlag()Z
    .locals 2

    .prologue
    .line 214
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    .line 215
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    return v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRecording(Z)V
    .locals 0
    .parameter "isRecording"

    .prologue
    .line 131
    sput-boolean p0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    .line 132
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 438
    const-string v0, "PhoneRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 391
    const-string v0, "PhoneRecorder"

    const-string v1, "MediaRecorder error..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    .line 400
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v0

    .line 402
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .end local v0           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 412
    :cond_0
    return-void
.end method

.method public saveSample()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->sampleLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v2

    .line 228
    :cond_1
    const/4 v1, 0x0

    .line 230
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->sampleFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/phone/recording/PhoneRecorder;->addToMediaDB(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    .line 239
    const/4 v2, 0x1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 233
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public setMContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    .line 106
    return-void
.end method

.method public startRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord, mRequestedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 136
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 141
    const-string v1, "PhoneRecorder"

    const-string v2, "-----Please insert an SD card----"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_1
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iput-boolean v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mSampleInterrupted:Z

    .line 144
    const-string v1, "PhoneRecorder"

    const-string v2, "--------Storage is full-------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    :try_start_0
    const-string v1, "audio/amr"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    const/4 v1, 0x3

    const-string v2, ".amr"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/Recorder;->startRecording(ILjava/lang/String;)V

    .line 159
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, oe:Ljava/io/IOException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    goto :goto_0

    .line 149
    .end local v0           #oe:Ljava/io/IOException;
    :cond_3
    :try_start_1
    const-string v1, "audio/3gpp"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/Recorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v1, "audio/*"

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mRequestedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 154
    const/4 v1, 0x1

    const-string v2, ".3gpp"

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/phone/recording/Recorder;->startRecording(ILjava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid output file type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 167
    sget-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/mediatek/phone/recording/Recorder;->stop()V

    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    goto :goto_0
.end method

.method public stopRecord(Z)V
    .locals 6
    .parameter "mount"

    .prologue
    const/4 v5, 0x1

    .line 179
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sIsRecording:Z

    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 182
    :cond_0
    const-string v1, "stopRecord"

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/recording/PhoneRecorder;->log(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->stop()V

    .line 185
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 186
    .local v0, app:Lcom/android/phone/PhoneGlobals;
    if-eqz p1, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/PhoneRecorder;->saveSample()Z

    .line 188
    sget-boolean v1, Lcom/mediatek/phone/recording/PhoneRecorder;->sSDcardFullFlag:Z

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->getRecordingPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/phone/recording/PhoneRecorder;->getExactRecordingPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/recording/Recorder;->delete()V

    .line 201
    iget-object v1, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/recording/PhoneRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
