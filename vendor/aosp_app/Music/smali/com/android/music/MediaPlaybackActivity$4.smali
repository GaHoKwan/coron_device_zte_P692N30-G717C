.class Lcom/android/music/MediaPlaybackActivity$4;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 576
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/music/MediaPlaybackActivity$4;->this$0:Lcom/android/music/MediaPlaybackActivity;

    #calls: Lcom/android/music/MediaPlaybackActivity;->toggleShuffle()V
    invoke-static {v0}, Lcom/android/music/MediaPlaybackActivity;->access$500(Lcom/android/music/MediaPlaybackActivity;)V

    .line 579
    return-void
.end method