.class Lcom/android/camera/FileSaver$VideoOperator;
.super Lcom/android/camera/FileSaver$RequestOperator;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/FileSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/FileSaver;


# direct methods
.method private constructor <init>(Lcom/android/camera/FileSaver;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "fileType"
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/FileSaver$RequestOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .line 705
    iput p2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    .line 706
    iput p3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    .line 707
    iput-object p4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mResolution:Ljava/lang/String;

    .line 708
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/FileSaver;IILjava/lang/String;Lcom/android/camera/FileSaver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 703
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/FileSaver$VideoOperator;-><init>(Lcom/android/camera/FileSaver;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addRequest()V
    .locals 5

    .prologue
    .line 719
    const-string v3, "FileSaver"

    const-string v4, "videoOperator,addRequest"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #calls: Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V
    invoke-static {v3, p0}, Lcom/android/camera/FileSaver;->access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V

    .line 723
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSmartBookEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v3}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSmartBookPluggedState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 724
    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/FileSaver;->access$1100(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 725
    const-string v3, "FileSaver"

    const-string v4, "in videoOperator addRequest, the mQueue is empty"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_0
    return-void

    .line 729
    :cond_0
    monitor-enter p0

    .line 730
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/FileSaver;->access$1100(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/SaveRequest;

    .line 731
    .local v2, r:Lcom/android/camera/SaveRequest;
    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/FileSaver;->access$1100(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 732
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 733
    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->saveRequest()V

    .line 735
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 736
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-interface {v2}, Lcom/android/camera/SaveRequest;->notifyListener()V

    .line 738
    iget-object v3, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;
    invoke-static {v3}, Lcom/android/camera/FileSaver;->access$1200(Lcom/android/camera/FileSaver;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/FileSaver$FileSaverListener;

    .line 739
    .local v1, listener:Lcom/android/camera/FileSaver$FileSaverListener;
    invoke-interface {v1, v2}, Lcom/android/camera/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/camera/SaveRequest;)V

    goto :goto_1

    .line 736
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/camera/FileSaver$FileSaverListener;
    .end local v2           #r:Lcom/android/camera/SaveRequest;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 742
    :cond_2
    const-string v3, "FileSaver"

    const-string v4, "videoOperator,addRequest end"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createThumbnail(I)Lcom/android/camera/Thumbnail;
    .locals 4
    .parameter "thumbnailWidth"

    .prologue
    .line 785
    const/4 v0, 0x0

    .line 786
    .local v0, thumb:Lcom/android/camera/Thumbnail;
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLivePhoto:I

    invoke-static {v2, p1, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 788
    .local v1, videoFrame:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 789
    iget-object v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/camera/Thumbnail;->createThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/camera/Thumbnail;

    move-result-object v0

    .line 792
    .end local v1           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method public prepareRequest()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    .line 712
    iget-object v0, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFileType:I

    iget-wide v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    move v5, v4

    #calls: Lcom/android/camera/FileSaver;->createName(IJII)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Lcom/android/camera/FileSaver;->access$800(Lcom/android/camera/FileSaver;IJII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v2, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    #calls: Lcom/android/camera/FileSaver;->convertOutputFormatToFileExt(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/camera/FileSaver;->access$900(Lcom/android/camera/FileSaver;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    iget v1, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempOutputFileFormat:I

    #calls: Lcom/android/camera/FileSaver;->convertOutputFormatToMimeType(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/FileSaver;->access$1000(Lcom/android/camera/FileSaver;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    .line 716
    return-void
.end method

.method public saveRequest()V
    .locals 8

    .prologue
    .line 748
    const-string v4, "FileSaver"

    const-string v5, "saveRequest,VideoOperator,write to DB "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTempFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, temp:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, file:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 753
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    .line 755
    new-instance v3, Landroid/content/ContentValues;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 756
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "title"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v4, "_display_name"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v4, "datetaken"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDateTaken:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    const-string v4, "mime_type"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v4, "_data"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v4, "_size"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDataSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 762
    const-string v4, "stereo_type"

    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mStereoType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    iget-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    if-eqz v4, :cond_0

    .line 764
    const-string v4, "latitude"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 765
    const-string v4, "longitude"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 767
    :cond_0
    const-string v4, "resolution"

    iget-object v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mResolution:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v4, "duration"

    iget-wide v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    const-string v4, "is_live_photo"

    iget v5, p0, Lcom/android/camera/FileSaver$RequestOperator;->mLivePhoto:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    iget-object v4, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/camera/FileSaver;->access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    .line 771
    iget-object v4, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v4}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ActivityBase;->addSecureAlbumItemIfNeeded(ZLandroid/net/Uri;)V

    .line 772
    iget-object v4, p0, Lcom/android/camera/FileSaver$VideoOperator;->this$0:Lcom/android/camera/FileSaver;

    #getter for: Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;
    invoke-static {v4}, Lcom/android/camera/FileSaver;->access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.action.NEW_VIDEO"

    iget-object v7, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v0           #file:Ljava/io/File;
    .end local v1           #temp:Ljava/io/File;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    const-string v4, "FileSaver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "end of wirte to DB,mUri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/FileSaver$RequestOperator;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return-void

    .line 773
    :catch_0
    move-exception v2

    .line 779
    .local v2, th:Ljava/lang/Throwable;
    const-string v4, "FileSaver"

    const-string v5, "Failed to write MediaStore"

    invoke-static {v4, v5, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
