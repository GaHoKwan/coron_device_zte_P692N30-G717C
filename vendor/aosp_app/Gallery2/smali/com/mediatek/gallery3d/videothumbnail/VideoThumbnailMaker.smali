.class public final Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;
.super Ljava/lang/Object;
.source "VideoThumbnailMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnailMaker"

.field private static sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

.field private static volatile sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    .line 215
    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    return-object v0
.end method

.method public static cancelPendingTranscode()V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelPendingTranscode()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->access$300(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;)V

    .line 231
    :cond_0
    return-void
.end method

.method static declared-synchronized makeVideo(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 11
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    .line 19
    const-class v8, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;

    monitor-enter v8

    :try_start_0
    iget-object v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 21
    .local v6, videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 22
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x0

    aput v9, v7, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit v8

    return-void

    .line 27
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 28
    .local v2, filePath:Ljava/lang/String;
    const/4 v7, 0x0

    const/16 v9, 0x2f

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, dirPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->isStorageSafeForGenerating(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 30
    const-string v7, "Gallery2/VideoThumbnailMaker"

    const-string v9, "storage available in this volume is not enough! stop generating"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x3

    aput v9, v7, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    .end local v1           #dirPath:Ljava/lang/String;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v6           #videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 36
    .restart local v1       #dirPath:Ljava/lang/String;
    .restart local v2       #filePath:Ljava/lang/String;
    .restart local v6       #videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    :cond_1
    :try_start_2
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v2, v7, p1

    .line 37
    const/4 v7, 0x0

    const/16 v9, 0x2f

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v2, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_2

    .line 40
    const-string v7, "Gallery2/VideoThumbnailMaker"

    const-string v9, "exception when creating cache container!"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x3

    aput v9, v7, p1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 47
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x0

    aput v9, v7, p1

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v6, p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->generate(Lcom/android/gallery3d/data/LocalMediaItem;I)I

    move-result v4

    .line 53
    .local v4, result:I
    const-string v7, "Gallery2/VideoThumbnailMaker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transcode result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v7, 0x1

    if-ne v4, v7, :cond_4

    .line 56
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x0

    aput v9, v7, p1

    goto/16 :goto_0

    .line 61
    :cond_4
    invoke-static {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFileForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/io/File;

    move-result-object v5

    .line 63
    .local v5, unCompleteDynThumb:Ljava/io/File;
    const/4 v3, 0x0

    .line 64
    .local v3, recrifiedResult:Z
    if-nez v4, :cond_5

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 66
    new-instance v7, Ljava/io/File;

    iget-object v9, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 71
    :cond_5
    const-string v7, "Gallery2/VideoThumbnailMaker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "recrified transcode result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-eqz v3, :cond_7

    .line 74
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x2

    aput v9, v7, p1

    .line 76
    sget-object v7, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    if-eqz v7, :cond_6

    .line 77
    sget-object v7, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-virtual {v7}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pumpLiveThumbnails()V

    .line 78
    sget-object v7, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-virtual {v7}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->requestRender()V

    .line 80
    :cond_6
    const-string v7, "Gallery2/VideoThumbnailMaker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "then request render: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v10, v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 82
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 83
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 85
    :cond_8
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v9, 0x3

    aput v9, v7, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method static needGenDynThumb(Lcom/android/gallery3d/data/LocalMediaItem;I)Z
    .locals 7
    .parameter "mediaItem"
    .parameter "videoType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    iget-object v3, p0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 94
    .local v3, videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    if-nez v3, :cond_0

    .line 123
    :goto_0
    return v4

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    .line 99
    .local v1, inputPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/gallery3d/data/LocalMediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    if-nez v6, :cond_2

    .line 101
    :cond_1
    iget-object v5, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v6, 0x3

    aput v6, v5, p1

    .line 103
    iget-object v5, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, p1

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {v1, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getVideoThumbnailPathFromOriginalFilePath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, outputPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, dynThumbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    iget-object v5, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v6, 0x2

    aput v6, v5, p1

    .line 115
    iget-object v5, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aput-object v2, v5, p1

    goto :goto_0

    .line 119
    :cond_3
    iget-object v4, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aput v5, v4, p1

    .line 121
    iget-object v4, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aput-object v2, v4, p1

    move v4, v5

    .line 123
    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelAllTranscode()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->access$200(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;)V

    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    .line 225
    :cond_0
    return-void
.end method

.method public static requestThumbnail(Lcom/android/gallery3d/data/LocalMediaItem;)V
    .locals 1
    .parameter "video"

    .prologue
    .line 210
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->submit(Lcom/android/gallery3d/data/LocalMediaItem;)V
    invoke-static {v0, p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;Lcom/android/gallery3d/data/LocalMediaItem;)V

    .line 213
    :cond_0
    return-void
.end method

.method public static setDirector(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V
    .locals 0
    .parameter "director"

    .prologue
    .line 217
    sput-object p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    .line 218
    return-void
.end method

.method public static start()V
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    const-string v1, "transcode proxy"

    invoke-direct {v0, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    .line 236
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->sHandler:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_0
    return-void
.end method
