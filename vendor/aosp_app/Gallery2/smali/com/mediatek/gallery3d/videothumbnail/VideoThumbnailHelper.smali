.class public Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;
.super Ljava/lang/Object;
.source "VideoThumbnailHelper.java"


# static fields
.field private static final DYNAMIC_CACHE_FILE_POSTFIX:[Ljava/lang/String; = null

.field private static final MIN_STORAGE_SPACE:I = 0x300000

.field private static final SUFFIX_TMP:Ljava/lang/String; = ".tmp"

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnailUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".dthumb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->DYNAMIC_CACHE_FILE_POSTFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteThumbnailFile(Lcom/android/gallery3d/data/LocalMediaItem;I)Z
    .locals 2
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getThumbnailFileForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTempFileForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/io/File;
    .locals 2
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFilePathForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getTempFilePathForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/lang/String;
    .locals 2
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v1, v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnailFileForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/io/File;
    .locals 2
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getVideoThumbnailPathFromOriginalFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getVideoSharableImageFromIntent(Landroid/content/Intent;Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/android/gallery3d/data/LocalMediaItem;
    .locals 7
    .parameter "intent"
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 100
    if-nez p0, :cond_1

    move-object v0, v5

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 105
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_2

    move-object v0, v5

    .line 106
    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v2

    .line 111
    .local v2, manager:Lcom/android/gallery3d/data/DataManager;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v1

    .line 112
    .local v1, itemPath:Lcom/android/gallery3d/data/Path;
    if-nez v1, :cond_3

    move-object v0, v5

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v3

    .line 117
    .local v3, mediaObject:Lcom/android/gallery3d/data/MediaObject;
    instance-of v6, v3, Lcom/android/gallery3d/data/LocalImage;

    if-nez v6, :cond_4

    move-object v0, v5

    .line 118
    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 121
    check-cast v0, Lcom/android/gallery3d/data/LocalImage;

    .line 122
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalMediaItem;->prepareThumbnailPlay()V

    .line 123
    iget-object v6, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    if-nez v6, :cond_0

    move-object v0, v5

    .line 124
    goto :goto_0
.end method

.method public static getVideoShareUriFromMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;)Landroid/net/Uri;
    .locals 5
    .parameter "mediaItem"

    .prologue
    .line 84
    const/4 v2, 0x1

    .line 85
    .local v2, videoType:I
    invoke-static {p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->needGenDynThumb(Lcom/android/gallery3d/data/LocalMediaItem;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->makeVideo(Lcom/android/gallery3d/data/LocalMediaItem;I)V

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v3, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aget v3, v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 91
    const/4 v1, 0x0

    .line 95
    :goto_0
    return-object v1

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v3, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v0, v3, v2

    .line 94
    .local v0, sharePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    .local v1, shareUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public static getVideoThumbnailPathFromOriginalFilePath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "originalFilePath"
    .parameter "videoType"

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, i:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".dthumb/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->DYNAMIC_CACHE_FILE_POSTFIX:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".dthumb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->DYNAMIC_CACHE_FILE_POSTFIX:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method public static isStorageSafeForGenerating(Ljava/lang/String;)Z
    .locals 9
    .parameter "dirPath"

    .prologue
    const/4 v4, 0x0

    .line 25
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 26
    .local v3, stat:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long v1, v5, v7

    .line 27
    .local v1, spaceLeft:J
    const-string v5, "Gallery2/VideoThumbnailUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storage available in this volume is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    const-wide/32 v5, 0x300000

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    .line 36
    .end local v1           #spaceLeft:J
    .end local v3           #stat:Landroid/os/StatFs;
    :goto_0
    return v4

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    const-string v5, "Gallery2/VideoThumbnailUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #spaceLeft:J
    .restart local v3       #stat:Landroid/os/StatFs;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method
