.class Lcom/mediatek/gallery3d/conshots/ContainerPage$1;
.super Ljava/lang/Object;
.source "ContainerPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoFallbackEffect$PositionProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemIndex(Lcom/android/gallery3d/data/Path;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 137
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v3

    .line 138
    .local v3, start:I
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v0

    .line 139
    .local v0, end:I
    move v1, v3

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 140
    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsDataAdapter:Lcom/android/gallery3d/app/AlbumDataLoader;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$100(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AlbumDataLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v2

    .line 141
    .local v2, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 145
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :goto_1
    return v1

    .line 139
    .restart local v1       #i:I
    .restart local v2       #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v2           #item:Lcom/android/gallery3d/data/MediaItem;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 5
    .parameter "index"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/SlotView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 129
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v2}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 130
    .local v0, bounds:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/SlotView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$1;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v4}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/SlotView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 132
    return-object v1
.end method
