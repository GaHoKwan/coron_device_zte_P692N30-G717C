.class public Lcom/mediatek/gallery3d/conshots/ContainerHelper;
.super Ljava/lang/Object;
.source "ContainerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/conshots/ContainerHelper$1;,
        Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectListener;,
        Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;
    }
.end annotation


# static fields
.field public static final CONSHOTS_FOLDER:Ljava/lang/String; = "/.ConShots"

.field public static final CONTAINER_ANIMATION_DELAY:I = 0x190

.field public static final CONTAINER_ANIMATION_LAST_REPEAT:I = 0x4

.field public static final CONTAINER_ANIMATION_MAX_COUNT:I = 0xa

.field public static final INDEX_GROUP_ID_INVALID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gallery2/ContainerHelper"

.field private static mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private static mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field private static mDisableTexture:Lcom/android/gallery3d/ui/ResourceTexture;

.field private static mIsAllBestShot:Z

.field private static mSource:Lcom/android/gallery3d/data/MediaSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 49
    sput-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mDisableTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$100()Lcom/android/gallery3d/data/MediaSet;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private static alreadyMarkBestShot()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    sget-object v5, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    sget-object v6, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    .local v2, mediaItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 152
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    :goto_0
    return v3

    .line 154
    .restart local v1       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getIsBestShot()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getIsBestShot()I

    move-result v5

    if-ne v5, v3, :cond_0

    goto :goto_0

    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_3
    move v3, v4

    .line 159
    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "fromPath"
    .parameter "toPath"

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, bytesum:I
    const/4 v1, 0x0

    .line 55
    .local v1, byteread:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 56
    .local v4, fsFrom:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, fsTo:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 58
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 59
    add-int/2addr v2, v1

    .line 60
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v0           #buffer:[B
    .end local v4           #fsFrom:Ljava/io/FileInputStream;
    .end local v5           #fsTo:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 64
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .end local v3           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 62
    .restart local v0       #buffer:[B
    .restart local v4       #fsFrom:Ljava/io/FileInputStream;
    .restart local v5       #fsTo:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decoderBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "filePath"
    .parameter "targetSize"

    .prologue
    .line 258
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 260
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 261
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1, v2, p1}, Lcom/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 265
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getAnimationArray(Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaItem;)Ljava/util/ArrayList;
    .locals 12
    .parameter "app"
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/app/GalleryApp;",
            "Lcom/android/gallery3d/data/MediaItem;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 203
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isContainer()Z

    move-result v9

    if-nez v9, :cond_1

    .line 243
    :cond_0
    return-object v7

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v10

    move-object v9, p1

    check-cast v9, Lcom/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/LocalMediaItem;->getBucketId()I

    move-result v9

    invoke-static {p0, v10, v11, v9}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getConShotSet(Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .line 212
    .local v5, mediaSet:Lcom/android/gallery3d/data/MediaSet;
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    .line 215
    .local v3, itemNum:I
    const/16 v1, 0xa

    .line 216
    .local v1, animationMaxCount:I
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v3}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 218
    .local v6, origineItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v9

    if-eqz v9, :cond_3

    if-le v3, v1, :cond_3

    .line 222
    int-to-float v9, v3

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    int-to-float v10, v1

    div-float v8, v9, v10

    .line 223
    .local v8, space:F
    move v0, v1

    .line 229
    .local v0, animationCount:I
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v7, ountputItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 232
    int-to-float v9, v2

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v9, v0, -0x1

    if-ne v2, v9, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 234
    const/4 v4, 0x1

    .local v4, j:I
    :goto_3
    const/4 v9, 0x4

    if-ge v4, v9, :cond_4

    .line 235
    int-to-float v9, v2

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 207
    .end local v0           #animationCount:I
    .end local v1           #animationMaxCount:I
    .end local v2           #i:I
    .end local v3           #itemNum:I
    .end local v4           #j:I
    .end local v5           #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v6           #origineItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v7           #ountputItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v8           #space:F
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v9, p1

    check-cast v9, Lcom/android/gallery3d/data/LocalMediaItem;

    iget v9, v9, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    invoke-static {p0, v10, v9}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->getMotionTrackSet(Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    .restart local v5       #mediaSet:Lcom/android/gallery3d/data/MediaSet;
    goto :goto_0

    .line 225
    .restart local v1       #animationMaxCount:I
    .restart local v3       #itemNum:I
    .restart local v6       #origineItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_3
    const/high16 v8, 0x3f80

    .line 226
    .restart local v8       #space:F
    move v0, v3

    .restart local v0       #animationCount:I
    goto :goto_1

    .line 231
    .restart local v2       #i:I
    .restart local v7       #ountputItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getConShotDspIndex(Lcom/android/gallery3d/data/MediaSet;J)I
    .locals 6
    .parameter "mediaset"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 250
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 251
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalImage;

    .line 252
    .local v1, item:Lcom/android/gallery3d/data/LocalImage;
    iget v4, v1, Lcom/android/gallery3d/data/LocalMediaItem;->id:I

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 254
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/gallery3d/data/LocalImage;
    :goto_1
    return v0

    .line 250
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/android/gallery3d/data/LocalImage;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #item:Lcom/android/gallery3d/data/LocalImage;
    :cond_1
    move v0, v3

    .line 254
    goto :goto_1
.end method

.method public static getConShotSet(Lcom/android/gallery3d/app/GalleryApp;JI)Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "app"
    .parameter "groupID"
    .parameter "bucketId"

    .prologue
    .line 69
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    const-string v2, "/container/conshot"

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 71
    .local v0, mediaset:Lcom/android/gallery3d/data/MediaSet;
    return-object v0
.end method

.method public static getMotionDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "folderName"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ConShots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMotionDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "workDir"
    .parameter "folderName"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ConShots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMotionSet(Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;
    .locals 5
    .parameter "app"
    .parameter "fileName"
    .parameter "id"

    .prologue
    .line 75
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    const-string v2, "/container/motion"

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 77
    .local v0, mediaset:Lcom/android/gallery3d/data/MediaSet;
    return-object v0
.end method

.method public static getMotionTrackSet(Lcom/android/gallery3d/app/GalleryApp;Ljava/lang/String;I)Lcom/android/gallery3d/data/MediaSet;
    .locals 6
    .parameter "app"
    .parameter "fileName"
    .parameter "id"

    .prologue
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, trackName:Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    const-string v3, "/container/motion"

    invoke-static {v3}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    .line 84
    .local v0, mediaset:Lcom/android/gallery3d/data/MediaSet;
    return-object v0
.end method

.method public static getSavePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isAllBestShot()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 162
    sget-object v4, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    sget-object v5, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 163
    .local v2, mediaItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 164
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :goto_0
    return v3

    .line 166
    .restart local v1       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getIsBestShot()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 170
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static markBestShotItems(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 4
    .parameter "activity"
    .parameter "source"

    .prologue
    .line 121
    sput-object p0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 122
    sput-object p1, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mSource:Lcom/android/gallery3d/data/MediaSet;

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mIsAllBestShot:Z

    .line 124
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->alreadyMarkBestShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "Gallery2/ContainerHelper"

    const-string v1, "<markBestShot> Has already mark best shot, not mark again, return"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->isAllBestShot()Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mIsAllBestShot:Z

    .line 127
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->updateBestShotMenu(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 132
    const-string v0, "Gallery2/ContainerHelper"

    const-string v1, "<markBestShot> media item count <= 1, return"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;

    invoke-direct {v1}, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectJob;-><init>()V

    new-instance v2, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectListener;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/mediatek/gallery3d/conshots/ContainerHelper$BestShotSelectListener;-><init>(Lcom/mediatek/gallery3d/conshots/ContainerHelper$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method public static renderOverLay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;IILcom/android/gallery3d/data/MediaItem;)V
    .locals 13
    .parameter "context"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "item"

    .prologue
    .line 101
    if-nez p4, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/data/MediaItem;->isConShot()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/data/MediaItem;->getIsBestShot()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 104
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020070

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 107
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v12, v0, 0x5

    .line 108
    .local v12, side:I
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getWidth()I

    move-result v4

    .line 109
    .local v4, texWidth:I
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/UploadedTexture;->getHeight()I

    move-result v5

    .line 110
    .local v5, texHeight:I
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mBestShotTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    const/4 v2, 0x0

    sub-int v3, p3, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 112
    .end local v4           #texWidth:I
    .end local v5           #texHeight:I
    .end local v12           #side:I
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/data/MediaItem;->isMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/gallery3d/data/MediaItem;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mDisableTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    if-nez v0, :cond_4

    .line 114
    new-instance v0, Lcom/android/gallery3d/ui/ResourceTexture;

    const v1, 0x7f020103

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mDisableTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    .line 116
    :cond_4
    sget-object v6, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mDisableTexture:Lcom/android/gallery3d/ui/ResourceTexture;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/gallery3d/ui/UploadedTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public static updateBestShotMenu(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const v2, 0x7f0b0166

    .line 139
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 140
    .local v0, menu:Landroid/view/Menu;
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 142
    :cond_0
    sget-boolean v1, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->mIsAllBestShot:Z

    if-eqz v1, :cond_1

    .line 143
    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->setMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method
