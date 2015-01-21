.class Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
.super Landroid/os/AsyncTask;
.source "WidgetActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranscodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DURATION_DEFAULT:I = 0x2710

.field private static final RESULT_INVALID_VIDEO:I = -0x2

.field private static final RESULT_OK:I = 0x0

.field private static final RESULT_RESOULTION_TOO_HIGH:I = -0x1


# instance fields
.field private mDuration:J

.field private mResult:I

.field private mTargetRect:Landroid/graphics/Rect;

.field private mTranscode:Z

.field private mTranscoderHandle:J

.field final synthetic this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/videofavorites/WidgetActionActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    .line 681
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/videofavorites/WidgetActionActivity;Lcom/mediatek/videofavorites/WidgetActionActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;-><init>(Lcom/mediatek/videofavorites/WidgetActionActivity;)V

    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 4
    .parameter "dateTaken"

    .prologue
    .line 685
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 686
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 689
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateOutputPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "inputName"

    .prologue
    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 791
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->createName(J)Ljava/lang/String;

    move-result-object v4

    .line 792
    .local v4, postfix:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    .local v3, inputFile:Ljava/io/File;
    sget-object v6, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->prepareFolder(Ljava/lang/String;)V

    .line 795
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/mediatek/videofavorites/Storage;->TRANSCODE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .local v5, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 798
    .local v2, i:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    .line 799
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 801
    :cond_0
    invoke-virtual {v5, v2, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getSourceVideoInfo(Ljava/lang/String;Landroid/graphics/Rect;)J
    .locals 16
    .parameter "filePath"
    .parameter "outRect"

    .prologue
    .line 707
    const/4 v10, 0x0

    .line 708
    .local v10, strWidth:Ljava/lang/String;
    const/4 v9, 0x0

    .line 709
    .local v9, strHeight:Ljava/lang/String;
    const/4 v8, 0x0

    .line 710
    .local v8, strDuration:Ljava/lang/String;
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 711
    .local v7, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v5, 0x0

    .line 715
    .local v5, hasVideo:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_0

    .line 717
    const-wide/16 v1, 0x0

    .line 758
    :goto_0
    return-wide v1

    .line 721
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 723
    const/16 v12, 0x11

    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 725
    if-nez v5, :cond_1

    .line 726
    const-string v12, "WidgetAction"

    const-string v13, "getSourceVideoRect, no videoTrack"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const-wide/16 v1, 0x0

    .line 740
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_0

    .line 730
    :cond_1
    const/16 v12, 0x12

    :try_start_1
    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    .line 732
    const/16 v12, 0x13

    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 734
    const/16 v12, 0x9

    invoke-virtual {v7, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 740
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 743
    :goto_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_3

    .line 744
    :cond_2
    const-string v12, "WidgetAction"

    const-string v13, "invalid video width/height"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v3

    .line 738
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v12, "WidgetAction"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 740
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v12

    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v12

    .line 748
    :cond_3
    invoke-static {v10}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 749
    .local v11, width:I
    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 750
    .local v6, height:I
    if-eqz v11, :cond_4

    if-nez v6, :cond_5

    .line 751
    :cond_4
    const-string v12, "WidgetAction"

    const-string v13, "video width/height is 0"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 754
    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->longValue()J

    move-result-wide v1

    .line 756
    .local v1, duration:J
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v11, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method

.method private getTargetRect(IIII)Landroid/graphics/Rect;
    .locals 7
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v6, 0x0

    .line 762
    int-to-float v4, p1

    int-to-float v5, p2

    div-float v1, v4, v5

    .line 763
    .local v1, rSrc:F
    int-to-float v4, p3

    int-to-float v5, p4

    div-float v0, v4, v5

    .line 770
    .local v0, rMax:F
    cmpg-float v4, v1, v0

    if-gez v4, :cond_1

    .line 771
    move v3, p3

    .line 772
    .local v3, targetWidth:I
    mul-int v4, v3, p2

    div-int v2, v4, p1

    .line 784
    .local v2, targetHeight:I
    :cond_0
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 774
    .end local v2           #targetHeight:I
    .end local v3           #targetWidth:I
    :cond_1
    move v2, p4

    .line 775
    .restart local v2       #targetHeight:I
    mul-int v4, v2, p1

    div-int v3, v4, p2

    .line 778
    .restart local v3       #targetWidth:I
    rem-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_0

    .line 779
    add-int/lit8 v4, v3, -0xf

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v3, v4, 0x4

    .line 780
    mul-int v4, v3, p2

    div-int v2, v4, p1

    goto :goto_0
.end method

.method private prepareFolder(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 693
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 699
    const-string v1, "WidgetAction"

    const-string v2, "folder creation failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .locals 20
    .parameter "uris"

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/mediatek/videofavorites/WidgetActionActivity;->getRealPathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 817
    .local v4, inputPath:Ljava/lang/String;
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    .line 818
    .local v15, srcRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v15}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->getSourceVideoInfo(Ljava/lang/String;Landroid/graphics/Rect;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    .line 820
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    .line 821
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    .line 822
    const/4 v5, 0x0

    .line 857
    :cond_0
    :goto_0
    return-object v5

    .line 824
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    const-wide/16 v6, 0x2710

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 825
    const-wide/16 v2, 0x2710

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    .line 828
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 830
    .local v16, startTime:J
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/16 v3, 0x140

    if-le v2, v3, :cond_3

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_5

    .line 832
    :cond_3
    move-object v5, v4

    .line 850
    .local v5, outputPath:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v16

    .line 852
    .local v18, timecost:J
    const-string v2, "WidgetAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transcode spend(ms):"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    if-eqz v2, :cond_0

    .line 854
    const/4 v5, 0x0

    goto :goto_0

    .line 834
    .end local v5           #outputPath:Ljava/lang/String;
    .end local v18           #timecost:J
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscode:Z

    .line 835
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->generateOutputPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .restart local v5       #outputPath:Ljava/lang/String;
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/16 v6, 0x140

    const/16 v7, 0xf0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->getTargetRect(IIII)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    .line 838
    const-string v2, "WidgetAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srcRect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " targetRect: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x2710

    invoke-static/range {v2 .. v13}, Lcom/mediatek/transcode/VideoTranscode;->transcode(JLjava/lang/String;Ljava/lang/String;JJJJ)I

    move-result v14

    .line 843
    .local v14, result:I
    const-string v2, "WidgetAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transcode result: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    if-eqz v14, :cond_4

    .line 846
    const/high16 v2, -0x8000

    if-ne v14, v2, :cond_6

    const/4 v2, -0x1

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    goto/16 :goto_1

    :cond_6
    const/4 v2, -0x2

    goto :goto_2
.end method

.method public forceCancel()Z
    .locals 4

    .prologue
    .line 923
    iget-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 924
    const/4 v0, 0x0

    .line 927
    :goto_0
    return v0

    .line 926
    :cond_0
    iget-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    invoke-static {v0, v1}, Lcom/mediatek/transcode/VideoTranscode;->cancel(J)V

    .line 927
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    .line 916
    .local v0, s:Landroid/os/AsyncTask$Status;
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 917
    iget-wide v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    invoke-static {v1, v2}, Lcom/mediatek/transcode/VideoTranscode;->getProgress(J)I

    move-result v1

    .line 919
    :goto_0
    return v1

    :cond_0
    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 13
    .parameter "outPathName"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v8, 0x5

    .line 861
    iget-wide v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    invoke-static {v9, v10}, Lcom/mediatek/transcode/VideoTranscode;->deinit(J)V

    .line 862
    iput-wide v11, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    .line 863
    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v9, v9, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    if-nez v9, :cond_1

    .line 864
    const-string v8, "WidgetAction"

    const-string v9, "cancelled due to dialog dismissed"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    if-eqz p1, :cond_0

    .line 866
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 867
    .local v5, outFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 912
    .end local v5           #outFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 873
    iget v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    if-nez v9, :cond_2

    if-nez p1, :cond_4

    .line 874
    :cond_2
    const-string v9, "WidgetAction"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mResult:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    const/4 v8, 0x4

    :cond_3
    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 880
    :cond_4
    iget-boolean v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscode:Z

    if-eqz v9, :cond_6

    .line 881
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 882
    .local v6, v:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 883
    .local v0, dateTaken:J
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 884
    .local v2, fileLength:J
    cmp-long v9, v2, v11

    if-nez v9, :cond_5

    .line 885
    const-string v9, "WidgetAction"

    const-string v10, "File length is 0, transcode failed or disk full, don\'t insert it"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 890
    :cond_5
    const-string v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 893
    const-string v8, "_size"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 894
    const-string v8, "_data"

    invoke-virtual {v6, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v8, "_display_name"

    invoke-virtual {v6, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v8, "mime_type"

    const-string v9, "video/mp4"

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v8, "duration"

    iget-wide v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mDuration:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 899
    const-string v8, "content://media/external/video/media"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 900
    .local v7, videoTable:Landroid/net/Uri;
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 901
    .local v4, inserted:Landroid/net/Uri;
    if-nez v4, :cond_6

    .line 902
    const-string v8, "WidgetAction"

    const-string v9, "insert failed"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    .end local v0           #dateTaken:J
    .end local v2           #fileLength:J
    .end local v4           #inserted:Landroid/net/Uri;
    .end local v6           #v:Landroid/content/ContentValues;
    .end local v7           #videoTable:Landroid/net/Uri;
    :cond_6
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    #setter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;
    invoke-static {v8, v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$502(Lcom/mediatek/videofavorites/WidgetActionActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 907
    const-string v8, "WidgetAction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPostExecute(), video inserted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$500(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v9, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$500(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/net/Uri;

    move-result-object v9

    #calls: Lcom/mediatek/videofavorites/WidgetActionActivity;->insertOrUpdateVideoUriToProvider(Landroid/net/Uri;)V
    invoke-static {v8, v9}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$700(Lcom/mediatek/videofavorites/WidgetActionActivity;Landroid/net/Uri;)V

    .line 909
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #calls: Lcom/mediatek/videofavorites/WidgetActionActivity;->notifyDataUpdate()V
    invoke-static {v8}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$800(Lcom/mediatek/videofavorites/WidgetActionActivity;)V

    .line 910
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v8, v8, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lcom/mediatek/videofavorites/ProgressDialogFragment;->setProgress(I)V

    .line 911
    iget-object v8, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 807
    invoke-static {}, Lcom/mediatek/transcode/VideoTranscode;->init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->mTranscoderHandle:J

    .line 808
    iget-object v0, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 809
    return-void
.end method
