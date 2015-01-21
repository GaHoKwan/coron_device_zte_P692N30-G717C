.class Lcom/android/music/MediaPlaybackService$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$5;->this$0:Lcom/android/music/MediaPlaybackService;

    #getter for: Lcom/android/music/MediaPlaybackService;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/music/MediaPlaybackService;->access$3400(Lcom/android/music/MediaPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v2

    #calls: Lcom/android/music/MediaPlaybackService;->updateNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2}, Lcom/android/music/MediaPlaybackService;->access$1700(Lcom/android/music/MediaPlaybackService;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 631
    :cond_0
    return-void
.end method
