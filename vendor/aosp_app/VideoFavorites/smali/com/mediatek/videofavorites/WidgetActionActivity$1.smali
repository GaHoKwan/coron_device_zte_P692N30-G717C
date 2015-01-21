.class Lcom/mediatek/videofavorites/WidgetActionActivity$1;
.super Landroid/os/Handler;
.source "WidgetActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/WidgetActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0xc8

    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 159
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v1, v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;->getProgress()I

    move-result v0

    .line 163
    .local v0, progress:I
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v1, v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v1, v0}, Lcom/mediatek/videofavorites/ProgressDialogFragment;->setProgress(I)V

    .line 164
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 170
    .end local v0           #progress:I
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v1, v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v1, v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    iget-object v1, v1, Lcom/mediatek/videofavorites/WidgetActionActivity;->mProgressDlg:Lcom/mediatek/videofavorites/ProgressDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    const v2, 0x7f05000d

    #calls: Lcom/mediatek/videofavorites/WidgetActionActivity;->showToastAndSuicide(II)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$200(Lcom/mediatek/videofavorites/WidgetActionActivity;II)V

    goto :goto_0

    .line 181
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    const v2, 0x7f05000f

    #calls: Lcom/mediatek/videofavorites/WidgetActionActivity;->showToastAndSuicide(II)V
    invoke-static {v1, v2, v4}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$200(Lcom/mediatek/videofavorites/WidgetActionActivity;II)V

    goto :goto_0

    .line 185
    :pswitch_4
    const-string v1, "WidgetAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_TIMER_TEST, waited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J
    invoke-static {v5}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$300(Lcom/mediatek/videofavorites/WidgetActionActivity;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mPaused:Z
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$400(Lcom/mediatek/videofavorites/WidgetActionActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    const-string v1, "WidgetAction"

    const-string v2, "sendEmptyMessageDelayed(), delay:200"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    #setter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mStartTime:J
    invoke-static {v1, v2, v3}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$302(Lcom/mediatek/videofavorites/WidgetActionActivity;J)J

    .line 190
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$100(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 195
    :pswitch_5
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mTranscodeTask:Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;
    invoke-static {v1}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$000(Lcom/mediatek/videofavorites/WidgetActionActivity;)Lcom/mediatek/videofavorites/WidgetActionActivity$TranscodeTask;

    move-result-object v1

    new-array v2, v3, [Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mediatek/videofavorites/WidgetActionActivity$1;->this$0:Lcom/mediatek/videofavorites/WidgetActionActivity;

    #getter for: Lcom/mediatek/videofavorites/WidgetActionActivity;->mVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/mediatek/videofavorites/WidgetActionActivity;->access$500(Lcom/mediatek/videofavorites/WidgetActionActivity;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
