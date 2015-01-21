.class Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "RemainingTimeCalculator.java"


# static fields
.field private static final BIT_RATE:I = 0x8

.field public static final DISK_SPACE_LIMIT:I = 0x2

.field public static final FILE_SIZE_LIMIT:I = 0x1

.field private static final ONE_SECOND:I = 0x3e8

.field private static final RECORDING:Ljava/lang/String; = "Recording"

.field private static final RESERVE_SAPCE:F = 1048576.0f

.field private static final TAG:Ljava/lang/String; = "SR/RemainingTimeCalculator"

.field public static final UNKNOWN_LIMIT:I


# instance fields
.field private mBlocksChangedTime:J

.field private mBytesPerSecond:I

.field private mCurrentLowerLimit:I

.field private mFilePath:Ljava/lang/String;

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mLastRemainingTime:J

.field private mLastTimeRunTimeRemaining:J

.field private mMaxBytes:J

.field private mPauseTimeRemaining:Z

.field private mRecordingFile:Ljava/io/File;

.field private mSDCardDirectory:Ljava/lang/String;

.field private mService:Lcom/android/soundrecorder/SoundRecorderService;

.field private final mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageManager;Lcom/android/soundrecorder/SoundRecorderService;)V
    .locals 3
    .parameter "storageManager"
    .parameter "service"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 39
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    .line 47
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 56
    iput-boolean v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mPauseTimeRemaining:Z

    .line 68
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 70
    invoke-direct {p0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->getSDCardDirectory()V

    .line 72
    iput-object p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    .line 73
    return-void
.end method

.method private getSDCardDirectory()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/lang/String;

    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceRemaining()J
    .locals 7

    .prologue
    .line 268
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 269
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-long v2, v5

    .line 270
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 271
    .local v0, blockSize:J
    mul-long v5, v2, v0

    long-to-float v5, v5

    const/high16 v6, 0x4980

    sub-float/2addr v5, v6

    float-to-long v5, v5

    return-wide v5
.end method

.method public getByteRate()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    .line 94
    const-string v0, "SR/RemainingTimeCalculator"

    const-string v1, "<reset>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput v4, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 96
    iput-wide v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 97
    iput-wide v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 99
    iput-boolean v4, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mPauseTimeRemaining:Z

    .line 100
    iput-wide v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    .line 101
    iput-wide v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 102
    invoke-direct {p0}, Lcom/android/soundrecorder/RemainingTimeCalculator;->getSDCardDirectory()V

    .line 104
    return-void
.end method

.method public setBitRate(I)V
    .locals 3
    .parameter "bitRate"

    .prologue
    .line 251
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 252
    const-string v0, "SR/RemainingTimeCalculator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<setBitRate> mBytesPerSecond = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .locals 0
    .parameter "file"
    .parameter "maxBytes"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 87
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 88
    return-void
.end method

.method public setPauseTimeRemaining(Z)V
    .locals 0
    .parameter "pause"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mPauseTimeRemaining:Z

    .line 124
    return-void
.end method

.method public timeRemaining(Z)J
    .locals 23
    .parameter "isFirstTimeGetRemainingTime"

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mService:Lcom/android/soundrecorder/SoundRecorderService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFilePath:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "Recording"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v19

    add-int/lit8 v11, v19, -0x1

    .line 144
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFilePath:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/lang/String;

    .line 146
    .end local v11           #index:I
    :cond_0
    const-string v19, "SR/RemainingTimeCalculator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "timeRemaining --> mFilePath is :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFilePath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v7, 0x0

    .line 152
    .local v7, blocksNotChangeMore:Z
    new-instance v10, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    .local v10, fs:Landroid/os/StatFs;
    invoke-virtual {v10}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    int-to-long v5, v0

    .line 154
    .local v5, blocks:J
    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v3, v0

    .line 155
    .local v3, blockSize:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 156
    .local v12, now:J
    const-wide/16 v19, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v19, v0

    cmp-long v19, v5, v19

    if-eqz v19, :cond_5

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v19, v0

    cmp-long v19, v5, v19

    if-gtz v19, :cond_4

    const/4 v7, 0x1

    .line 163
    :goto_0
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 164
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 177
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v19, v0

    mul-long v19, v19, v3

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4980

    sub-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v18, v19, v20

    .line 183
    .local v18, resultTemp:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mPauseTimeRemaining:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 184
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastTimeRunTimeRemaining:J

    move-wide/from16 v21, v0

    sub-long v21, v12, v21

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 185
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mPauseTimeRemaining:Z

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastTimeRunTimeRemaining:J

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v19, v0

    sub-long v19, v12, v19

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x447a

    div-float v19, v19, v20

    sub-float v18, v18, v19

    .line 191
    move/from16 v0, v18

    float-to-long v14, v0

    .line 192
    .local v14, resultDiskSpace:J
    const-wide/16 v19, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_6

    move-wide/from16 v19, v14

    :goto_2
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    .line 193
    if-eqz v7, :cond_7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    move-wide/from16 v19, v0

    cmp-long v19, v14, v19

    if-lez v19, :cond_7

    .line 196
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    .line 203
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    if-nez p1, :cond_8

    .line 204
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 230
    .end local v14           #resultDiskSpace:J
    :goto_4
    return-wide v14

    .line 160
    .end local v18           #resultTemp:F
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 165
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v19, v0

    cmp-long v19, v5, v19

    if-nez v19, :cond_2

    .line 166
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 192
    .restart local v14       #resultDiskSpace:J
    .restart local v18       #resultTemp:F
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    move-wide/from16 v19, v0

    goto :goto_2

    .line 199
    :cond_7
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastRemainingTime:J

    goto :goto_3

    .line 213
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 214
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 217
    .local v8, fileSize:J
    const-wide/16 v19, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    move-wide/from16 v19, v0

    cmp-long v19, v8, v19

    if-eqz v19, :cond_a

    .line 218
    :cond_9
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 219
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 221
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    move-wide/from16 v19, v0

    sub-long v19, v19, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    div-long v16, v19, v21

    .line 222
    .local v16, resultFileSize:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v19, v0

    sub-long v19, v12, v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    sub-long v16, v16, v19

    .line 223
    const-wide/16 v19, 0x1

    sub-long v16, v16, v19

    .line 224
    cmp-long v19, v14, v16

    if-gez v19, :cond_b

    const/16 v19, 0x2

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 228
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    goto/16 :goto_4

    .line 224
    :cond_b
    const/16 v19, 0x1

    goto :goto_5

    .line 230
    .end local v8           #fileSize:J
    .end local v16           #resultFileSize:J
    :cond_c
    const-wide/16 v14, 0x0

    goto/16 :goto_4
.end method
