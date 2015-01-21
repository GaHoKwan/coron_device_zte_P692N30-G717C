.class public Lcom/android/soundrecorder/Recorder;
.super Ljava/lang/Object;
.source "Recorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/soundrecorder/Recorder$RecorderListener;
    }
.end annotation


# static fields
.field public static final RECORD_FOLDER:Ljava/lang/String; = "Recording"

.field private static final SAMPLE_PREFIX:Ljava/lang/String; = "record"

.field public static final SAMPLE_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final TAG:Ljava/lang/String; = "SR/Recorder"


# instance fields
.field private mCurrentState:I

.field private mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

.field private mPreviousTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mSampleFile:Ljava/io/File;

.field private mSampleLength:J

.field private mSampleStart:J

.field private mSelectEffect:[Z

.field private final mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Lcom/android/soundrecorder/Recorder$RecorderListener;)V
    .locals 4
    .parameter "storageManager"
    .parameter "listener"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    .line 26
    iput-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 27
    iput-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 29
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 31
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 32
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    .line 36
    iput-object v1, p0, Lcom/android/soundrecorder/Recorder;->mSelectEffect:[Z

    .line 63
    iput-object p1, p0, Lcom/android/soundrecorder/Recorder;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 64
    iput-object p2, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    .line 65
    return-void
.end method

.method private createRecordingFile(Ljava/lang/String;)Z
    .locals 13
    .parameter "extension"

    .prologue
    .line 306
    const-string v10, "SR/Recorder"

    const-string v11, "<createRecordingFile> begin"

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, myExtension:Ljava/lang/String;
    const/4 v5, 0x0

    .line 309
    .local v5, sampleDir:Ljava/io/File;
    iget-object v10, p0, Lcom/android/soundrecorder/Recorder;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v10, :cond_0

    .line 310
    const/4 v2, 0x0

    .line 353
    :goto_0
    return v2

    .line 312
    :cond_0
    new-instance v5, Ljava/io/File;

    .end local v5           #sampleDir:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .restart local v5       #sampleDir:Ljava/io/File;
    const-string v10, "SR/Recorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<createRecordingFile> sd card directory is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Recording"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    .local v6, sampleDirPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5           #sampleDir:Ljava/io/File;
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v5       #sampleDir:Ljava/io/File;
    const/4 v0, 0x1

    .line 320
    .local v0, dirID:I
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 321
    new-instance v5, Ljava/io/File;

    .end local v5           #sampleDir:Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .restart local v5       #sampleDir:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_2

    .line 326
    const-string v10, "SR/Recorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<createRecordingFile> make directory ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] fail"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_2
    const/4 v2, 0x1

    .line 332
    .local v2, isCreateSuccess:Z
    if-eqz v5, :cond_3

    .line 333
    :try_start_0
    const-string v10, "SR/Recorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<createRecordingFile> sample directory  is:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyyMMddHHmmss"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 337
    .local v7, simpleDateFormat:Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, time:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .local v8, stringBuilder:Ljava/lang/StringBuilder;
    const-string v10, "record"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, name:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 342
    iget-object v10, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v2

    .line 343
    const-string v10, "SR/Recorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<createRecordingFile> creat file success is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v10, "SR/Recorder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<createRecordingFile> mSampleFile.getAbsolutePath() is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    const-string v10, "SR/Recorder"

    const-string v11, "<createRecordingFile> end"

    .end local v4           #name:Ljava/lang/String;
    .end local v7           #simpleDateFormat:Ljava/text/SimpleDateFormat;
    .end local v8           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v9           #time:Ljava/lang/String;
    :goto_2
    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    iget-object v10, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/16 v11, 0xa

    invoke-interface {v10, p0, v11}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    .line 348
    const-string v10, "SR/Recorder"

    const-string v11, "<createRecordingFile> io exception happens"

    invoke-static {v10, v11}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    const/4 v2, 0x0

    .line 352
    const-string v10, "SR/Recorder"

    const-string v11, "<createRecordingFile> end"

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    const-string v10, "SR/Recorder"

    const-string v11, "<createRecordingFile> end"

    goto :goto_2
.end method

.method private initAndStartMediaRecorder(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z
    .locals 7
    .parameter "recordParams"
    .parameter "fileSizeLimit"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 253
    const-string v4, "SR/Recorder"

    const-string v5, "<initAndStartMediaRecorder> start"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEffect:[Z

    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSelectEffect:[Z

    .line 255
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 256
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 257
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mOutputFormat:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 258
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mHDRecordMode:I

    invoke-static {v4, v5, v3}, Lcom/mediatek/media/MediaRecorderEx;->setHDRecordMode(Landroid/media/MediaRecorder;IZ)V

    .line 263
    :cond_0
    invoke-static {}, Lcom/android/soundrecorder/RecordParamsSetting;->canSelectEffect()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, iSelEffects:I
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSelectEffect:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 266
    or-int/lit8 v1, v1, 0x1

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSelectEffect:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_2

    .line 269
    or-int/lit8 v1, v1, 0x2

    .line 271
    :cond_2
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSelectEffect:[Z

    const/4 v5, 0x2

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_3

    .line 272
    or-int/lit8 v1, v1, 0x4

    .line 274
    :cond_3
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-static {v4, v1}, Lcom/mediatek/media/MediaRecorderEx;->setPreprocessEffect(Landroid/media/MediaRecorder;I)V

    .line 277
    .end local v1           #iSelEffects:I
    :cond_4
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncoder:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 278
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioChannels:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 279
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioEncodingBitRate:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 280
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mAudioSamplingRate:I

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 281
    if-lez p2, :cond_5

    .line 282
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 284
    :cond_5
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 286
    :try_start_0
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->prepare()V

    .line 287
    iget-object v4, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    const-string v3, "SR/Recorder"

    const-string v4, "<initAndStartMediaRecorder> end"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, exception:Ljava/io/IOException;
    const-string v4, "SR/Recorder"

    const-string v5, "<initAndStartMediaRecorder> IO exception"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0, v2, v0}, Lcom/android/soundrecorder/Recorder;->handleException(ZLjava/lang/Exception;)V

    .line 292
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v4, 0x6

    invoke-interface {v2, p0, v4}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    move v2, v3

    .line 293
    goto :goto_0

    .line 294
    .end local v0           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 295
    .local v0, exception:Ljava/lang/RuntimeException;
    const-string v4, "SR/Recorder"

    const-string v5, "<initAndStartMediaRecorder> RuntimeException"

    invoke-static {v4, v5}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, v2, v0}, Lcom/android/soundrecorder/Recorder;->handleException(ZLjava/lang/Exception;)V

    .line 298
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v4, 0x5

    invoke-interface {v2, p0, v4}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    move v2, v3

    .line 299
    goto :goto_0
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 248
    iput p1, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    .line 249
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    invoke-interface {v0, p0, p1}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onStateChanged(Lcom/android/soundrecorder/Recorder;I)V

    .line 250
    return-void
.end method


# virtual methods
.method public getCurrentProgress()J
    .locals 6

    .prologue
    .line 102
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v2, v3, :cond_0

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 104
    .local v0, current:J
    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    add-long/2addr v2, v4

    .line 108
    .end local v0           #current:J
    :goto_0
    return-wide v2

    .line 105
    :cond_0
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v2, v3, :cond_1

    .line 106
    iget-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    goto :goto_0

    .line 108
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    return v0
.end method

.method public getMaxAmplitude()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 74
    monitor-exit p0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-eq v1, v2, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public getSampFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public getSampleFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSampleLength()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    return-wide v0
.end method

.method public goonRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 201
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 202
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v2, "SR/Recorder"

    const-string v3, "<goOnRecording> IllegalArgumentException"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 194
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 196
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v3, 0x6

    invoke-interface {v2, p0, v3}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    goto :goto_0
.end method

.method public handleException(ZLjava/lang/Exception;)V
    .locals 3
    .parameter "isDeleteSample"
    .parameter "exception"

    .prologue
    .line 361
    const-string v0, "SR/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<handleException> the exception is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 368
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 371
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .parameter "recorder"
    .parameter "errorType"
    .parameter "extraCode"

    .prologue
    .line 52
    const-string v0, "SR/Recorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<onError> errorType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; extraCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->stopRecording()Z

    .line 54
    iget-object v0, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    .line 55
    return-void
.end method

.method public pauseRecording()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 168
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-static {v2}, Lcom/mediatek/media/MediaRecorderEx;->pause(Landroid/media/MediaRecorder;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    iget-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 180
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 181
    const/4 v1, 0x1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "SR/Recorder"

    const-string v3, "<pauseRecording> IllegalArgumentException"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0, v1, v0}, Lcom/android/soundrecorder/Recorder;->handleException(ZLjava/lang/Exception;)V

    .line 176
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v3, 0x6

    invoke-interface {v2, p0, v3}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 116
    const/4 v1, 0x1

    .line 117
    .local v1, result:Z
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 120
    :try_start_1
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :try_start_2
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 128
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 132
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    iput-object v4, p0, Lcom/android/soundrecorder/Recorder;->mSampleFile:Ljava/io/File;

    .line 134
    iput-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 135
    iput-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    .line 136
    iput-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 141
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    .line 143
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, exception:Ljava/lang/RuntimeException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    const/4 v1, 0x0

    .line 124
    const-string v2, "SR/Recorder"

    const-string v3, "<stopRecording> recorder illegalstate exception in recorder.stop()"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :try_start_4
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 128
    iget-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 132
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 127
    :catchall_1
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 128
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 129
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public startRecording(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z
    .locals 4
    .parameter "params"
    .parameter "fileSizeLimit"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    const-string v2, "SR/Recorder"

    const-string v3, "<startRecording> begin"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v2, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-eq v1, v2, :cond_0

    .line 164
    :goto_0
    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/soundrecorder/Recorder;->reset()Z

    .line 153
    iget-object v2, p1, Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;->mExtension:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/soundrecorder/Recorder;->createRecordingFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    const-string v1, "SR/Recorder"

    const-string v2, "<startRecording> createRecordingFile return false"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/soundrecorder/Recorder;->initAndStartMediaRecorder(Lcom/android/soundrecorder/RecordParamsSetting$RecordParams;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const-string v1, "SR/Recorder"

    const-string v2, "<startRecording> initAndStartMediaRecorder return false"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    .line 162
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 163
    const-string v0, "SR/Recorder"

    const-string v2, "<startRecording> end"

    invoke-static {v0, v2}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 164
    goto :goto_0
.end method

.method public stopRecording()Z
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 206
    const-string v3, "SR/Recorder"

    const-string v4, "<stopRecording> start"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v5, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_2

    .line 209
    :cond_1
    const-string v2, "SR/Recorder"

    const-string v3, "<stopRecording> end 1"

    invoke-static {v2, v3}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 240
    :goto_0
    return v2

    .line 212
    :cond_2
    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-ne v5, v3, :cond_3

    move v1, v2

    .line 213
    .local v1, isAdd:Z
    :cond_3
    monitor-enter p0

    .line 215
    :try_start_0
    iget v3, p0, Lcom/android/soundrecorder/Recorder;->mCurrentState:I

    if-eq v3, v2, :cond_4

    .line 216
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_5

    .line 225
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 226
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 229
    :cond_5
    if-eqz v1, :cond_6

    .line 230
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 232
    :cond_6
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    .line 233
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in ms is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in s is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 238
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    const-string v3, "SR/Recorder"

    const-string v4, "<stopRecording> end 2"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, exception:Ljava/lang/RuntimeException;
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {p0, v3, v0}, Lcom/android/soundrecorder/Recorder;->handleException(ZLjava/lang/Exception;)V

    .line 221
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mListener:Lcom/android/soundrecorder/Recorder$RecorderListener;

    const/4 v4, 0x6

    invoke-interface {v3, p0, v4}, Lcom/android/soundrecorder/Recorder$RecorderListener;->onError(Lcom/android/soundrecorder/Recorder;I)V

    .line 222
    const-string v3, "SR/Recorder"

    const-string v4, "<stopRecording> recorder illegalstate exception in recorder.stop()"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 224
    :try_start_3
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_7

    .line 225
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 226
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 229
    :cond_7
    if-eqz v1, :cond_8

    .line 230
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 232
    :cond_8
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    .line 233
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in ms is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in s is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    goto :goto_1

    .line 238
    .end local v0           #exception:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 224
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_9

    .line 225
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 226
    iget-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 227
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/soundrecorder/Recorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 229
    :cond_9
    if-eqz v1, :cond_a

    .line 230
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/soundrecorder/Recorder;->mSampleStart:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    .line 232
    :cond_a
    iget-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    iput-wide v3, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    .line 233
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in ms is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mPreviousTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v3, "SR/Recorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<stopRecording> mSampleLength in s is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/soundrecorder/Recorder;->mSampleLength:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/soundrecorder/Recorder;->setState(I)V

    .line 224
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
