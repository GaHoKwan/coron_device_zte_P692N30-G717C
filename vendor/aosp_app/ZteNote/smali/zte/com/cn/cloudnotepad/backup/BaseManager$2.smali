.class Lzte/com/cn/cloudnotepad/backup/BaseManager$2;
.super Landroid/os/Handler;
.source "BaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/backup/BaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)Lzte/com/cn/cloudnotepad/backup/BaseManager;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 141
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;

    invoke-direct {v5, p0}, Lzte/com/cn/cloudnotepad/backup/BaseManager$2$1;-><init>(Lzte/com/cn/cloudnotepad/backup/BaseManager$2;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3, v4}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V

    .line 152
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$1(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 154
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->createProgressDlg()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$2(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #setter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3, v6}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$3(Lzte/com/cn/cloudnotepad/backup/BaseManager;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 161
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_1
    const-string v3, "wangna"

    const-string v4, "MSG_UPDATE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-wide v0, v3, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDoneFilesSize:J

    .line 164
    .local v0, doneBytes:J
    :goto_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 165
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$4(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->getProgressNumberFormat(J)Ljava/lang/String;
    invoke-static {v4, v0, v1}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$5(Lzte/com/cn/cloudnotepad/backup/BaseManager;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0           #doneBytes:J
    :cond_1
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    iget-wide v4, v3, Lzte/com/cn/cloudnotepad/backup/BaseManager;->mDoneFilesSize:J

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long v0, v4, v6

    goto :goto_1

    .line 169
    :pswitch_2
    const-string v3, "wangna"

    const-string v4, "MSG_CANCEL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$1(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 171
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #setter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mThread:Ljava/lang/Thread;
    invoke-static {v3, v6}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$0(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V

    .line 172
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissProgressDialog()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$6(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    .line 173
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doCancelled()V

    goto/16 :goto_0

    .line 176
    :pswitch_3
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissProgressDialog()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$6(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    .line 177
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doneTask()V

    goto/16 :goto_0

    .line 180
    :pswitch_4
    const-string v3, "wangna"

    const-string v4, "MSG_PRE_START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->createPreDlg()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$7(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    goto/16 :goto_0

    .line 184
    :pswitch_5
    const-string v3, "wangna"

    const-string v4, "MSG_PRE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissPreDialog()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$8(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    .line 186
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->donePreTask()V

    goto/16 :goto_0

    .line 189
    :pswitch_6
    const-string v3, "wangna"

    const-string v4, "MSG_PRE_CANCEL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #getter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$9(Lzte/com/cn/cloudnotepad/backup/BaseManager;)Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 191
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #setter for: Lzte/com/cn/cloudnotepad/backup/BaseManager;->mPreThread:Ljava/lang/Thread;
    invoke-static {v3, v6}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$10(Lzte/com/cn/cloudnotepad/backup/BaseManager;Ljava/lang/Thread;)V

    .line 192
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    #calls: Lzte/com/cn/cloudnotepad/backup/BaseManager;->dismissPreDialog()V
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->access$8(Lzte/com/cn/cloudnotepad/backup/BaseManager;)V

    .line 193
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/BaseManager$2;->this$0:Lzte/com/cn/cloudnotepad/backup/BaseManager;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/backup/BaseManager;->doPreCancelled()V

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
