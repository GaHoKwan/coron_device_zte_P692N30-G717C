.class Lcom/android/music/TrackBrowserActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 853
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->access$1300(Lcom/android/music/TrackBrowserActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$6;->this$0:Lcom/android/music/TrackBrowserActivity;

    #getter for: Lcom/android/music/TrackBrowserActivity;->mOrientation:I
    invoke-static {v1}, Lcom/android/music/TrackBrowserActivity;->access$1400(Lcom/android/music/TrackBrowserActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 857
    :cond_0
    return-void
.end method
