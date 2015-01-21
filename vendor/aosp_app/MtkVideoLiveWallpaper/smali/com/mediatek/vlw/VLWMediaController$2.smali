.class Lcom/mediatek/vlw/VLWMediaController$2;
.super Ljava/lang/Object;
.source "VLWMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VLWMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VLWMediaController;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VLWMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 182
    if-nez p3, :cond_0

    .line 217
    .end local p1
    :goto_0
    return-void

    .line 188
    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$800(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    const-string v0, "VLWMediaController"

    const-string v1, "onProgressChanged, edit mode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->pause()V

    .line 191
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$802(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$300(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$902(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 195
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$900(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$402(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 196
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 201
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I
    invoke-static {v2}, Lcom/mediatek/vlw/VLWMediaController;->access$900(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$1100(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEditorBarEnd:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$1100(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1200(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/vlw/VLWSeekBar;->setLeftThreshold(I)V

    .line 210
    :cond_4
    instance-of v0, p1, Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWSeekBar;->fromKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 211
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenStartChanged(I)V
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VLWMediaController;->access$1300(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 212
    check-cast p1, Lcom/mediatek/vlw/VLWSeekBar;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/vlw/VLWSeekBar;->resetFromKeyEvent()V

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #calls: Lcom/mediatek/vlw/VLWMediaController;->setLevelFromProgress(I)I
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VLWMediaController;->access$1400(Lcom/mediatek/vlw/VLWMediaController;I)I

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$800(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->pause()V

    .line 176
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$802(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 178
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$2;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, -0x1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenStartChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1300(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 221
    return-void
.end method
