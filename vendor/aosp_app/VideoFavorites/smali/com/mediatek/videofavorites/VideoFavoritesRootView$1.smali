.class Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;
.super Landroid/os/Handler;
.source "VideoFavoritesRootView.java"


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
    .line 112
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 115
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 117
    :pswitch_0
    const-string v0, "VFRootView"

    const-string v1, "rebuild video list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->buildVideoViewList()Z
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$000(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mNumOfImgView:I
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$100(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3e8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->showVideoAndRandomStrart()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$200(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->showVideoAndRandomStrart()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$200(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->onPageSwitchOutInternal()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$300(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast()V
    invoke-static {v0}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$1;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setDeleteMode(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$500(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
