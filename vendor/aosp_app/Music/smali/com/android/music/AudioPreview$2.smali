.class Lcom/android/music/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$500(Lcom/android/music/AudioPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 385
    :goto_0
    return-void

    .line 365
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 384
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #calls: Lcom/android/music/AudioPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$800(Lcom/android/music/AudioPreview;)V

    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #setter for: Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$602(Lcom/android/music/AudioPreview;Z)Z

    .line 368
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 372
    :pswitch_2
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$602(Lcom/android/music/AudioPreview;Z)Z

    .line 374
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 378
    :pswitch_3
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$600(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #setter for: Lcom/android/music/AudioPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$602(Lcom/android/music/AudioPreview;Z)Z

    .line 380
    iget-object v0, p0, Lcom/android/music/AudioPreview$2;->this$0:Lcom/android/music/AudioPreview;

    #calls: Lcom/android/music/AudioPreview;->start()V
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$700(Lcom/android/music/AudioPreview;)V

    goto :goto_1

    .line 365
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method