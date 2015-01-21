.class Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 152
    iput-object p1, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0x3e8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, action:Ljava/lang/String;
    const-string v2, "VFRootView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received intent action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v2, "com.mediatek.videofavorites.REFRESH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$600(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$800(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #getter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mState:I
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$900(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 162
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    invoke-virtual {v2, v7}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->startPlayVideoRandomly(I)V

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->getFavoriteCount()I
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1000(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)I

    move-result v1

    .line 165
    .local v1, favoriteCount:I
    iget-object v5, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    move v2, v3

    :goto_0
    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setRecordButtonStatus(Z)V
    invoke-static {v5, v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1100(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V

    .line 166
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    if-lez v1, :cond_3

    :goto_1
    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->setEditButtonStatus(Z)V
    invoke-static {v2, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1200(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)V

    .line 180
    .end local v1           #favoriteCount:I
    :cond_1
    :goto_2
    return-void

    .restart local v1       #favoriteCount:I
    :cond_2
    move v2, v4

    .line 165
    goto :goto_0

    :cond_3
    move v3, v4

    .line 166
    goto :goto_1

    .line 167
    .end local v1           #favoriteCount:I
    :cond_4
    const-string v2, "com.mediatek.videofavorites.DATA_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #setter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mRefreshWhenBackToLauncher:Z
    invoke-static {v2, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1302(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z

    goto :goto_2

    .line 169
    :cond_5
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #setter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z
    invoke-static {v2, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$802(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z

    .line 171
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->removePlaybackMessages()V
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$600(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    .line 172
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->stopAllVideoView()V
    invoke-static {v2}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$700(Lcom/mediatek/videofavorites/VideoFavoritesRootView;)V

    goto :goto_2

    .line 173
    :cond_6
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 174
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #setter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z
    invoke-static {v2, v4}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$802(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z

    .line 175
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast(I)V
    invoke-static {v2, v7}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;I)V

    goto :goto_2

    .line 176
    :cond_7
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    #setter for: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->mIsUnmounting:Z
    invoke-static {v2, v4}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$802(Lcom/mediatek/videofavorites/VideoFavoritesRootView;Z)Z

    .line 178
    iget-object v2, p0, Lcom/mediatek/videofavorites/VideoFavoritesRootView$2;->this$0:Lcom/mediatek/videofavorites/VideoFavoritesRootView;

    const/16 v3, 0xc8

    #calls: Lcom/mediatek/videofavorites/VideoFavoritesRootView;->sendRefreshBroadcast(I)V
    invoke-static {v2, v3}, Lcom/mediatek/videofavorites/VideoFavoritesRootView;->access$1400(Lcom/mediatek/videofavorites/VideoFavoritesRootView;I)V

    goto :goto_2
.end method
