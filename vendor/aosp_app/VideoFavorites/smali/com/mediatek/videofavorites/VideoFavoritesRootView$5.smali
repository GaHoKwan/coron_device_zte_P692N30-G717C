.class Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;
.super Ljava/lang/Object;
.source "VideoFavoritesRootView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 819
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 821
    const-string v2, "VFRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)[Lcom/mediatek/videofavorites/VideoTextureView;

    move-result-object v2

    aget-object v1, v2, v0

    .line 825
    .local v1, v:Lcom/mediatek/videofavorites/VideoTextureView;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/mediatek/videofavorites/VideoTextureView;->isSameMediaPlayer(Landroid/media/MediaPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 826
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mVideoActive:[Lcom/mediatek/videofavorites/VideoTextureView;
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)[Lcom/mediatek/videofavorites/VideoTextureView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 828
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1910(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    .line 832
    .end local v1           #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$5;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast()V
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    .line 833
    const/4 v2, 0x1

    return v2

    .line 823
    .restart local v1       #v:Lcom/mediatek/videofavorites/VideoTextureView;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
