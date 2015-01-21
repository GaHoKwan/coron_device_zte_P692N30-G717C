.class public Lcom/mediatek/gallery3d/stereo/StereoConvertor;
.super Ljava/lang/Object;
.source "StereoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    }
.end annotation


# static fields
.field private static HIDE_FOLDER_WHERE_CLAUSE:Ljava/lang/String; = null

.field private static final INDEX_BUCKET_ID:I = 0x8

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x7

.field private static final INDEX_DATE_ADDED:I = 0x5

.field private static final INDEX_DATE_MODIFIED:I = 0x6

.field private static final INDEX_DATE_TAKEN:I = 0x4

.field private static final INDEX_DISPLAY_NAME:I = 0x2

.field private static final INDEX_HEIGHT:I = 0xb

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_MIME_TYPE:I = 0x3

.field private static final INDEX_SIZE_ID:I = 0x9

.field private static final INDEX_WIDTH:I = 0xa

.field public static final INVALID_BUCKET_ID:I = 0x0

.field public static final INVALID_LOCAL_PATH_END:Ljava/lang/String; = "/0"

.field private static INVALID_TIME_AFTER:J = 0x0L

.field private static INVALID_TIME_BEFORE:J = 0x0L

.field private static final JPG_POST_FIX:Ljava/lang/String; = ".jpg"

.field private static ONE_HOUR_IN_MILLIS:J = 0x0L

.field static final PROJECTION:[Ljava/lang/String; = null

.field public static final STEREO_CONVERTED_TO_2D_FOLDER:Ljava/lang/String; = "/.ConvertedTo2D/"

.field public static final STEREO_CONVERTED_TO_2D_FOLDER2:Ljava/lang/String; = "/.ConvertedTo2D"

.field private static final TAG:Ljava/lang/String; = "Gallery2/StereoConvertor"

.field private static final mConvertToJpeg:Z = true

.field private static sIsInitialized:Z = false

.field private static final whereClause:Ljava/lang/String; = "_data in (?,?) AND date_modified between ? AND ?"

.field private static final whereClauseId:Ljava/lang/String; = "_id=?"

.field private static final whereClausePath:Ljava/lang/String; = "_data=?"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 79
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->ONE_HOUR_IN_MILLIS:J

    .line 80
    sget-wide v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->ONE_HOUR_IN_MILLIS:J

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->INVALID_TIME_BEFORE:J

    .line 81
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->INVALID_TIME_AFTER:J

    .line 98
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "height"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->PROJECTION:[Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->HIDE_FOLDER_WHERE_CLAUSE:Ljava/lang/String;

    .line 230
    sput-boolean v4, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->sIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method public static convert2Dto3D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-object v1

    .line 129
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/stereo3d/Stereo3DConversion;->execute(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/ExceptionInInitializerError;
    const-string v2, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faile to convert be cause we got Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static convertMultiple(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 15
    .parameter "jc"
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Lcom/android/gallery3d/app/AbstractGalleryActivity;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 641
    .local v6, triggeredTime:J
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertMultiple:triggeredTime="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v5, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    move-object/from16 v1, p1

    .line 645
    .local v1, context:Landroid/content/Context;
    invoke-static {p0, v1, v5}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->loadAllTempFiles(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v12

    .line 648
    .local v12, manager:Lcom/android/gallery3d/data/DataManager;
    const/4 v11, 0x0

    .line 649
    .local v11, itemPath:Lcom/android/gallery3d/data/Path;
    const/4 v10, 0x0

    .line 651
    .local v10, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v9, 0x0

    .line 652
    .local v9, imageUri:Landroid/net/Uri;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v13, 0x0

    .line 684
    :goto_0
    return-object v13

    .line 653
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v13, newUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 655
    .local v2, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    invoke-virtual {v12, v2, v0}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v11

    .line 656
    invoke-virtual {v12, v11}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v10

    .end local v10           #item:Lcom/android/gallery3d/data/MediaItem;
    check-cast v10, Lcom/android/gallery3d/data/MediaItem;

    .line 657
    .restart local v10       #item:Lcom/android/gallery3d/data/MediaItem;
    invoke-static {v10}, Lcom/mediatek/gallery3d/stereo/StereoHelper;->isStereoImage(Lcom/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    .line 660
    :cond_2
    invoke-static {v2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->createFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 661
    .local v4, fileName:Ljava/lang/String;
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertMultiple:origin uri: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertMultiple:created file name:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {v10}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->findOrCreate(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)Landroid/net/Uri;

    move-result-object v9

    .line 665
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertMultiple:got new Uri="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-nez v9, :cond_3

    .line 667
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convertMultiple:convert failed, insert "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    move-object v9, v2

    .line 671
    :cond_3
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v4           #fileName:Ljava/lang/String;
    :goto_1
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    .end local v2           #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 673
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 682
    .end local v2           #uri:Landroid/net/Uri;
    :cond_6
    invoke-static {p0, v1, v5, v6, v7}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->triggerClearInvalidCache(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method public static convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "jc"
    .parameter "context"
    .parameter "origUri"
    .parameter "mimeType"

    .prologue
    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 610
    .local v6, triggeredTime:J
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSingle:triggeredTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v5, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    invoke-static {p0, p1, v5}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->loadAllTempFiles(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 615
    invoke-static {p2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->createFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, fileName:Ljava/lang/String;
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSingle:created file name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 618
    invoke-static/range {v0 .. v7}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->findOrCreate(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)Landroid/net/Uri;

    move-result-object v8

    .line 620
    .local v8, imageUri:Landroid/net/Uri;
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertSingle:imageUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {p0, p1, v5, v6, v7}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->triggerClearInvalidCache(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;J)V

    .line 625
    return-object v8
.end method

.method public static convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Lcom/android/gallery3d/data/MediaItem;)Landroid/net/Uri;
    .locals 3
    .parameter "jc"
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v0, 0x0

    .line 629
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 630
    :cond_0
    const-string v1, "Gallery2/StereoConvertor"

    const-string v2, "convertSingle: Got null parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_1
    :goto_0
    return-object v0

    .line 633
    :cond_2
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 635
    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->convertSingle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static createAndInsert(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 8
    .parameter "jc"
    .parameter "context"
    .parameter "origUri"
    .parameter "mimeType"
    .parameter "fileName"
    .parameter "triggeredTime"

    .prologue
    .line 566
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 568
    :cond_0
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "createAndInsert:got invalid params!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v0, 0x0

    .line 576
    :goto_0
    return-object v0

    .line 572
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 573
    .local v7, displayName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ConvertedTo2D/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, directPath:Ljava/lang/String;
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAndInsert:target file path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->saveAndInsertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "origUri"

    .prologue
    .line 462
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static deleteLocalFile(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 366
    if-nez p0, :cond_1

    .line 367
    const-string v1, "Gallery2/StereoConvertor"

    const-string v2, "deleteLocalFile:got null filePath"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "Gallery2/StereoConvertor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteLocalFile: delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 355
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 356
    :cond_0
    const-string v2, "Gallery2/StereoConvertor"

    const-string v3, "deleteRecord:got null param"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 360
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, count:I
    const-string v2, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " record delete for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deleteRecordAndFile(Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;)V
    .locals 3
    .parameter "context"
    .parameter "fileInfo"

    .prologue
    .line 377
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 378
    :cond_0
    const-string v1, "Gallery2/StereoConvertor"

    const-string v2, "deleteRecordAndFile()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, filePath:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->deleteRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 388
    invoke-static {v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->deleteLocalFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fake2dto3d(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "input"
    .parameter "drawColor"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/mediatek/gallery3d/data/DecodeHelper;->showBitmapInfo(Landroid/graphics/Bitmap;)V

    .line 141
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 143
    .local v6, stereo:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    .local v5, src:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 146
    .local v3, dst:Landroid/graphics/RectF;
    const/4 v8, 0x0

    invoke-virtual {v0, p0, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 147
    if-eqz p1, :cond_1

    .line 150
    const/16 v8, 0x64

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 151
    .local v2, colorint:I
    const/4 v8, 0x4

    new-array v1, v8, [I

    .line 152
    .local v1, colorArray:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v8, 0x4

    if-ge v4, v8, :cond_0

    .line 153
    aput v2, v1, v4

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/4 v8, 0x2

    const/4 v9, 0x2

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 156
    .local v7, tempOverlay:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    .restart local v5       #src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 161
    .end local v1           #colorArray:[I
    .end local v2           #colorint:I
    .end local v4           #i:I
    .end local v7           #tempOverlay:Landroid/graphics/Bitmap;
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 162
    .restart local v5       #src:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/RectF;

    .end local v3           #dst:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 163
    .restart local v3       #dst:Landroid/graphics/RectF;
    const/4 v8, 0x0

    invoke-virtual {v0, p0, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 164
    if-eqz p1, :cond_3

    .line 167
    const/16 v8, 0x64

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 168
    .restart local v2       #colorint:I
    const/4 v8, 0x4

    new-array v1, v8, [I

    .line 169
    .restart local v1       #colorArray:[I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    const/4 v8, 0x4

    if-ge v4, v8, :cond_2

    .line 170
    aput v2, v1, v4

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 172
    :cond_2
    const/4 v8, 0x2

    const/4 v9, 0x2

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 173
    .restart local v7       #tempOverlay:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    .end local v5           #src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 174
    .restart local v5       #src:Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v5, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 175
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    .end local v1           #colorArray:[I
    .end local v2           #colorint:I
    .end local v4           #i:I
    .end local v7           #tempOverlay:Landroid/graphics/Bitmap;
    :cond_3
    return-object v6
.end method

.method private static findFile(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    .locals 7
    .parameter
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 418
    :cond_1
    :goto_0
    return-object v3

    .line 408
    :cond_2
    const-string v4, "Gallery2/StereoConvertor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") //fileInfoList.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, 0x0

    .line 410
    .local v3, targetFileInfo:Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;

    .line 411
    .local v1, fileInfo:Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    invoke-virtual {v1, p1}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->equalByName(Ljava/lang/String;)Z

    move-result v0

    .line 412
    .local v0, equal:Z
    if-eqz v0, :cond_3

    .line 413
    move-object v3, v1

    .line 414
    const-string v4, "Gallery2/StereoConvertor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFile: found file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findOrCreate(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;J)Landroid/net/Uri;
    .locals 13
    .parameter "jc"
    .parameter "context"
    .parameter "origUri"
    .parameter "mimeType"
    .parameter "fileName"
    .parameter
    .parameter "triggeredTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;J)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 583
    .local p5, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 584
    :cond_0
    const-string v1, "Gallery2/StereoConvertor"

    const-string v2, "findOrCreate: invalid parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v12, 0x0

    .line 604
    :goto_0
    return-object v12

    .line 588
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, fileNameWithExt:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->findFile(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;

    move-result-object v3

    .line 590
    .local v3, targetFileInfo:Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x0

    goto :goto_0

    .line 592
    :cond_2
    const/4 v12, 0x0

    .line 593
    .local v12, imageUri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v5, p6

    .line 596
    invoke-static/range {v1 .. v6}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->updateExisting(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_0

    :cond_3
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p6

    .line 601
    invoke-static/range {v5 .. v11}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->createAndInsert(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    goto :goto_0
.end method

.method private static getBucketIdNotIn(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 260
    .local p0, hidePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 279
    :goto_0
    return-object v3

    .line 261
    :cond_1
    const/4 v3, 0x0

    .line 262
    .local v3, whereClause:Ljava/lang/String;
    const/4 v4, 0x0

    .line 263
    .local v4, whereClauseWithin:Ljava/lang/String;
    const/4 v1, 0x0

    .line 264
    .local v1, hidePathId:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    .local v0, hidePath:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 267
    const-string v5, "Gallery2/StereoConvertor"

    const-string v6, "getBucketIdNotIn:why we got null hidePath!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    if-nez v4, :cond_3

    .line 272
    move-object v4, v1

    goto :goto_1

    .line 274
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 277
    .end local v0           #hidePath:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket_id NOT IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    const-string v5, "Gallery2/StereoConvertor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBucketIdNotIn:whereClause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getFlattened(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "jc"
    .parameter "context"
    .parameter "origUri"
    .parameter "mimeType"

    .prologue
    .line 689
    new-instance v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;-><init>()V

    .line 690
    .local v1, params:Lcom/mediatek/gallery3d/util/MediatekFeature$Params;
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalFrame:Z

    .line 691
    const/16 v0, 0x800

    iput v0, v1, Lcom/mediatek/gallery3d/util/MediatekFeature$Params;->inOriginalTargetSize:I

    .line 692
    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mediatek/gallery3d/data/RequestHelper;->requestDataBundle(Lcom/android/gallery3d/util/ThreadPool$JobContext;Lcom/mediatek/gallery3d/util/MediatekFeature$Params;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;

    move-result-object v6

    .line 694
    .local v6, dataBundle:Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;
    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/mediatek/gallery3d/util/MediatekFeature$DataBundle;->originalFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHideFolderWhereClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->sIsInitialized:Z

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->initializeHiddenFolders()V

    .line 256
    :cond_0
    sget-object v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->HIDE_FOLDER_WHERE_CLAUSE:Ljava/lang/String;

    return-object v0
.end method

.method private static inInvalidTimeRange(Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;J)Z
    .locals 5
    .parameter "fileInfo"
    .parameter "triggeredTime"

    .prologue
    const/4 v2, 0x0

    .line 341
    if-nez p0, :cond_1

    .line 342
    const-string v3, "Gallery2/StereoConvertor"

    const-string v4, "inInvalidTimeRange:got null fileInfo!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    :goto_0
    return v2

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->lastModified()J

    move-result-wide v0

    .line 346
    .local v0, lastModified:J
    sget-wide v3, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->INVALID_TIME_BEFORE:J

    sub-long v3, p1, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    sget-wide v3, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->INVALID_TIME_AFTER:J

    add-long/2addr v3, p1

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 348
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static initializeHiddenFolders()V
    .locals 10

    .prologue
    .line 233
    sget-object v7, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    sget-boolean v7, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->sIsInitialized:Z

    if-eqz v7, :cond_1

    .line 234
    :cond_0
    const-string v7, "Gallery2/StereoConvertor"

    const-string v8, "initialize: invalid context"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .local v0, arr$:[Ljava/lang/String;
    .local v1, hidePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, i$:I
    .local v3, len$:I
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    .local v6, volums:[Ljava/lang/String;
    :goto_0
    return-void

    .line 237
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #hidePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v6           #volums:[Ljava/lang/String;
    :cond_1
    sget-object v7, Lcom/mediatek/gallery3d/util/MediatekFeature;->sContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 239
    .restart local v4       #storageManager:Landroid/os/storage/StorageManager;
    const-string v7, "Gallery2/StereoConvertor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize:StorageManagerEx.getDefaultPath()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .restart local v1       #hidePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v6

    .line 242
    .restart local v6       #volums:[Ljava/lang/String;
    move-object v0, v6

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 244
    .local v5, volum:Ljava/lang/String;
    const-string v7, "Gallery2/StereoConvertor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initialize:volum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/.ConvertedTo2D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 247
    .end local v5           #volum:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getBucketIdNotIn(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->HIDE_FOLDER_WHERE_CLAUSE:Ljava/lang/String;

    .line 248
    const/4 v7, 0x1

    sput-boolean v7, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->sIsInitialized:Z

    goto :goto_0
.end method

.method private static insertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Ljava/io/File;J)Landroid/net/Uri;
    .locals 4
    .parameter "jc"
    .parameter "cr"
    .parameter "image"
    .parameter "lastModified"

    .prologue
    .line 722
    const-wide/16 v1, 0x3e8

    div-long/2addr p3, v1

    .line 723
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 724
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v1, "_display_name"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "_data"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 729
    const-string v1, "date_added"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 730
    const-string v1, "date_modified"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 731
    const-string v1, "_size"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 732
    const-string v1, "Gallery2/StereoConvertor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertLocalImage:values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static insertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/File;Ljava/lang/String;Landroid/content/ContentResolver;II)Landroid/net/Uri;
    .locals 7
    .parameter "jc"
    .parameter "image"
    .parameter "fileName"
    .parameter "cr"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 740
    .local v0, now:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 741
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "title"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v3, "_display_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v3, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v3, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 746
    const-string v3, "date_added"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 747
    const-string v3, "date_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 748
    const-string v3, "width"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    const-string v3, "height"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    const-string v3, "_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 751
    const-string v3, "Gallery2/StereoConvertor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLocalImage:values="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private static loadAllTempFiles(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "jc"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 446
    .local p2, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 447
    :cond_0
    const-string v6, "Gallery2/StereoConvertor"

    const-string v7, "loadAllTempFiles: invalid params"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1
    return-void

    .line 450
    :cond_2
    const-string v6, "storage"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 452
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v5

    .line 453
    .local v5, volums:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 454
    .local v4, volum:Ljava/lang/String;
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 456
    :cond_3
    invoke-static {p2, v4}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->loadSubFiles(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static loadFileInfoList(Ljava/util/ArrayList;[Ljava/io/File;)V
    .locals 8
    .parameter
    .parameter "files"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 430
    :cond_0
    return-void

    .line 424
    :cond_1
    const-string v5, "Gallery2/StereoConvertor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFileInfoList() //files.length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move-object v0, p1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 427
    .local v1, file:Ljava/io/File;
    new-instance v2, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;

    invoke-direct {v2, v1}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;-><init>(Ljava/io/File;)V

    .line 428
    .local v2, fileInfo:Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static loadSubFiles(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "volum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const-string v3, "Gallery2/StereoConvertor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFileInfoList() //volum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.ConvertedTo2D/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, directPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 437
    .local v2, files:[Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 439
    if-eqz v2, :cond_0

    .line 440
    invoke-static {p0, v2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->loadFileInfoList(Ljava/util/ArrayList;[Ljava/io/File;)V

    goto :goto_0
.end method

.method private static queryFilePath(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;)Landroid/database/Cursor;
    .locals 8
    .parameter "jc"
    .parameter "cr"
    .parameter "targetFileInfo"

    .prologue
    const/4 v5, 0x0

    .line 501
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-object v5

    .line 502
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 503
    :cond_1
    const-string v0, "Gallery2/StereoConvertor"

    const-string v1, "queryFilePath:why got null params!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 507
    .local v6, filePath:Ljava/lang/String;
    if-nez v6, :cond_3

    .line 508
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFilePath:why we got null path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 511
    :cond_3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_data= ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 514
    .local v7, targetCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 515
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFilePath:did not queried any data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 517
    const/4 v7, 0x0

    :goto_1
    move-object v5, v7

    .line 521
    goto :goto_0

    .line 519
    :cond_4
    const-string v0, "Gallery2/StereoConvertor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryFilePath:got record for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static saveAndInsertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .parameter "jc"
    .parameter "context"
    .parameter "origUri"
    .parameter "mimeType"
    .parameter "targetSize"
    .parameter "directPath"
    .parameter "fileName"
    .parameter "displayName"

    .prologue
    .line 700
    const/4 v9, 0x0

    .line 701
    .local v9, imageUri:Landroid/net/Uri;
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->getFlattened(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 704
    .local v8, image:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_0

    const-string v1, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertedTo2D:saveAndInsertLocalImage:got ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    if-eqz v8, :cond_1

    .line 706
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 707
    .local v4, cr:Landroid/content/ContentResolver;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 708
    .local v7, directory:Ljava/io/File;
    move-object/from16 v0, p7

    invoke-static {p0, v8, v7, v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 709
    .local v2, saved:Ljava/io/File;
    if-eqz v2, :cond_2

    .line 710
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object/from16 v3, p6

    invoke-static/range {v1 .. v6}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->insertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/File;Ljava/lang/String;Landroid/content/ContentResolver;II)Landroid/net/Uri;

    move-result-object v9

    .line 715
    :goto_0
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    .end local v2           #saved:Ljava/io/File;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v7           #directory:Ljava/io/File;
    :cond_1
    return-object v9

    .line 713
    .restart local v2       #saved:Ljava/io/File;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v7       #directory:Ljava/io/File;
    :cond_2
    const-string v1, "Gallery2/StereoConvertor"

    const-string v3, "convertedTo2D:failed to save local image"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v2, 0x0

    .line 759
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p3}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 760
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    if-eqz p0, :cond_0

    .line 761
    new-instance v1, Lcom/mediatek/gallery3d/stereo/StereoConvertor$1;

    invoke-direct {v1, v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$1;-><init>(Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p0, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 768
    :cond_0
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 769
    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 771
    :goto_0
    invoke-interface {p0, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 772
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v1

    .line 769
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 771
    :catchall_0
    move-exception v1

    invoke-interface {p0, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 772
    invoke-static {p3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "jc"
    .parameter "bitmap"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 778
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_1

    .line 779
    const-string v5, "Gallery2/StereoConvertor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLocalImage: create directory file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 823
    :cond_0
    :goto_0
    return-object v0

    .line 784
    :cond_1
    const/4 v0, 0x0

    .line 785
    .local v0, candidate:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 787
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 788
    .local v1, created:Z
    if-nez v1, :cond_2

    .line 789
    const-string v5, "Gallery2/StereoConvertor"

    const-string v6, "saveLocalImage: error may happen when create new file"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    .line 798
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 791
    .end local v1           #created:Z
    :catch_0
    move-exception v2

    .line 792
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Gallery2/StereoConvertor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLocalImage: fail to create new file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    .line 794
    goto :goto_0

    .line 801
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #created:Z
    :cond_4
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 802
    invoke-virtual {v0, v8, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 805
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 807
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, v5, v3}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 818
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 819
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v4

    .line 820
    goto :goto_0

    .line 809
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 811
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 812
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Gallery2/StereoConvertor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLocalImage: fail to save image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 814
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v0, v4

    .line 815
    goto/16 :goto_0
.end method

.method private static triggerClearInvalidCache(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Ljava/util/ArrayList;J)V
    .locals 5
    .parameter "jc"
    .parameter "context"
    .parameter
    .parameter "triggeredTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/util/ThreadPool$JobContext;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 393
    .local p2, fileInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;>;"
    const-string v2, "Gallery2/StereoConvertor"

    const-string v3, "triggerClearInvalidCache()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-nez p2, :cond_1

    .line 403
    :cond_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;

    .line 396
    .local v0, fileInfo:Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;
    invoke-static {v0, p3, p4}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->inInvalidTimeRange(Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    :cond_3
    const-string v2, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "triggerClearInvalidCache: clear file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {p1, v0}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->deleteRecordAndFile(Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;)V

    goto :goto_0
.end method

.method private static updateDatabase(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;J)Landroid/net/Uri;
    .locals 6
    .parameter "jc"
    .parameter "context"
    .parameter "targetFileInfo"
    .parameter "triggeredTime"

    .prologue
    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, imageUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v3, 0x0

    .line 532
    .local v3, targetCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, v0, p2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->queryFilePath(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;)Landroid/database/Cursor;

    move-result-object v3

    .line 533
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 544
    if-eqz v3, :cond_0

    .line 545
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v3, 0x0

    .line 549
    :cond_0
    :goto_0
    return-object v4

    .line 534
    :cond_1
    if-eqz v3, :cond_3

    .line 535
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 536
    .local v1, id:I
    invoke-static {p0, v0, v1, p3, p4}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->updateDatabase(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;IJ)V

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 544
    .end local v1           #id:I
    :goto_1
    if-eqz v3, :cond_2

    .line 545
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v3, 0x0

    :cond_2
    move-object v4, v2

    .line 549
    goto :goto_0

    .line 540
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-static {p0, v0, v4, p3, p4}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->insertLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Ljava/io/File;J)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 544
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 545
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 546
    const/4 v3, 0x0

    :cond_4
    throw v4
.end method

.method private static updateDatabase(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;IJ)V
    .locals 7
    .parameter "jc"
    .parameter "cr"
    .parameter "id"
    .parameter "triggeredTime"

    .prologue
    .line 483
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    :goto_0
    return-void

    .line 484
    :cond_0
    if-nez p1, :cond_1

    .line 485
    const-string v2, "Gallery2/StereoConvertor"

    const-string v3, "updateDatabase:why we got null content resolver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    const-string v2, "date_added"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v2, "date_modified"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 496
    .local v0, count:I
    const-string v2, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows updated for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static updateExisting(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 5
    .parameter "jc"
    .parameter "context"
    .parameter "targetFileInfo"
    .parameter "fileNameWithExt"
    .parameter "triggeredTime"

    .prologue
    .line 556
    invoke-virtual {p2, p4, p5}, Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;->setLastModified(J)Z

    move-result v1

    .line 557
    .local v1, suc:Z
    const-string v2, "Gallery2/StereoConvertor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateExisting: setLastModified returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, imageUri:Landroid/net/Uri;
    invoke-static {p0, p1, p2, p4, p5}, Lcom/mediatek/gallery3d/stereo/StereoConvertor;->updateDatabase(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Context;Lcom/mediatek/gallery3d/stereo/StereoConvertor$FileInfo;J)Landroid/net/Uri;

    move-result-object v0

    .line 561
    return-object v0
.end method
