.class public interface abstract Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;
.super Ljava/lang/Object;
.source "VideoThumbnailSourceWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;,
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;
    }
.end annotation


# virtual methods
.method public abstract getActiveEnd()I
.end method

.method public abstract getActiveStart()I
.end method

.method public abstract getContentEnd()I
.end method

.method public abstract getContentStart()I
.end method

.method public abstract getThumbnailEntryAt(I)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;
.end method

.method public abstract isAllActiveSlotsStaticThumbnailReady()Z
.end method
