.class Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;
.super Ljava/lang/Object;
.source "AlbumSetSlotRenderer.java"

# interfaces
.implements Lcom/android/gallery3d/ui/AlbumSetSlidingWindow$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyCacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;-><init>(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    iget-object v0, v0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mDataWindow:Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetSlidingWindow;->getActiveRequestCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mVideoThumbnailDirector:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->access$200(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pumpLiveThumbnails()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 269
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView;->setSlotCount(I)Z

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer$MyCacheListener;->this$0:Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;

    #getter for: Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v0}, Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;->access$100(Lcom/android/gallery3d/ui/AlbumSetSlotRenderer;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 256
    return-void
.end method