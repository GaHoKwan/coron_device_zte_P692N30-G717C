.class public Lcom/mediatek/mock/hardware/AutoRama;
.super Ljava/lang/Thread;
.source "AutoRama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mock/hardware/AutoRama$1;,
        Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;
    }
.end annotation


# static fields
.field private static final CANCEL_CAPTURE:I = 0x4

.field private static final DIRECTION_DETERMING:I = 0x1

.field private static final FIRST_CAPTURE:I = 0x5

.field private static final IDLE:I = 0x0

.field private static final INTERVAL:I = 0x4b0

.field private static final MOVING_FRAME:I = 0x2

.field private static final QUITING:I = 0x9

.field private static final SAVING_PICTURE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AutoRama"

.field private static sPictureCount:I


# instance fields
.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCapturePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrameDemon:Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;

.field private mLastFrameTime:J

.field private mNextScheduleTime:I

.field private mReporter:Landroid/os/Handler;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/media/MediaActionSound;)V
    .locals 2
    .parameter "handler"
    .parameter "context"
    .parameter "sound"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 30
    new-instance v0, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;-><init>(Lcom/mediatek/mock/hardware/AutoRama;Lcom/mediatek/mock/hardware/AutoRama$1;)V

    iput-object v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mFrameDemon:Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;

    .line 39
    iput-object p1, p0, Lcom/mediatek/mock/hardware/AutoRama;->mReporter:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Lcom/mediatek/mock/hardware/AutoRama;->mContext:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCameraSound:Landroid/media/MediaActionSound;

    .line 42
    return-void
.end method

.method private onPictureCreate()[B
    .locals 9

    .prologue
    const/16 v8, 0x400

    .line 185
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 186
    const/4 v6, 0x0

    .line 212
    :goto_0
    return-object v6

    .line 189
    :cond_0
    sget v6, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    .line 190
    sget v6, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    rem-int/lit8 v6, v6, 0x2

    sput v6, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    .line 191
    sget v6, Lcom/mediatek/mock/hardware/AutoRama;->sPictureCount:I

    if-nez v6, :cond_1

    .line 192
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 196
    .local v2, inputStream:Ljava/io/InputStream;
    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 197
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    new-array v0, v8, [B

    .line 198
    .local v0, b:[B
    const/4 v5, -0x1

    .line 200
    .local v5, size:I
    :goto_2
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 201
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v6, "AutoRama"

    const-string v7, "read blank.jpg in raw reault in error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 212
    .end local v3           #ioe:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 194
    .end local v0           #b:[B
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .end local v5           #size:I
    :cond_1
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_1

    .line 207
    .restart local v0       #b:[B
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #size:I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 208
    :catch_1
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    const-string v6, "AutoRama"

    const-string v7, "close inputStream fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 208
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 209
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "AutoRama"

    const-string v7, "close inputStream fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 206
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 207
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 210
    :goto_4
    throw v6

    .line 208
    :catch_3
    move-exception v1

    .line 209
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "AutoRama"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized quit()V
    .locals 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    const-string v0, "AutoRama"

    const-string v1, "quit autoRama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    .line 67
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 97
    :goto_0
    const/4 v6, 0x4

    new-array v2, v6, [I

    .line 98
    .local v2, intBuf:[I
    monitor-enter p0

    .line 99
    const/16 v6, 0x3e8

    :try_start_0
    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    .line 100
    iget v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    packed-switch v6, :pswitch_data_0

    .line 174
    :cond_0
    :goto_1
    :pswitch_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :try_start_1
    iget v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v6, "AutoRama"

    const-string v7, "Loop into next job"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_1
    const/16 v6, 0x1388

    :try_start_2
    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    goto :goto_1

    .line 174
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 105
    :pswitch_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mLastFrameTime:J

    .line 108
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaActionSound;->play(I)V

    .line 109
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mFrameDemon:Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;

    invoke-virtual {v6, v2}, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->determinDirection([I)Z

    .line 110
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v2, v6

    .line 111
    invoke-virtual {p0, v2}, Lcom/mediatek/mock/hardware/AutoRama;->sendMsgToCamera([I)V

    .line 112
    const/4 v6, 0x2

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    .line 113
    const/16 v6, 0x64

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    goto :goto_1

    .line 116
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mReporter:Landroid/os/Handler;

    if-eqz v6, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/mock/hardware/AutoRama;->mLastFrameTime:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 118
    .local v3, movingTime:I
    if-gez v3, :cond_1

    .line 119
    const/4 v3, 0x0

    .line 121
    :cond_1
    const/16 v6, 0x4b0

    if-lt v3, v6, :cond_2

    .line 122
    const/16 v6, 0xc8

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    .line 123
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v2, v6

    .line 124
    invoke-virtual {p0, v2}, Lcom/mediatek/mock/hardware/AutoRama;->sendMsgToCamera([I)V

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xc8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mLastFrameTime:J

    .line 126
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_1

    .line 128
    :cond_2
    const/16 v6, 0xa

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    .line 129
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v2, v6

    .line 130
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mFrameDemon:Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;

    invoke-virtual {v6, v2, v3}, Lcom/mediatek/mock/hardware/AutoRama$FrameDetector;->getPosition([II)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/mediatek/mock/hardware/AutoRama;->sendMsgToCamera([I)V

    goto :goto_1

    .line 137
    .end local v3           #movingTime:I
    :pswitch_4
    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCapturePath:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 138
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/AutoRama;->onPictureCreate()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 139
    .local v0, data:[B
    const/4 v4, 0x0

    .line 141
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCapturePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 142
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 143
    const-string v6, "AutoRama"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flush pano pic to sdcard, path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCapturePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 150
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 156
    .end local v0           #data:[B
    .end local v5           #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_7
    aput v7, v2, v6

    .line 157
    invoke-virtual {p0, v2}, Lcom/mediatek/mock/hardware/AutoRama;->sendMsgToCamera([I)V

    .line 160
    :pswitch_5
    const/4 v6, 0x0

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    goto/16 :goto_1

    .line 151
    .restart local v0       #data:[B
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 152
    .local v1, e:Ljava/io/IOException;
    const-string v6, "AutoRama"

    const-string v7, "Failed to close FileOutputStream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 144
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v1

    .line 145
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_8
    const-string v6, "AutoRama"

    const-string v7, "Failed to write image"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 150
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 151
    :catch_3
    move-exception v1

    .line 152
    .local v1, e:Ljava/io/IOException;
    :try_start_a
    const-string v6, "AutoRama"

    const-string v7, "Failed to close FileOutputStream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 146
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 147
    .restart local v1       #e:Ljava/io/IOException;
    :goto_4
    :try_start_b
    const-string v6, "AutoRama"

    const-string v7, "Failed to write image"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 150
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_2

    .line 151
    :catch_5
    move-exception v1

    .line 152
    :try_start_d
    const-string v6, "AutoRama"

    const-string v7, "Failed to close FileOutputStream"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    .line 150
    :goto_5
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 153
    :goto_6
    :try_start_f
    throw v6

    .line 151
    :catch_6
    move-exception v1

    .line 152
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "AutoRama"

    const-string v8, "Failed to close FileOutputStream"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 163
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    :pswitch_6
    const/4 v6, 0x0

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    .line 164
    monitor-exit p0

    return-void

    .line 166
    :pswitch_7
    const/16 v6, 0x5dc

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mNextScheduleTime:I

    .line 167
    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v7, v2, v6

    .line 168
    invoke-virtual {p0, v2}, Lcom/mediatek/mock/hardware/AutoRama;->sendMsgToCamera([I)V

    .line 169
    const/4 v6, 0x1

    iput v6, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 149
    .restart local v0       #data:[B
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 146
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 144
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 100
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public sendMsgToCamera([I)V
    .locals 9
    .parameter "intBuf"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 80
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v1, dOutStream:Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    :try_start_0
    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    const/4 v4, 0x1

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 84
    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 85
    const/4 v4, 0x3

    aget v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    iget-object v4, p0, Lcom/mediatek/mock/hardware/AutoRama;->mReporter:Landroid/os/Handler;

    const/high16 v5, -0x8000

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v5, v8, v7, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 92
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/mock/hardware/AutoRama;->mReporter:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void

    .line 86
    .end local v3           #msg:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 87
    .local v2, e:Ljava/io/IOException;
    const-string v4, "AutoRama"

    const-string v5, "write byte[] error"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCapturePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mediatek/mock/hardware/AutoRama;->mCapturePath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/mediatek/mock/hardware/AutoRama;->mReporter:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method public declared-synchronized startAutoRama()V
    .locals 2

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    if-nez v0, :cond_0

    .line 46
    const-string v0, "AutoRama"

    const-string v1, "startAutoRama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    .line 48
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    const-string v0, "AutoRama"

    const-string v1, "startAutoRama in unsuspect status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAutoRama(I)V
    .locals 2
    .parameter "merge"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    const-string v0, "AutoRama"

    const-string v1, "stopAutoRama"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I

    .line 61
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lcom/mediatek/mock/hardware/AutoRama;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
