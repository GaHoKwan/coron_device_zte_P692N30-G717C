.class Lcom/android/soundrecorder/SoundRecorder$7;
.super Landroid/os/Handler;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 1592
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<handleMessage> start with msg.what-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1596
    :cond_0
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateOptionsMenu()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$700(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1597
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mService:Lcom/android/soundrecorder/SoundRecorderService;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/SoundRecorderService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/soundrecorder/SoundRecorderService;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1598
    .local v2, filePath:Ljava/lang/String;
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<handleMessage> mService.getCurrentFilePath() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const-string v4, ""

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/soundrecorder/SoundRecorder;->access$802(Lcom/android/soundrecorder/SoundRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 1600
    if-eqz v2, :cond_1

    .line 1601
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/soundrecorder/SoundRecorder;->access$802(Lcom/android/soundrecorder/SoundRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 1603
    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ".tmp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_1
    #setter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/soundrecorder/SoundRecorder;->access$802(Lcom/android/soundrecorder/SoundRecorder;Ljava/lang/String;)Ljava/lang/String;

    .line 1606
    :cond_1
    const-string v3, "SR/SoundRecorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<updateUi> mRecordingFileNameTextView.setText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRecordingFileNameTextView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$900(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1608
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1000(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f080032

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1609
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mRunFromLauncher:Z
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1100(Lcom/android/soundrecorder/SoundRecorder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1610
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mAcceptButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1000(Lcom/android/soundrecorder/SoundRecorder;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f080002

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1612
    :cond_2
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->hideStorageHint()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1200(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1613
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1642
    :goto_2
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mVUMeter:Lcom/android/soundrecorder/VUMeter;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1900(Lcom/android/soundrecorder/SoundRecorder;)Lcom/android/soundrecorder/VUMeter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1643
    const-string v3, "SR/SoundRecorder"

    const-string v4, "<handleMessage> end"

    invoke-static {v3, v4}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1603
    :cond_3
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mFileName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$800(Lcom/android/soundrecorder/SoundRecorder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1615
    :pswitch_0
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnIdleState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1300(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_2

    .line 1618
    :pswitch_1
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPausePlayingState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1400(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_2

    .line 1621
    :pswitch_2
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnRecordingState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1500(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_2

    .line 1624
    :pswitch_3
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPauseRecordingState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1600(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_2

    .line 1627
    :pswitch_4
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnPlayingState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1700(Lcom/android/soundrecorder/SoundRecorder;)V

    goto :goto_2

    .line 1630
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1631
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "errorCode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1632
    .local v1, errorCode:I
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-static {v3, v1}, Lcom/android/soundrecorder/ErrorHandle;->showErrorInfo(Landroid/app/Activity;I)V

    goto :goto_2

    .line 1635
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #errorCode:I
    :pswitch_6
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateUiOnSaveSuccessState()V
    invoke-static {v3}, Lcom/android/soundrecorder/SoundRecorder;->access$1800(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 1636
    iget-object v3, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    const v4, 0x7f080001

    invoke-static {v3, v4}, Lcom/android/soundrecorder/SoundRecorderUtils;->getToast(Landroid/content/Context;I)V

    goto :goto_2

    .line 1613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
