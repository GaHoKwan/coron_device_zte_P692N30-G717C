.class Lcom/android/music/MediaPlaybackActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 515
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 522
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$000(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDuration:J
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$200(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)J

    .line 546
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MediaPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 520
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "bar"

    .prologue
    .line 551
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mDuration:J
    invoke-static {v4}, Lcom/android/music/MediaPlaybackActivity;->access$300(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 554
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v2}, Lcom/android/music/MediaPlaybackActivity;->access$200(Lcom/android/music/MediaPlaybackActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 555
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v1}, Lcom/android/music/MediaPlaybackActivity;->access$400(Lcom/android/music/MediaPlaybackActivity;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const-wide/16 v2, -0x1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mPosOverride:J
    invoke-static {v1, v2, v3}, Lcom/android/music/MediaPlaybackActivity;->access$202(Lcom/android/music/MediaPlaybackActivity;J)J

    .line 562
    iget-object v1, p0, Lcom/android/music/MediaPlaybackActivity$2;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mFromTouch:Z
    invoke-static {v1, v2}, Lcom/android/music/MediaPlaybackActivity;->access$002(Lcom/android/music/MediaPlaybackActivity;Z)Z

    .line 563
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "MediaPlayback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
