.class Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;
.super Ljava/lang/Object;
.source "PswPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 165
    iput-object p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 170
    if-nez p3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$102(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 168
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z
    invoke-static {v0, v2}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$102(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 184
    iget-object v0, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$1;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #setter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z
    invoke-static {v0, v2}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$302(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Z)Z

    .line 185
    return-void
.end method
