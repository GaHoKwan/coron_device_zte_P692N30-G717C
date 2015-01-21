.class Lcom/android/music/MusicBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 503
    const-string v0, "MusicBrowser"

    const-string v1, "mTrackListListener"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$500(Lcom/android/music/MusicBrowserActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    iget-object v1, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    #getter for: Lcom/android/music/MusicBrowserActivity;->mOrientaiton:I
    invoke-static {v1}, Lcom/android/music/MusicBrowserActivity;->access$600(Lcom/android/music/MusicBrowserActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 506
    iget-object v0, p0, Lcom/android/music/MusicBrowserActivity$3;->this$0:Lcom/android/music/MusicBrowserActivity;

    #calls: Lcom/android/music/MusicBrowserActivity;->updatePlaybackTab()V
    invoke-static {v0}, Lcom/android/music/MusicBrowserActivity;->access$700(Lcom/android/music/MusicBrowserActivity;)V

    .line 508
    :cond_0
    return-void
.end method
