.class Lcom/android/music/MediaPlaybackActivity$10;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/android/music/RepeatingImageButton$RepeatListener;


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
    .line 639
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .locals 2
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 641
    const-string v0, "MediaPlayback"

    const-string v1, "music forward"

    invoke-static {v0, v1}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #setter for: Lcom/android/music/MediaPlaybackActivity;->mRepeatCount:I
    invoke-static {v0, p4}, Lcom/android/music/MediaPlaybackActivity;->access$1002(Lcom/android/music/MediaPlaybackActivity;I)I

    .line 644
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$10;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->scanForward(IJ)V
    invoke-static {v0, p4, p2, p3}, Lcom/android/music/MediaPlaybackActivity;->access$1200(Lcom/android/music/MediaPlaybackActivity;IJ)V

    .line 645
    return-void
.end method
