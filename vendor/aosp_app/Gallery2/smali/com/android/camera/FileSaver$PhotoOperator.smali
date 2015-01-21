.class Lcom/android/camera/FileSaver$PhotoOperator;
.super Lcom/android/camera/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    .line 442
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;)V

    return-void
.end method

.method private saveImageToSDCard(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .parameter "tempFilePath"
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 562
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 563
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 564
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 565
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 569
    if-eqz v2, :cond_2

    .line 571
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 577
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 572
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 574
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 566
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 567
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "FileSaver"

    const-string v4, "Failed to write image"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 569
    if-eqz v1, :cond_0

    .line 571
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 572
    :catch_2
    move-exception v0

    .line 573
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 569
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 571
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 574
    :cond_1
    :goto_3
    throw v3

    .line 572
    :catch_3
    move-exception v0

    .line 573
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "FileSaver"

    const-string v5, "saveRequest()"

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 569
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 566
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private saveLastBlendedImageToSDCard()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 581
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mBlendedTitle:Ljava/lang/String;

    iget v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v3, v4}, Lcom/android/camera/Storage;->generateFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 582
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 583
    const-string v3, "FileSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDisplayName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v1, 0x0

    .line 586
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 587
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 588
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 592
    if-eqz v2, :cond_2

    .line 594
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 600
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/camera/FileSaver$RequestOperator;->setIgnoreThumbnail(Z)V

    .line 601
    return-void

    .line 595
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 596
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()[blended]"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 597
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 589
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 590
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "FileSaver"

    const-string v4, "Failed to write image[blended]"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 592
    if-eqz v1, :cond_0

    .line 594
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 595
    :catch_2
    move-exception v0

    .line 596
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()[blended]"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 592
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 594
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 597
    :cond_1
    :goto_3
    throw v3

    .line 595
    :catch_3
    move-exception v0

    .line 596
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "FileSaver"

    const-string v5, "saveRequest()[blended]"

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 592
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 589
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public addRequest()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    if-nez v1, :cond_0

    .line 455
    const-string v1, "FileSaver"

    const-string v2, "addRequest() why mData==null???"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 461
    .local v0, s:Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 462
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 463
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #calls: Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V
    invoke-static {v1, p0}, Lcom/android/camera/FileSaver;->access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V

    goto :goto_0
.end method

.method public copyRequest()Lcom/android/camera/FileSaver$PhotoOperator;
    .locals 4

    .prologue
    .line 467
    new-instance v0, Lcom/android/camera/FileSaver$PhotoOperator;

    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    invoke-direct {v0, v1}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;)V

    .line 468
    .local v0, newRequest:Lcom/android/camera/FileSaver$PhotoOperator;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 469
    const-string v1, "FileSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyRequest,mTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-nez v1, :cond_0

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 475
    :goto_0
    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    iput-object v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 476
    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    iput v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    .line 477
    return-object v0

    .line 473
    :cond_0
    iget-wide v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    iput-wide v1, v0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    goto :goto_0
.end method

.method public createThumbnail(I)Lcom/android/camera/Thumbnail;
    .locals 13
    .parameter "thumbnailWidth"

    .prologue
    .line 605
    const/4 v6, 0x0

    .line 606
    .local v6, thumb:Lcom/android/camera/Thumbnail;
    iget-object v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    .line 609
    const/4 v4, 0x1

    .line 610
    .local v4, inSampleSize:I
    iget v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 614
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v9}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, exif:Landroid/media/ExifInterface;
    const-string v9, "ImageWidth"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    .line 616
    .local v7, width:I
    const-string v9, "ImageLength"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 617
    .local v2, height:I
    int-to-double v9, v7

    iget-object v11, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v11}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/Camera;->getPreviewFrameWidth()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v8, v9

    .line 618
    .local v8, widthRatio:I
    int-to-double v9, v2

    iget-object v11, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v11}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/Camera;->getPreviewFrameHeight()I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v3, v9

    .line 619
    .local v3, heightRatio:I
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 629
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #height:I
    .end local v3           #heightRatio:I
    .end local v7           #width:I
    .end local v8           #widthRatio:I
    :goto_0
    iget-object v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    iget v10, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    iget-object v11, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-static {v9, v10, v4, v11}, Lcom/android/camera/Thumbnail;->createThumbnail([BIILandroid/net/Uri;)Lcom/android/camera/Thumbnail;

    move-result-object v6

    .line 631
    .end local v4           #inSampleSize:I
    :cond_0
    const-string v9, "FileSaver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createThumbnail("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") mOrientation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mUri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v6

    .line 620
    .restart local v4       #inSampleSize:I
    :catch_0
    move-exception v0

    .line 621
    .local v0, ex:Ljava/io/IOException;
    const-string v9, "FileSaver"

    const-string v10, "cannot read exif"

    invoke-static {v9, v10, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 625
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    iget v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    int-to-double v9, v9

    int-to-double v11, p1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    .line 626
    .local v5, ratio:I
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    goto :goto_0
.end method

.method public prepareRequest()V
    .locals 3

    .prologue
    .line 445
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 447
    iget-object v1, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getLocationManager()Lcom/android/camera/LocationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 448
    .local v0, loc:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 451
    :cond_0
    return-void
.end method

.method public refactoerTitle()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    .line 481
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eqz v0, :cond_3

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 484
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mBlendedTitle:Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 488
    :cond_0
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-ne v0, v2, :cond_1

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "IT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Storage;->prepareMotionTrackFolder(Ljava/lang/String;)V

    .line 493
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eq v0, v2, :cond_2

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%02d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 498
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/FileSaver$RequestOperator;->setIgnoreThumbnail(Z)V

    .line 501
    :cond_3
    return-void
.end method

.method public saveRequest()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 506
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mIndexArrary:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/FileSaver;->access$300(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    .line 508
    iget-object v0, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mIndexArrary:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/FileSaver;->access$300(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v7

    .line 512
    .local v7, orientation:I
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getGroupId([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mGroupId:J

    .line 513
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getGroupIndex([B)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mGroupIndex:I

    .line 514
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getFocusValueHigh([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFocusValueHigh:J

    .line 515
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-static {v0}, Lcom/android/camera/Exif;->getFocusValueLow([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFocusValueLow:J

    .line 518
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    add-int/2addr v0, v7

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_6

    .line 519
    iget v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 520
    .local v8, width:I
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 525
    .local v6, height:I
    :goto_0
    iput v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .line 526
    iput v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 527
    iput v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    .line 528
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    .line 529
    invoke-static {}, Lcom/mediatek/camera/FrameworksClassFactory;->isMockCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eqz v0, :cond_2

    .line 530
    :cond_1
    iput v9, p0, Lcom/android/camera/FileSaver$RequestOperator;->mGroupIndex:I

    .line 532
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FileSaver$PhotoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-wide v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    iget v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mGroupIndex:I

    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    #calls: Lcom/android/camera/FileSaver;->createName(IJII)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/camera/FileSaver;->access$800(Lcom/android/camera/FileSaver;IJII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 533
    invoke-virtual {p0}, Lcom/android/camera/FileSaver$PhotoOperator;->refactoerTitle()V

    .line 535
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 536
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 542
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/FileSaver$PhotoOperator;->saveImageToSDCard(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 543
    const-string v1, "FileSaver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFilePath = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mTotal = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mToatl:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " == "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mindex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",mTag == BLENDED_IMAGE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-ne v0, v10, :cond_8

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mToatl:I

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-ne v0, v10, :cond_3

    .line 545
    invoke-direct {p0}, Lcom/android/camera/FileSaver$PhotoOperator;->saveLastBlendedImageToSDCard()V

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateMimetype(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 548
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v0}, Lcom/android/camera/Storage;->generateMpoType(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMpoType:I

    .line 549
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-ne v0, v10, :cond_5

    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mToatl:I

    if-ne v0, v1, :cond_5

    .line 550
    :cond_4
    invoke-virtual {p0, p0}, Lcom/android/camera/FileSaver$RequestOperator;->saveImageToDatabase(Lcom/android/camera/FileSaver$RequestOperator;)V

    .line 552
    :cond_5
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveRequest() mTempJpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 522
    .end local v6           #height:I
    .end local v8           #width:I
    :cond_6
    iget v8, p0, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    .line 523
    .restart local v8       #width:I
    iget v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    .restart local v6       #height:I
    goto/16 :goto_0

    .line 538
    :cond_7
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempPictureType:I

    invoke-static {v0, v1}, Lcom/android/camera/Storage;->generateFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    move v0, v9

    .line 543
    goto :goto_2
.end method
