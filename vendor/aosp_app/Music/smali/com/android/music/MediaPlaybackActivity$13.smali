.class Lcom/android/music/MediaPlaybackActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 1824
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1825
    .local v0, action:Ljava/lang/String;
    const-string v3, "MediaPlayback"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStatusListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v3, "com.android.music.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1828
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1832
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->updateTrackInfo()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2500(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1833
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1835
    const-string v3, "MusicPerformanceTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][Music] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$800(Lcom/android/music/MediaPlaybackActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    const-string v3, "MusicPerformanceTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CMCC Performance test][Music] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPerformanceTestString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/music/MediaPlaybackActivity;->access$800(Lcom/android/music/MediaPlaybackActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v4, 0x1

    #calls: Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v4, v5}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;J)V

    .line 1860
    :cond_0
    :goto_0
    return-void

    .line 1843
    :cond_1
    const-string v3, "com.android.music.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1844
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)V

    goto :goto_0

    .line 1846
    :cond_2
    const-string v3, "com.android.music.quitplayback"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1847
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1848
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1849
    :cond_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1851
    const-string v3, "MediaPlayback"

    const-string v4, "onReceive, stop refreshing ..."

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$900(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1853
    :cond_4
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1855
    const-string v3, "MediaPlayback"

    const-string v4, "onReceive, restore refreshing ..."

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v1

    .line 1857
    .local v1, next:J
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$13;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$2200(Lcom/android/music/MediaPlaybackActivity;J)V

    goto :goto_0
.end method
