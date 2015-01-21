.class public Lcom/android/gallery3d/ui/AlbumSlotRenderer;
.super Lcom/android/gallery3d/ui/AbstractSlotRenderer;
.source "AlbumSlotRenderer.java"

# interfaces
.implements Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;,
        Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x60

.field private static final TAG:Ljava/lang/String; = "Gallery2/AlbumSlotRenderer"

.field public static mWaitFinishedTime:J

.field public static sPerformanceCaseRunning:Z


# instance fields
.field private final mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private mAnimatePressedUp:Z

.field private mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

.field private mHasShowLog:Z

.field private mHighlightItemPath:Lcom/android/gallery3d/data/Path;

.field private mInSelectionMode:Z

.field private final mPlaceholderColor:I

.field private mPressedIndex:I

.field private final mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

.field private final mSlotView:Lcom/android/gallery3d/ui/SlotView;

.field private mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

.field private final mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

.field private shouldLogFirstThumbnailPlay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitFinishedTime:J

    .line 181
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->sPerformanceCaseRunning:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SelectionManager;I)V
    .locals 3
    .parameter "activity"
    .parameter "slotView"
    .parameter "selectionManager"
    .parameter "placeholderColor"

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHasShowLog:Z

    .line 66
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 67
    iput-object p2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    .line 68
    iput-object p3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 69
    iput p4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    .line 71
    new-instance v0, Lcom/android/gallery3d/ui/ColorTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPlaceholderColor:I

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/ColorTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    invoke-virtual {v0, v2, v2}, Lcom/android/gallery3d/ui/ColorTexture;->setSize(II)V

    .line 75
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/AlbumSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    return-object v0
.end method

.method private static checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;
    .locals 1
    .parameter "texture"

    .prologue
    .line 112
    instance-of v0, p0, Lcom/android/gallery3d/ui/TiledTexture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/gallery3d/ui/TiledTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    :cond_0
    return-object p0
.end method

.method private renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I
    .locals 5
    .parameter "canvas"
    .parameter "index"
    .parameter "entry"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, renderRequestFlags:I
    iget v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v1, p2, :cond_3

    .line 187
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    if-eqz v1, :cond_2

    .line 189
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHasShowLog:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->sPerformanceCaseRunning:Z

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "Gallery2/AlbumSlotRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMCC Performance test][Gallery2][Gallery] load 1M image time start ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHasShowLog:Z

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedUpFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 196
    or-int/lit8 v0, v0, 0x2

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->isPressedUpFrameFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 199
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 209
    :cond_1
    :goto_0
    return v0

    .line 202
    :cond_2
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPressedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v1, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    if-ne v1, v2, :cond_4

    .line 205
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0

    .line 206
    :cond_4
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p3, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->isItemSelected(Lcom/android/gallery3d/data/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawSelectedFrame(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method


# virtual methods
.method public getGalleryActivity()Lcom/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public isStageChanging()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView;->isScollingFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSlotSizeChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 272
    return-void
.end method

.method public onVisibleRangeChanged(II)V
    .locals 1
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setActiveWindow(II)V

    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->updateStage()V

    .line 267
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->pause()V

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pause()V

    .line 250
    return-void
.end method

.method public prepareDrawing()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mInSelectionMode:Z

    .line 255
    return-void
.end method

.method public renderSlot(Lcom/android/gallery3d/ui/GLCanvas;IIII)I
    .locals 13
    .parameter "canvas"
    .parameter "index"
    .parameter "pass"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    invoke-interface {v2, p2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;->acceptSlot(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v12, 0x0

    .line 176
    :goto_0
    return v12

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v2, p2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->get(I)Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    move-result-object v11

    .line 124
    .local v11, entry:Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    const/4 v12, 0x0

    .line 126
    .local v12, renderRequestFlags:I
    iget-object v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    invoke-static {v2}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->checkTexture(Lcom/android/gallery3d/ui/Texture;)Lcom/android/gallery3d/ui/Texture;

    move-result-object v4

    .line 127
    .local v4, content:Lcom/android/gallery3d/ui/Texture;
    if-nez v4, :cond_5

    .line 128
    iget-object v4, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    .line 129
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 140
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v2, v11, p1, v0, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->renderThumbnail(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;Lcom/android/gallery3d/ui/GLCanvas;II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 144
    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    invoke-static {v2}, Lcom/mediatek/gallery3d/util/MediatekFeature;->permitShowThumb(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 145
    iget v7, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v2, p0

    move-object v3, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    .line 149
    :goto_2
    instance-of v2, v4, Lcom/android/gallery3d/ui/FadeInTexture;

    if-eqz v2, :cond_2

    check-cast v4, Lcom/android/gallery3d/ui/FadeInTexture;

    .end local v4           #content:Lcom/android/gallery3d/ui/Texture;
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/FadeTexture;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    or-int/lit8 v12, v12, 0x2

    .line 161
    :cond_2
    :goto_3
    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    const/16 v3, 0x2000

    if-eq v2, v3, :cond_3

    .line 162
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawVideoOverlay(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 166
    :cond_3
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isPanorama:Z

    if-eqz v2, :cond_4

    iget v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->mediaType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 167
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawPanoramaIcon(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 170
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->subType:I

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, p1, v0, v1, v3}, Lcom/mediatek/gallery3d/util/MediatekFeature;->renderSubTypeOverlay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 172
    iget-object v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/android/gallery3d/data/MediaItem;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, p1, v0, v1, v3}, Lcom/mediatek/gallery3d/conshots/ContainerHelper;->renderOverLay(Landroid/content/Context;Lcom/android/gallery3d/ui/GLCanvas;IILcom/android/gallery3d/data/MediaItem;)V

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, v11

    move/from16 v9, p4

    move/from16 v10, p5

    .line 174
    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->renderOverlay(Lcom/android/gallery3d/ui/GLCanvas;ILcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;II)I

    move-result v2

    or-int/2addr v12, v2

    .line 176
    goto/16 :goto_0

    .line 130
    .restart local v4       #content:Lcom/android/gallery3d/ui/Texture;
    :cond_5
    iget-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-eqz v2, :cond_1

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    .line 134
    iget-object v4, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->bitmapTexture:Lcom/android/gallery3d/ui/TiledTexture;

    .line 135
    iput-object v4, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/android/gallery3d/ui/Texture;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitFinishedTime:J

    goto/16 :goto_1

    .line 147
    :cond_6
    iget-object v7, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mWaitLoadingTexture:Lcom/android/gallery3d/ui/ColorTexture;

    iget v10, v11, Lcom/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    move-object v5, p0

    move-object v6, p1

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v5 .. v10}, Lcom/android/gallery3d/ui/AbstractSlotRenderer;->drawContent(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/Texture;III)V

    goto :goto_2

    .line 154
    :cond_7
    sget-boolean v2, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->IS_THUMB_PLAY_DEBUG:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->shouldLogFirstThumbnailPlay:Z

    if-eqz v2, :cond_2

    .line 155
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailTestUtil;->printFirstAnimateTime()V

    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->shouldLogFirstThumbnailPlay:Z

    goto :goto_3
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->resume()V

    .line 237
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->resume(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->shouldLogFirstThumbnailPlay:Z

    .line 241
    return-void
.end method

.method public setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    if-ne v0, p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mHighlightItemPath:Lcom/android/gallery3d/data/Path;

    .line 95
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setModel(Lcom/android/gallery3d/app/AlbumDataLoader;)V
    .locals 4
    .parameter "model"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 102
    iput-object v3, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    iget-object v1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x60

    invoke-direct {v0, v1, p1, v2}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;Lcom/android/gallery3d/app/AlbumDataLoader;I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    .line 106
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSlidingWindow;

    new-instance v1, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;

    invoke-direct {v1, p0, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer$MyDataModelListener;-><init>(Lcom/android/gallery3d/ui/AlbumSlotRenderer;Lcom/android/gallery3d/ui/AlbumSlotRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSlidingWindow;->setListener(Lcom/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V

    .line 107
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {p1}, Lcom/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 109
    :cond_1
    return-void
.end method

.method public setPressedIndex(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    if-ne v0, p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setPressedUp()V
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mPressedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mAnimatePressedUp:Z

    .line 89
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0
.end method

.method public setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V
    .locals 0
    .parameter "slotFilter"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->mSlotFilter:Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;

    .line 276
    return-void
.end method
