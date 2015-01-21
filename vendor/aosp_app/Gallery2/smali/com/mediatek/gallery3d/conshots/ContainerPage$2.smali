.class Lcom/mediatek/gallery3d/conshots/ContainerPage$2;
.super Lcom/android/gallery3d/ui/GLView;
.source "ContainerPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/ContainerPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/conshots/ContainerPage;)V
    .locals 1
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 162
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/android/gallery3d/app/ActivityState;->mActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$200(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/app/GalleryActionBar;->getHeight()I

    move-result v2

    .line 174
    .local v2, slotViewTop:I
    sub-int v0, p5, p3

    .line 175
    .local v0, slotViewBottom:I
    sub-int v1, p4, p2

    .line 177
    .local v1, slotViewRight:I
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mShowDetails:Z
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$300(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mDetailsHelper:Lcom/android/gallery3d/ui/DetailsHelper;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$400(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/DetailsHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v2, p4, p5}, Lcom/android/gallery3d/ui/DetailsHelper;->layout(IIII)V

    .line 184
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mOpenCenter:Lcom/android/gallery3d/ui/RelativePosition;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$600(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/RelativePosition;

    move-result-object v3

    invoke-virtual {v3, v5, v2}, Lcom/android/gallery3d/ui/RelativePosition;->setReferencePosition(II)V

    .line 185
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mSlotView:Lcom/android/gallery3d/ui/SlotView;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$000(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/SlotView;

    move-result-object v3

    invoke-virtual {v3, v5, v2, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 186
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->mMatrix:[F

    sub-int v4, p4, p2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-int v5, p5, p3

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mUserDistance:F
    invoke-static {v6}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$700(Lcom/mediatek/gallery3d/conshots/ContainerPage;)F

    move-result v6

    neg-float v6, v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/gallery3d/util/GalleryUtils;->setViewPointMatrix([FFFF)V

    .line 188
    return-void

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$500(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setHighlightItemPath(Lcom/android/gallery3d/data/Path;)V

    goto :goto_0
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 192
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)V

    .line 193
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 194
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$800(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$800(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/PhotoFallbackEffect;->draw(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    .line 198
    .local v0, more:Z
    if-nez v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #setter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mResumeEffect:Lcom/android/gallery3d/ui/PhotoFallbackEffect;
    invoke-static {v1, v3}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$802(Lcom/mediatek/gallery3d/conshots/ContainerPage;Lcom/android/gallery3d/ui/PhotoFallbackEffect;)Lcom/android/gallery3d/ui/PhotoFallbackEffect;

    .line 200
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ContainerPage$2;->this$0:Lcom/mediatek/gallery3d/conshots/ContainerPage;

    #getter for: Lcom/mediatek/gallery3d/conshots/ContainerPage;->mConShotsView:Lcom/android/gallery3d/ui/AlbumSlotRenderer;
    invoke-static {v1}, Lcom/mediatek/gallery3d/conshots/ContainerPage;->access$500(Lcom/mediatek/gallery3d/conshots/ContainerPage;)Lcom/android/gallery3d/ui/AlbumSlotRenderer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/AlbumSlotRenderer;->setSlotFilter(Lcom/android/gallery3d/ui/AlbumSlotRenderer$SlotFilter;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 207
    .end local v0           #more:Z
    :cond_1
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 208
    return-void
.end method

.method protected renderBackground(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 167
    return-void
.end method
