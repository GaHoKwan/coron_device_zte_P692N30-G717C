.class Lcom/android/gallery3d/app/MoviePlayer$12;
.super Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/video/MTKVideoView;Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;-><init>(Landroid/view/View;Lcom/android/gallery3d/app/MovieActivity;Lcom/mediatek/gallery3d/video/MTKVideoView;Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public cancelPowerSaving()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1300(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$800(Lcom/android/gallery3d/app/MoviePlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->cancelCountDownTime(Landroid/os/Handler;)V

    .line 551
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x0

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mWfdPowerSaving:Lcom/mediatek/gallery3d/video/WfdPowerSaving;
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$1302(Lcom/android/gallery3d/app/MoviePlayer;Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    .line 553
    :cond_0
    return-void
.end method

.method public startVideo(II)V
    .locals 3
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 542
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartVideo() position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PLAYING:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$12;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideo(ZII)V
    invoke-static {v0, v1, p1, p2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1200(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 547
    :cond_0
    return-void
.end method
