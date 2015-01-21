.class public Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;
.super Ljava/lang/Object;
.source "VideoThumbnailTestUtil.java"


# static fields
.field public static IS_THUMB_PLAY_DEBUG:Z = false

.field private static final THUMB_PLAY_DEBUG_TAG:Ljava/lang/String; = "Gallery2/VTSPPerformance"

.field private static shareClickTime:J

.field private static singleTapTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->IS_THUMB_PLAY_DEBUG:Z

    .line 9
    sput-wide v1, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->singleTapTime:J

    .line 10
    sput-wide v1, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->shareClickTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markShareClickTime()V
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->shareClickTime:J

    .line 18
    return-void
.end method

.method public static markSingleTapTime()V
    .locals 2

    .prologue
    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->singleTapTime:J

    .line 14
    return-void
.end method

.method public static printFirstAnimateTime()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 21
    sget-wide v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->singleTapTime:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "Gallery2/VTSPPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get animated time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->singleTapTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sput-wide v6, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->singleTapTime:J

    goto :goto_0
.end method

.method public static printShareTime()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 29
    sget-wide v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->shareClickTime:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "Gallery2/VTSPPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "share time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->shareClickTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    sput-wide v6, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->shareClickTime:J

    goto :goto_0
.end method
