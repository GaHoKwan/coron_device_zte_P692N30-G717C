.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initLayoutView(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 326
    const-string v3, "zhangxue"

    const-string v4, "onProgressChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz p3, :cond_0

    .line 329
    if-eqz p1, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$3(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/SeekBar;

    move-result-object v3

    if-nez v3, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 333
    .local v0, dest:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->getDuration()I

    move-result v1

    .line 334
    .local v1, mMax:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlaySeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$3(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 336
    .local v2, sMax:I
    const-string v3, "zhangxue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dest="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMax="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",sMax="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 337
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mMax * dest / sMax = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int v5, v1, v0

    div-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$3;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    #getter for: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->mPlayRecorder:Lzte/com/cn/cloudnotepad/ui/SoundRecorder;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$2(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)Lzte/com/cn/cloudnotepad/ui/SoundRecorder;

    move-result-object v3

    mul-int v4, v1, v0

    div-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lzte/com/cn/cloudnotepad/ui/SoundRecorder;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 322
    const-string v0, "zhangxue"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 318
    const-string v0, "zhangxue"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method
