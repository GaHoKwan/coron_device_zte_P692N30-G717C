.class Lcom/android/music/PlaylistBrowserActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 850
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity;->access$000(Lcom/android/music/PlaylistBrowserActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    iget-object v1, p0, Lcom/android/music/PlaylistBrowserActivity$3;->this$0:Lcom/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/android/music/PlaylistBrowserActivity;->mOrientaiton:I
    invoke-static {v1}, Lcom/android/music/PlaylistBrowserActivity;->access$900(Lcom/android/music/PlaylistBrowserActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 853
    :cond_0
    return-void
.end method
