.class public Lcom/mediatek/mock/hardware/Mav;
.super Ljava/lang/Thread;
.source "Mav.java"


# static fields
.field private static final CAPTURE_INTERVAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Mav"


# instance fields
.field private mCapturePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentNum:I

.field private mHandler:Landroid/os/Handler;

.field private mInCapture:Z

.field private mMavCaptureNum:I

.field private mMerge:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 19
    const/16 v0, 0xf

    iput v0, p0, Lcom/mediatek/mock/hardware/Mav;->mMavCaptureNum:I

    .line 20
    iput v1, p0, Lcom/mediatek/mock/hardware/Mav;->mCurrentNum:I

    .line 21
    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mInCapture:Z

    .line 28
    iput-object p1, p0, Lcom/mediatek/mock/hardware/Mav;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private onPictureCreate()V
    .locals 10

    .prologue
    .line 71
    iget-object v7, p0, Lcom/mediatek/mock/hardware/Mav;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 72
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 73
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 74
    .local v0, b:[B
    const/4 v6, -0x1

    .line 76
    .local v6, size:I
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/mediatek/mock/hardware/Mav;->mCapturePath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    .end local v4           #out:Ljava/io/FileOutputStream;
    .local v5, out:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 78
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 81
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string v7, "Mav"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/mock/hardware/Mav;->mCapturePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    if-eqz v2, :cond_0

    .line 87
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_0
    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 96
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-void

    .line 86
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 87
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_3
    if-eqz v5, :cond_4

    .line 90
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v4, v5

    .line 94
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 92
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Mav"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 95
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 92
    .local v1, e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/IOException;
    const-string v7, "Mav"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 82
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 83
    .local v3, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v7, "Mav"

    const-string v8, "read blank.jpg in raw reault in error"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    if-eqz v2, :cond_5

    .line 87
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_5
    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    .line 92
    :catch_4
    move-exception v1

    .line 93
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "Mav"

    const-string v8, "close inputStream fail"

    invoke-static {v7, v8}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 86
    :goto_4
    if-eqz v2, :cond_6

    .line 87
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 89
    :cond_6
    if-eqz v4, :cond_7

    .line 90
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 94
    :cond_7
    :goto_5
    throw v7

    .line 92
    :catch_5
    move-exception v1

    .line 93
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "Mav"

    const-string v9, "close inputStream fail"

    invoke-static {v8, v9}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 82
    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 80
    :catch_7
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mInCapture:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/mediatek/mock/hardware/Mav;->mCurrentNum:I

    iget v2, p0, Lcom/mediatek/mock/hardware/Mav;->mMavCaptureNum:I

    if-ge v1, v2, :cond_1

    .line 47
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/mediatek/mock/hardware/Mav;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_1
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mInCapture:Z

    if-nez v1, :cond_3

    .line 58
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mMerge:Z

    if-eqz v1, :cond_4

    .line 59
    const-string v1, "Mav"

    const-string v2, "Save mpo file"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/mediatek/mock/hardware/Mav;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 61
    invoke-direct {p0}, Lcom/mediatek/mock/hardware/Mav;->onPictureCreate()V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/mock/hardware/Mav;->sendFrameMsg()V

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mMerge:Z

    .line 68
    :goto_2
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "Mav"

    const-string v2, "get Notify"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 54
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/mock/hardware/Mav;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/mediatek/mock/hardware/Mav;->sendFrameMsg()V

    goto :goto_0

    .line 66
    :cond_4
    const-string v1, "Mav"

    const-string v2, "clear frame buff"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public sendFrameMsg()V
    .locals 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/mediatek/mock/hardware/Mav;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x4000

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/mock/hardware/Mav;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    return-void
.end method

.method public setCapturePath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/mediatek/mock/hardware/Mav;->mCapturePath:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/mediatek/mock/hardware/Mav;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method public declared-synchronized startMAV(I)V
    .locals 2
    .parameter "num"

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    const-string v0, "Mav"

    const-string v1, "startMav"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput p1, p0, Lcom/mediatek/mock/hardware/Mav;->mMavCaptureNum:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/Mav;->mInCapture:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMAV(I)V
    .locals 3
    .parameter "merge"

    .prologue
    const/4 v0, 0x0

    .line 38
    monitor-enter p0

    :try_start_0
    const-string v1, "Mav"

    const-string v2, "stopMav"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/mock/hardware/Mav;->mInCapture:Z

    .line 40
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/mediatek/mock/hardware/Mav;->mMerge:Z

    .line 41
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
