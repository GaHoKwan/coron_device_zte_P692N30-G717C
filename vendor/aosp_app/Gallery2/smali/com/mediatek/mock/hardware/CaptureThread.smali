.class public Lcom/mediatek/mock/hardware/CaptureThread;
.super Ljava/lang/Thread;
.source "CaptureThread.java"


# static fields
.field private static final CAPTURE_TIME:I = 0xc8

.field private static final IDLE_TIME:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "CaptureThread"

.field private static sPictureCount:I


# instance fields
.field private mActCapture:Z

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCapNum:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mHandler:Landroid/os/Handler;

.field private mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/media/MediaActionSound;)V
    .locals 1
    .parameter "handler"
    .parameter "context"
    .parameter "sound"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 21
    iput v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCapNum:I

    .line 22
    iput v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    .line 23
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    .line 24
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mQuit:Z

    .line 27
    iput-object p1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mContext:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCameraSound:Landroid/media/MediaActionSound;

    .line 30
    return-void
.end method

.method private onPictureCreate()[B
    .locals 9

    .prologue
    const/16 v8, 0x400

    .line 58
    iget-object v6, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 59
    const/4 v6, 0x0

    .line 85
    :goto_0
    return-object v6

    .line 62
    :cond_0
    sget v6, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    .line 63
    sget v6, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    rem-int/lit8 v6, v6, 0x2

    sput v6, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    .line 64
    sget v6, Lcom/mediatek/mock/hardware/CaptureThread;->sPictureCount:I

    if-nez v6, :cond_1

    .line 65
    iget-object v6, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 69
    .local v2, inputStream:Ljava/io/InputStream;
    :goto_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 70
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    new-array v0, v8, [B

    .line 71
    .local v0, b:[B
    const/4 v5, -0x1

    .line 73
    .local v5, size:I
    :goto_2
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 74
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, ioe:Ljava/io/IOException;
    :try_start_1
    const-string v6, "CaptureThread"

    const-string v7, "read blank.jpg in raw reault in error"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 85
    .end local v3           #ioe:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 67
    .end local v0           #b:[B
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    .end local v5           #size:I
    :cond_1
    iget-object v6, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .restart local v2       #inputStream:Ljava/io/InputStream;
    goto :goto_1

    .line 80
    .restart local v0       #b:[B
    .restart local v4       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #size:I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 81
    :catch_1
    move-exception v1

    .line 82
    .local v1, e:Ljava/io/IOException;
    const-string v6, "CaptureThread"

    const-string v7, "close inputStream fail"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #ioe:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 82
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "CaptureThread"

    const-string v7, "close inputStream fail"

    invoke-static {v6, v7}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 79
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 80
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 83
    :goto_4
    throw v6

    .line 81
    :catch_3
    move-exception v1

    .line 82
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "CaptureThread"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized cancelCapture()V
    .locals 5

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    const-string v1, "CaptureThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelCapture, CurrentCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x4000

    const/4 v3, 0x6

    iget v4, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 103
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    .line 106
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized capture()V
    .locals 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    const-string v0, "CaptureThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture, CurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    .line 94
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doCapture()V
    .locals 5

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, data:[B
    iget-object v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 43
    :cond_0
    const-string v2, "CaptureThread"

    const-string v3, "doCapture not ready"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x100

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 49
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    iget v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCapNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 51
    const-string v2, "CaptureThread"

    const-string v3, "play shutter sound"

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCameraSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 54
    :cond_1
    return-void

    .line 45
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    const-string v2, "CaptureThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCapture, CurrentCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/CaptureThread;->onPictureCreate()[B

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized quit()V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v0, "CaptureThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "quit, CurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mQuit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 118
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    if-eqz v1, :cond_0

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mock/hardware/CaptureThread;->doCapture()V

    .line 121
    iget v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    .line 122
    iget v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    iget v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCapNum:I

    if-ne v1, v2, :cond_1

    .line 123
    const-string v1, "CaptureThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reach count break, CurrentCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mActCapture:Z

    .line 125
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    monitor-enter p0

    .line 137
    :try_start_1
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mQuit:Z

    if-eqz v1, :cond_2

    .line 138
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    return-void

    .line 128
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    const-string v1, "CaptureThread"

    const-string v2, "Into capture time"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Lcom/mediatek/mock/hardware/CaptureThread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 140
    :cond_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 142
    :try_start_6
    const-string v1, "CaptureThread"

    const-string v2, "Into Idle time"

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-wide/16 v1, 0x4e20

    invoke-static {v1, v2}, Lcom/mediatek/mock/hardware/CaptureThread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method public declared-synchronized setCaptureNum(I)V
    .locals 3
    .parameter "capNum"

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    const-string v0, "CaptureThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CurrentCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget v0, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCurrentCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/mediatek/mock/hardware/CaptureThread;->mCapNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
