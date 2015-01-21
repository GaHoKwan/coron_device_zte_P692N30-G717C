.class Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;
.super Ljava/lang/Object;
.source "VideoFavoritesRootView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 789
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6
    .parameter "mp"

    .prologue
    const/4 v5, 0x2

    .line 791
    const-string v2, "VFRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I
    invoke-static {v4}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$900(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$900(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 794
    const-string v2, "VFRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion, ignore, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I
    invoke-static {v4}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$900(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, -0x1

    .line 799
    .local v0, index:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    .line 800
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)[Lcom/mediatek/videofavorites/VideoTextureView;

    move-result-object v2

    aget-object v1, v2, v0

    .line 801
    .local v1, v:Lcom/mediatek/videofavorites/VideoTextureView;
    if-eqz v1, :cond_3

    .line 802
    invoke-virtual {v1, p1}, Lcom/mediatek/videofavorites/VideoTextureView;->isSameMediaPlayer(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 803
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 804
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)[Lcom/mediatek/videofavorites/VideoTextureView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 806
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1910(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    .line 812
    .end local v1           #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_1
    if-ne v0, v5, :cond_2

    .line 813
    const-string v2, "VFRootView"

    const-string v3, "not found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    :cond_2
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$4;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    goto :goto_0

    .line 799
    .restart local v1       #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
