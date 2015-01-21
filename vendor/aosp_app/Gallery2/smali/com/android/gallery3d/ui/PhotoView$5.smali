.class Lcom/android/gallery3d/ui/PhotoView$5;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/PhotoView;->enterCameraPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 2471
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2476
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    .line 2477
    .local v1, root:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v1, :cond_0

    .line 2478
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/gallery3d/ui/GLRoot;->setLightsOutMode(Z)V

    .line 2480
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->lockOrientation()V

    .line 2482
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$5;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$4600(Lcom/android/gallery3d/ui/PhotoView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGalleryActionBar()Lcom/android/gallery3d/app/GalleryActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/GalleryActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2483
    .local v0, menu:Landroid/view/Menu;
    if-eqz v0, :cond_1

    .line 2484
    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 2487
    :cond_1
    return-void
.end method
