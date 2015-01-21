.class Lcom/android/music/AlbumBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 326
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mService:Lcom/android/music/IMediaPlaybackService;
    invoke-static {v0}, Lcom/android/music/AlbumBrowserActivity;->access$000(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    iget-object v1, p0, Lcom/android/music/AlbumBrowserActivity$1;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mOrientation:I
    invoke-static {v1}, Lcom/android/music/AlbumBrowserActivity;->access$100(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->updateNowPlaying(Landroid/app/Activity;I)V

    .line 330
    :cond_0
    return-void
.end method
