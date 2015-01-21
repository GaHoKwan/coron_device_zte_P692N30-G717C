.class Lcom/android/gallery3d/app/MoviePlayer$15;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/MoviePlayer;->showDialog2Disp([Ljava/lang/String;I[Ljava/lang/Integer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;

.field final synthetic val$TrackIdx:[Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;[Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1713
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iput-object p2, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->val$TrackIdx:[Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1717
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAndSubTitleChange  onClick whichButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3500(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1721
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "AudioAndSubTitleChange  onClick whichButton SameChoice"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1736
    :goto_0
    return-void

    .line 1725
    :cond_0
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->val$TrackIdx:[Ljava/lang/Integer;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/video/MTKVideoView;->selectTrack(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/app/MoviePlayer$TState;->PAUSED:Lcom/android/gallery3d/app/MoviePlayer$TState;

    if-ne v0, v1, :cond_1

    .line 1727
    const-string v0, "Gallery2/MoviePlayer"

    const-string v1, "AudioAndSubTitleChange --- onClick if has error after selectTrack"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->playVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1729
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->val$TrackIdx:[Ljava/lang/Integer;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->selectTrack(I)I

    .line 1730
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->pauseVideo()V
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2600(Lcom/android/gallery3d/app/MoviePlayer;)V

    .line 1733
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mSelectAudioIndex:I
    invoke-static {v0, p2}, Lcom/android/gallery3d/app/MoviePlayer;->access$3502(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 1734
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$15;->val$TrackIdx:[Ljava/lang/Integer;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mSelcetAudioTrackIdx:I
    invoke-static {v0, v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3702(Lcom/android/gallery3d/app/MoviePlayer;I)I

    .line 1735
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
