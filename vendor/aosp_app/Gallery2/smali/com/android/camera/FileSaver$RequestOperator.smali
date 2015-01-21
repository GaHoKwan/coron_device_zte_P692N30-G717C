.class abstract Lcom/android/camera/FileSaver$RequestOperator;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/android/camera/SaveRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RequestOperator"
.end annotation


# instance fields
.field mBlendedTitle:Ljava/lang/String;

.field mData:[B

.field mDataSize:J

.field mDateTaken:J

.field mDisplayName:Ljava/lang/String;

.field mDuration:J

.field mFilePath:Ljava/lang/String;

.field mFileType:I

.field mFocusValueHigh:J

.field mFocusValueLow:J

.field mGroupId:J

.field mGroupIndex:I

.field mHeight:I

.field mIgnoreThumbnail:Z

.field mIndex:I

.field mListener:Lcom/android/camera/FileSaver$FileSaverListener;

.field mLivePhoto:I

.field mLocation:Landroid/location/Location;

.field mMimeType:Ljava/lang/String;

.field mMpoType:I

.field mOrientation:I

.field mResolution:Ljava/lang/String;

.field mStereoType:I

.field mTag:I

.field mTempFilePath:Ljava/lang/String;

.field mTempJpegRotation:I

.field mTempOutputFileFormat:I

.field mTempPictureType:I

.field mTitle:Ljava/lang/String;

.field mToatl:I

.field mUri:Landroid/net/Uri;

.field mWidth:I

.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mToatl:I

    .line 235
    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIndex:I

    .line 260
    iput v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mGroupIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;)V

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    array-length v0, v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getJpegRotation()I
    .locals 3

    .prologue
    .line 328
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJpegRotation mTempJpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getTempFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isIgnoreThumbnail()Z
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    return v0
.end method

.method public notifyListener()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    invoke-interface {v0, p0}, Lcom/android/camera/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/camera/SaveRequest;)V

    .line 352
    :cond_0
    return-void
.end method

.method public saveImageToDatabase(Lcom/android/camera/FileSaver$RequestOperator;)V
    .locals 5
    .parameter "r"

    .prologue
    .line 359
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 360
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "title"

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    iget-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mBlendedTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "_display_name"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "datetaken"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string v2, "mime_type"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "_data"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "_size"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v2, "stereo_type"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    iget-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 368
    const-string v2, "latitude"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 369
    const-string v2, "longitude"

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 371
    :cond_0
    const-string v2, "orientation"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mOrientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    const-string v2, "group_id"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mGroupId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    const-string v2, "group_index"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mGroupIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    const-string v2, "focus_value_high"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mFocusValueHigh:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    const-string v2, "focus_value_low"

    iget-wide v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mFocusValueLow:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 377
    const-string v2, "width"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 378
    const-string v2, "height"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v2, "mpo_type"

    iget v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mMpoType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    .line 382
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 383
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v2}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v2

    iget-object v3, p1, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_1
    :goto_1
    return-void

    .line 360
    :cond_2
    iget-object v2, p1, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 395
    .local v0, th:Ljava/lang/Throwable;
    const-string v2, "FileSaver"

    const-string v3, "Failed to write MediaStore"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public saveSync()V
    .locals 6

    .prologue
    .line 400
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    if-nez v3, :cond_1

    .line 401
    const-string v3, "FileSaver"

    const-string v4, "saveSync() why mData==null???"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/4 v1, 0x0

    .line 408
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 410
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 414
    if-eqz v2, :cond_3

    .line 416
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 419
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 417
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 419
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 411
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 412
    .restart local v0       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "FileSaver"

    const-string v4, "Failed to write image"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    if-eqz v1, :cond_0

    .line 416
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    const-string v3, "FileSaver"

    const-string v4, "saveRequest()"

    invoke-static {v3, v4, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 416
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 419
    :cond_2
    :goto_3
    throw v3

    .line 417
    :catch_3
    move-exception v0

    .line 418
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "FileSaver"

    const-string v5, "saveRequest()"

    invoke-static {v4, v5, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 411
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
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mData:[B

    .line 292
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDuration:J

    .line 310
    return-void
.end method

.method public setIgnoreThumbnail(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    .line 268
    return-void
.end method

.method public setIndex(II)V
    .locals 2
    .parameter "index"
    .parameter "total"

    .prologue
    .line 301
    iget v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mIndexArrary:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/camera/FileSaver;->access$300(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    iput p2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mToatl:I

    .line 305
    return-void
.end method

.method public setJpegRotation(I)V
    .locals 3
    .parameter "jpegRotation"

    .prologue
    .line 323
    const-string v0, "FileSaver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setJpegRotation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempJpegRotation:I

    .line 325
    return-void
.end method

.method public setListener(Lcom/android/camera/FileSaver$FileSaverListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mListener:Lcom/android/camera/FileSaver$FileSaverListener;

    .line 346
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    .line 338
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 296
    iput p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTag:I

    .line 297
    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setlivePhoto(I)V
    .locals 0
    .parameter "livephoto"

    .prologue
    .line 314
    iput p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLivePhoto:I

    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestOperator(mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTempFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIgnoreThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mIgnoreThumbnail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDataTaken(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 355
    iput-wide p1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 356
    return-void
.end method
