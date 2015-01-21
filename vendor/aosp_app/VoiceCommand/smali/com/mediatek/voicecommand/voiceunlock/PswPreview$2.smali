.class Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;
.super Ljava/lang/Object;
.source "PswPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/voiceunlock/PswPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$400(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 215
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #calls: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->updatePlayPause()V
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$700(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$502(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 199
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 203
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$502(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 205
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1

    .line 209
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$500(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPausedByTransientLossOfFocus:Z
    invoke-static {v0, v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$502(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 211
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$2;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #calls: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->start()V
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$600(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    goto :goto_1

    .line 196
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
