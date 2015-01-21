.class public Lcom/android/musicvis/AudioCapture;
.super Ljava/lang/Object;
.source "AudioCapture.java"


# static fields
.field private static MAX_IDLE_TIME_MS:J = 0x0L

.field public static final TYPE_FFT:I = 0x1

.field public static final TYPE_PCM:I


# instance fields
.field private mFormattedNullData:[I

.field private mFormattedVizData:[I

.field private mLastValidCaptureTimeMs:J

.field private mRawNullData:[B

.field private mRawVizData:[B

.field private mType:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/android/musicvis/AudioCapture;->MAX_IDLE_TIME_MS:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .parameter "type"
    .parameter "size"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mRawNullData:[B

    .line 29
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedNullData:[I

    .line 42
    iput p1, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    .line 43
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 45
    .local v1, range:[I
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    .line 47
    aget v2, v1, v3

    if-ge p2, v2, :cond_0

    .line 48
    aget p2, v1, v3

    .line 50
    :cond_0
    aget v2, v1, v4

    if-le p2, v2, :cond_1

    .line 51
    aget p2, v1, v4

    .line 54
    :cond_1
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    .line 55
    new-array v2, p2, [I

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    .line 57
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 59
    :try_start_0
    new-instance v2, Landroid/media/audiofx/Visualizer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 60
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v2, :cond_3

    .line 61
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v2}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 64
    :cond_2
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v3, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    :cond_3
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    const-string v2, "AudioCapture"

    const-string v3, "Visualizer cstor UnsupportedOperationException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v0           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "AudioCapture"

    const-string v3, "Visualizer cstor IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "AudioCapture"

    const-string v3, "Visualizer cstor RuntimeException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private captureData()Z
    .locals 10

    .prologue
    .line 137
    const/4 v4, -0x1

    .line 138
    .local v4, status:I
    const/4 v3, 0x1

    .line 140
    .local v3, result:Z
    :try_start_0
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v5, :cond_0

    .line 141
    iget v5, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    if-nez v5, :cond_2

    .line 142
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v6, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Visualizer;->getWaveForm([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 150
    :cond_0
    :goto_0
    if-eqz v4, :cond_e

    .line 151
    const-string v5, "AudioCapture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureData() :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_1
    const/4 v3, 0x0

    .line 173
    :cond_1
    :goto_2
    return v3

    .line 144
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v6, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Visualizer;->getFft([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v5, "AudioCapture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureData() IllegalStateException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    if-eqz v4, :cond_9

    .line 151
    const-string v5, "AudioCapture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureData() :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_4

    .line 151
    const-string v6, "AudioCapture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "captureData() :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v3, 0x0

    .line 150
    :cond_3
    :goto_3
    throw v5

    .line 155
    :cond_4
    const/4 v2, 0x0

    .line 157
    .local v2, nullValue:B
    iget v6, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    if-nez v6, :cond_5

    .line 158
    const/16 v2, -0x80

    .line 160
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v6, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v6, v6

    if-ge v1, v6, :cond_6

    .line 161
    iget-object v6, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    aget-byte v6, v6, v1

    if-eq v6, v2, :cond_7

    .line 163
    :cond_6
    iget-object v6, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v6, v6

    if-ne v1, v6, :cond_8

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J

    sub-long/2addr v6, v8

    sget-wide v8, Lcom/android/musicvis/AudioCapture;->MAX_IDLE_TIME_MS:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 166
    const/4 v3, 0x0

    goto :goto_3

    .line 160
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 169
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J

    goto :goto_3

    .line 155
    .end local v1           #i:I
    .end local v2           #nullValue:B
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    :cond_9
    const/4 v2, 0x0

    .line 157
    .restart local v2       #nullValue:B
    iget v5, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    if-nez v5, :cond_a

    .line 158
    const/16 v2, -0x80

    .line 160
    :cond_a
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v5, v5

    if-ge v1, v5, :cond_b

    .line 161
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    aget-byte v5, v5, v1

    if-eq v5, v2, :cond_c

    .line 163
    :cond_b
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v5, v5

    if-ne v1, v5, :cond_d

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J

    sub-long/2addr v5, v7

    sget-wide v7, Lcom/android/musicvis/AudioCapture;->MAX_IDLE_TIME_MS:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 166
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 160
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 169
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_7
    iput-wide v5, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J

    goto/16 :goto_2

    .line 155
    .end local v1           #i:I
    .end local v2           #nullValue:B
    :cond_e
    const/4 v2, 0x0

    .line 157
    .restart local v2       #nullValue:B
    iget v5, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    if-nez v5, :cond_f

    .line 158
    const/16 v2, -0x80

    .line 160
    :cond_f
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_8
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v5, v5

    if-ge v1, v5, :cond_10

    .line 161
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    aget-byte v5, v5, v1

    if-eq v5, v2, :cond_11

    .line 163
    :cond_10
    iget-object v5, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    array-length v5, v5

    if-ne v1, v5, :cond_12

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J

    sub-long/2addr v5, v7

    sget-wide v7, Lcom/android/musicvis/AudioCapture;->MAX_IDLE_TIME_MS:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    goto :goto_6

    .line 160
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 169
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_7
.end method


# virtual methods
.method public getFormattedData(II)[I
    .locals 4
    .parameter "num"
    .parameter "den"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/musicvis/AudioCapture;->captureData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget v2, p0, Lcom/android/musicvis/AudioCapture;->mType:I

    if-nez v2, :cond_0

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v2, -0x80

    .line 122
    .local v1, tmp:I
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    mul-int v3, v1, p1

    div-int/2addr v3, p2

    aput v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0           #i:I
    .end local v1           #tmp:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    iget-object v3, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    aget-byte v3, v3, v0

    mul-int/2addr v3, p1

    div-int/2addr v3, p2

    aput v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedVizData:[I

    .line 132
    .end local v0           #i:I
    :goto_2
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/musicvis/AudioCapture;->mFormattedNullData:[I

    goto :goto_2
.end method

.method public getRawData()[B
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/musicvis/AudioCapture;->captureData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/musicvis/AudioCapture;->mRawVizData:[B

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/musicvis/AudioCapture;->mRawNullData:[B

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 105
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/musicvis/AudioCapture;->mLastValidCaptureTimeMs:J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "AudioCapture"

    const-string v2, "start() IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v1, :cond_0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v1}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/musicvis/AudioCapture;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "AudioCapture"

    const-string v2, "stop() IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
