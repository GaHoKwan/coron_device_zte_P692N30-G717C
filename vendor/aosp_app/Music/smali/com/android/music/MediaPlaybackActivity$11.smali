.class Lcom/android/music/MediaPlaybackActivity$11;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 1528
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$102(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1532
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1533
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->startPlayback()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1300(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1537
    :try_start_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getAudioId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$100(Lcom/android/music/MediaPlaybackActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1542
    :cond_0
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mIsLandscape:Z
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1400(Lcom/android/music/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mRepeatButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1500(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mShuffleButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1600(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1545
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #getter for: Lcom/android/music/MediaPlaybackActivity;->mQueueButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1700(Lcom/android/music/MediaPlaybackActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1548
    :cond_1
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setRepeatButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1800(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1549
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setShuffleButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$1900(Lcom/android/music/MediaPlaybackActivity;)V

    .line 1550
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->setPauseButtonImage()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$2000(Lcom/android/music/MediaPlaybackActivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :goto_0
    return-void

    .line 1553
    :catch_0
    move-exception v0

    .line 1570
    :cond_2
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0, v1}, Lcom/android/music/MediaPlaybackActivity;->access$102(Lcom/android/music/MediaPlaybackActivity;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 1575
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$11;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1576
    return-void
.end method
