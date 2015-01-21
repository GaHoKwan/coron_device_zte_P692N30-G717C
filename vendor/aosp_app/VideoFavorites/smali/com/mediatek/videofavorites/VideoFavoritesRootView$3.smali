.class Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;
.super Ljava/lang/Object;
.source "VideoFavoritesRootView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/VideoFavoritesRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V
    .locals 0
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 720
    const-string v0, "VFRootView"

    const-string v1, "onChildViewAdded"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1500(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1600(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 726
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->restartVideoViews()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 729
    const-string v0, "VFRootView"

    const-string v1, "onChildViewRemoved"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsDeleteMode:Z
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1500(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$3;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->restartVideoViews()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    .line 733
    :cond_0
    return-void
.end method
