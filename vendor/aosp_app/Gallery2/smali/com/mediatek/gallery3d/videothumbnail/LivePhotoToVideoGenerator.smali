.class public Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;
.super Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
.source "LivePhotoToVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$1;,
        Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;
    }
.end annotation


# static fields
.field private static final LIVEPHOTO_CROP_BITRATE:I = 0x40000

.field private static final LIVEPHOTO_CROP_FPS:I = 0xf

.field private static final LIVEPHOTO_CROP_HEIGHT:I = 0xf0

.field private static final LIVEPHOTO_CROP_WIDTH:I = 0xf0

.field private static final LIVEPHOTO_FRAME_PICTURE_DURATION:I = 0x5dc

.field private static final LIVEPHOTO_FRAME_PICTURE_FADEOUT_DURATION:I = 0x12c

.field private static final LIVEPHOTO_FRAME_PICTURE_TOTAL_DURATION:I = 0x8fc

.field private static final LIVEPHOTO_FRAME_PICTURE_TRANSITION_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Gallery2/LivePhotoToVideoGenerator"

.field private static mCancelThread:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

.field private static mStaticVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInPath:Ljava/lang/String;

.field private mIsCancelling:Z

.field private mOutPath:Ljava/lang/String;

.field private mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

.field private object1:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;-><init>()V

    .line 44
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mContext:Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    .line 46
    new-instance v0, Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-direct {v0}, Lcom/mediatek/effect/effects/VideoScenarioEffect;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    .line 47
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mCancelThread:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;-><init>(Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$1;)V

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mCancelThread:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

    .line 49
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mCancelThread:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->start()V

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic access$100()Lcom/mediatek/effect/effects/VideoScenarioEffect;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mStaticVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    return-object v0
.end method

.method private createVideoFirstFramePicture(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "videoPath"

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 148
    .local v2, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 149
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 156
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_0
    return-object v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 151
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v1

    .line 158
    .local v1, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_3
    move-exception v1

    .line 153
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 157
    :catch_4
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    .line 156
    :try_start_6
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 159
    :goto_1
    throw v3

    .line 157
    :catch_5
    move-exception v1

    .line 158
    .restart local v1       #ex:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private freeResources()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | freeResources"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    .line 142
    :cond_0
    return-void
.end method

.method private getGalleryScenario(III)Ljava/lang/String;
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 204
    const-string v0, "object1"

    .line 205
    .local v0, fixBitmap:Ljava/lang/String;
    const-string v5, "Gallery2/LivePhotoToVideoGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGalleryScenario | width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const v3, 0x3e28f5c3

    .line 208
    .local v3, x:F
    const v4, 0x3f428f5c

    .line 209
    .local v4, y:F
    const v1, 0x3ee66666

    .line 211
    .local v1, scale:F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<?xml version=\"1.0\"?><scenario>   <size owidth=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" oheight=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"></size>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <video>/system/media/video/gen30.mp4</video>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <video init_offset=\"2050\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mInPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</video>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <edge>/system/media/video/edge.png</edge>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <outputvideo truncate=\"1\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mOutPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</outputvideo>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <videoevent name=\"ve\" type=\"still\" start=\"0\" end=\"1500\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   </videoevent>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <videoevent name=\"ve\" type=\"overlay\" start=\"1500\" end=\"2000\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <showtime related_start=\"0\" length=\"500\"></showtime>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <thumbnail move=\"1\" scale=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" x=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" y=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</thumbnail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <background init_offset=\"2050\" still=\"1\" fade_in=\"1\">video2</background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   </videoevent>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <videoevent name=\"ve\" type=\"overlay\" start=\"1900\" end=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, p3, 0x7d0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <showtime related_start=\"100\" length=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"></showtime>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <thumbnail scale=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" x=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" y=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</thumbnail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <background init_offset=\"2050\">video2</background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   </videoevent>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <videoevent name=\"ve\" type=\"overlay\" start=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, p3, 0x7d0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" end=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, p3, 0x8fc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <showtime related_start=\"0\" length=\"300\"></showtime>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <thumbnail fade_out=\"1\" scale=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" x=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" y=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</thumbnail>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <background init_offset=\"2050\" still=\"1\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   </videoevent>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <videoevent name=\"ve\" type=\"still\" start=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, p3, 0x8fc

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" end=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v6, p3, 0x8fd

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   <background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</background>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   </videoevent>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</scenario>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, scenario:Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public generate(Lcom/android/gallery3d/data/LocalMediaItem;I)I
    .locals 12
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 54
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "Gallery2 Performance: enter generate()"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/android/gallery3d/data/LocalVideo;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/LocalVideo;->getIsLivePhoto()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x2

    .line 132
    .end local p1
    :goto_0
    return v0

    .line 59
    .restart local p1
    :cond_0
    const/4 v10, 0x0

    .line 60
    .local v10, result:Z
    const-wide/16 v8, 0x0

    .line 61
    .local v8, logTimeBefore:J
    invoke-virtual {p1}, Lcom/android/gallery3d/data/LocalMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mInPath:Ljava/lang/String;

    .line 62
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate | inPath: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mInPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p1, p2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFilePathForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mOutPath:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mInPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->createVideoFirstFramePicture(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    .line 67
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 68
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | object1 == null, error"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x2

    goto :goto_0

    .line 73
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/mediatek/camcorder/CamcorderProfileEx;->getProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 74
    .local v3, cp:Landroid/media/CamcorderProfile;
    if-nez v3, :cond_2

    .line 75
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | CamcorderProfile == null, error"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x2

    goto :goto_0

    .line 79
    :cond_2
    const/high16 v0, 0x4

    iput v0, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 80
    const/16 v0, 0xf

    iput v0, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 81
    const/16 v0, 0xf0

    iput v0, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 82
    const/16 v0, 0xf0

    iput v0, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 84
    check-cast p1, Lcom/android/gallery3d/data/LocalVideo;

    .end local p1
    iget v0, p1, Lcom/android/gallery3d/data/LocalVideo;->durationInMilliSec:I

    add-int/lit16 v6, v0, -0x8fc

    .line 87
    .local v6, duration:I
    iget v0, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v0, v1, v6}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->getGalleryScenario(III)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, scenario:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    if-eqz v0, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->freeResources()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    .line 92
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | return GENERATE_CANCEL(1)"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    iget-object v11, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->object1:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->setScenario(Landroid/content/Context;Ljava/lang/String;Landroid/media/CamcorderProfile;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | setScenario(), error"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->freeResources()V

    .line 100
    const/4 v0, 0x2

    monitor-exit v11

    goto/16 :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 114
    .end local v2           #scenario:Ljava/lang/String;
    .end local v3           #cp:Landroid/media/CamcorderProfile;
    .end local v6           #duration:I
    :catch_0
    move-exception v7

    .line 115
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v7           #e:Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->freeResources()V

    .line 120
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    if-eqz v0, :cond_6

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    .line 122
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | return GENERATE_CANCEL(3)"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 103
    .restart local v2       #scenario:Ljava/lang/String;
    .restart local v3       #cp:Landroid/media/CamcorderProfile;
    .restart local v6       #duration:I
    :cond_4
    :try_start_3
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    if-eqz v0, :cond_5

    .line 104
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->freeResources()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    .line 106
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "generate | return GENERATE_CANCEL(2)"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    monitor-exit v11

    goto/16 :goto_0

    .line 110
    :cond_5
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    const-string v1, "Gallery2 Performance: process begin"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 112
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    invoke-virtual {v0}, Lcom/mediatek/effect/effects/VideoScenarioEffect;->process()Z

    move-result v10

    .line 113
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 125
    .end local v2           #scenario:Ljava/lang/String;
    .end local v3           #cp:Landroid/media/CamcorderProfile;
    .end local v6           #duration:I
    :cond_6
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gallery2 Performance: process end | result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v10, :cond_7

    .line 128
    const-string v0, "Gallery2/LivePhotoToVideoGenerator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gallery2 Performance: processing costs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 132
    :cond_7
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method public onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    .locals 1
    .parameter "item"
    .parameter "videoType"

    .prologue
    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mIsCancelling:Z

    .line 199
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    sput-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mStaticVideoScenarioEffect:Lcom/mediatek/effect/effects/VideoScenarioEffect;

    .line 200
    sget-object v0, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator;->mCancelThread:Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/LivePhotoToVideoGenerator$CancelThread;->notifyCancel()V

    .line 201
    return-void
.end method
