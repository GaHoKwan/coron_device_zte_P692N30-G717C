.class Lcom/mediatek/vlw/VLWMediaController$3;
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
    .line 224
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    const/4 v6, 0x0

    .line 234
    if-nez p3, :cond_1

    .line 278
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 240
    .restart local p1
    :cond_1
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$800(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    const-string v1, "VLWMediaController"

    const-string v2, "onProgressChanged, edit mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VLWMediaController;->pause()V

    .line 243
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VLWMediaController;->access$802(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v2}, Lcom/mediatek/vlw/VLWMediaController;->access$300(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VLWMediaController;->access$1502(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 247
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$300(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    if-gtz v1, :cond_8

    .line 248
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v1, v6}, Lcom/mediatek/vlw/VLWMediaController;->access$302(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 249
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v1, v6}, Lcom/mediatek/vlw/VLWMediaController;->access$402(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VLWMediaController;->updateState()V

    .line 254
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1600(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 256
    .local v0, p:I
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 257
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 259
    :cond_3
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mProgressBar:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1000(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 261
    .end local v0           #p:I
    :cond_4
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1600(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 262
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEditorBarStart:Lcom/mediatek/vlw/VLWSeekBar;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1600(Lcom/mediatek/vlw/VLWMediaController;)Lcom/mediatek/vlw/VLWSeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mMinDuration:I
    invoke-static {v2}, Lcom/mediatek/vlw/VLWMediaController;->access$1200(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/mediatek/vlw/VLWSeekBar;->setRightThreshold(I)V

    .line 265
    :cond_5
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 266
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v3}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1700(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 269
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEndTime:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1700(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v3, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I
    invoke-static {v3}, Lcom/mediatek/vlw/VLWMediaController;->access$1500(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_7
    instance-of v1, p1, Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VLWSeekBar;->fromKeyEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenEndChanged(I)V
    invoke-static {v1, p2}, Lcom/mediatek/vlw/VLWMediaController;->access$1800(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 276
    check-cast p1, Lcom/mediatek/vlw/VLWSeekBar;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/vlw/VLWSeekBar;->resetFromKeyEvent()V

    goto/16 :goto_0

    .line 251
    .restart local p1
    :cond_8
    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I
    invoke-static {v2}, Lcom/mediatek/vlw/VLWMediaController;->access$900(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v2

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v1, v2}, Lcom/mediatek/vlw/VLWMediaController;->access$402(Lcom/mediatek/vlw/VLWMediaController;I)I

    goto/16 :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$800(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->pause()V

    .line 228
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mIsEditmode:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$802(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 230
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$3;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, -0x1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenEndChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$1800(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 282
    return-void
.end method
