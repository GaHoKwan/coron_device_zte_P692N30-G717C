.class public Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
.source "VideoToVideoGenerator.java"


# static fields
.field private static final ENCODE_HEIGHT:I = 0xf0

.field private static final ENCODE_WIDTH:I = 0x140

.field private static final MAX_THUMBNAIL_DURATION:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoToVideoGenerator"

.field private static final TRANSCODING_BIT_RATE:I = 0x40000

.field private static final TRANSCODING_FRAME_RATE:I = 0xa

.field private static sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;-><init>()V

    return-void
.end method

.method private static getTargetRect(IIII)Landroid/graphics/Rect;
    .locals 7
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    const/4 v6, 0x0

    .line 29
    if-le p0, p2, :cond_0

    if-gt p1, p3, :cond_1

    .line 30
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    :goto_0
    return-object v4

    .line 33
    :cond_1
    int-to-float v4, p0

    int-to-float v5, p1

    div-float v1, v4, v5

    .line 34
    .local v1, rSrc:F
    int-to-float v4, p2

    int-to-float v5, p3

    div-float v0, v4, v5

    .line 40
    .local v0, rMax:F
    cmpg-float v4, v1, v0

    if-gez v4, :cond_3

    .line 41
    move v3, p2

    .line 42
    .local v3, targetWidth:I
    mul-int v4, v3, p1

    div-int v2, v4, p0

    .line 53
    .local v2, targetHeight:I
    :cond_2
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 44
    .end local v2           #targetHeight:I
    .end local v3           #targetWidth:I
    :cond_3
    move v2, p3

    .line 45
    .restart local v2       #targetHeight:I
    mul-int v4, v2, p0

    div-int v3, v4, p1

    .line 47
    .restart local v3       #targetWidth:I
    rem-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_2

    .line 48
    add-int/lit8 v4, v3, -0xf

    shr-int/lit8 v4, v4, 0x4

    shl-int/lit8 v3, v4, 0x4

    .line 49
    mul-int v4, v3, p1

    div-int v2, v4, p0

    goto :goto_1
.end method


# virtual methods
.method public generate(Lcom/android/gallery3d/data/LocalMediaItem;I)I
    .locals 35
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 57
    move-object/from16 v30, p1

    check-cast v30, Lcom/android/gallery3d/data/LocalVideo;

    .line 61
    .local v30, video:Lcom/android/gallery3d/data/LocalVideo;
    new-instance v26, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 65
    .local v26, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    const-string v5, "Gallery2/VideoToVideoGenerator"

    const-string v6, "doTranscode: set retriever.setDataSource begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 67
    const-string v5, "Gallery2/VideoToVideoGenerator"

    const-string v6, "doTranscode: set retriever.setDataSource end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/16 v5, 0x12

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 71
    .local v32, videoWidth:I
    const/16 v5, 0x13

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v31

    .line 78
    .local v31, videoHeight:I
    :goto_0
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 79
    const/16 v26, 0x0

    .line 80
    new-instance v27, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-direct {v0, v5, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 81
    .local v27, srcRect:Landroid/graphics/Rect;
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/16 v7, 0x140

    const/16 v8, 0xf0

    invoke-static {v5, v6, v7, v8}, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->getTargetRect(IIII)Landroid/graphics/Rect;

    move-result-object v28

    .line 83
    .local v28, targetRect:Landroid/graphics/Rect;
    const-string v5, "Gallery2/VideoToVideoGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "srcRect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " targetRect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/gallery3d/data/LocalVideo;->durationInSec:I

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v0, v5

    move-wide/from16 v20, v0

    .line 88
    .local v20, duration:J
    const-wide/16 v5, 0x3

    div-long v11, v20, v5

    .line 89
    .local v11, startTime:J
    const-wide/16 v5, 0x1f40

    add-long/2addr v5, v11

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 90
    .local v13, endTime:J
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1f40

    sub-long v7, v13, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    const/16 v25, 0x1

    .line 124
    :cond_0
    :goto_1
    return v25

    .line 74
    .end local v11           #startTime:J
    .end local v13           #endTime:J
    .end local v20           #duration:J
    .end local v27           #srcRect:Landroid/graphics/Rect;
    .end local v28           #targetRect:Landroid/graphics/Rect;
    .end local v31           #videoHeight:I
    .end local v32           #videoWidth:I
    :catch_0
    move-exception v22

    .line 75
    .local v22, e:Ljava/lang/Exception;
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->width:I

    move/from16 v32, v0

    .line 76
    .restart local v32       #videoWidth:I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->height:I

    move/from16 v31, v0

    .restart local v31       #videoHeight:I
    goto :goto_0

    .line 96
    .end local v22           #e:Ljava/lang/Exception;
    .restart local v11       #startTime:J
    .restart local v13       #endTime:J
    .restart local v20       #duration:J
    .restart local v27       #srcRect:Landroid/graphics/Rect;
    .restart local v28       #targetRect:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 97
    .local v19, dfilepath:Ljava/lang/String;
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v5, v5, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v29, v5, p2

    .line 99
    .local v29, tpath:Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v33, v0

    .line 100
    .local v33, width:J
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v23, v0

    .line 102
    .local v23, height:J
    const-string v5, "Gallery2/VideoToVideoGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start transcoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", target width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v33

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", target height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v23

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v5, "Gallery2/VideoToVideoGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starttime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", endtime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget-object v5, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/mediatek/transcode/VideoTranscode;->init()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 105
    sget-object v5, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 106
    .local v3, transcodeId:J
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-static/range {p1 .. p2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFilePathForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-long v9, v9

    const-wide/32 v15, 0x40000

    const-wide/16 v17, 0xa

    invoke-static/range {v3 .. v18}, Lcom/mediatek/transcode/VideoTranscode;->transcodeAdv(JLjava/lang/String;Ljava/lang/String;JJJJJJ)I

    move-result v25

    .line 111
    .local v25, result:I
    if-nez v25, :cond_2

    .line 112
    const/16 v25, 0x0

    .line 116
    :goto_2
    const-string v5, "Gallery2/VideoToVideoGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end transcoding: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    sget-object v5, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 118
    invoke-static {v3, v4}, Lcom/mediatek/transcode/VideoTranscode;->deinit(J)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->shouldCancel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    const/16 v25, 0x1

    goto/16 :goto_1

    .line 114
    :cond_2
    const/16 v25, 0x2

    goto :goto_2
.end method

.method public onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 4
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 128
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/VideoToVideoGenerator;->sCurrentHandle:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mediatek/transcode/VideoTranscode;->cancel(J)V

    .line 131
    :cond_0
    return-void
.end method
