.class Lcom/mediatek/calendarimporter/HandleProgressActivity$4;
.super Landroid/os/Handler;
.source "HandleProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/HandleProgressActivity;->serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 276
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 322
    :goto_0
    :pswitch_0
    return-void

    .line 279
    :pswitch_1
    const-string v4, "HandleProgressActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceConnected. ProcessorMsgType:PROCESSOR_EXCEPTION. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v7, v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    const v5, 0x7f04000f

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 284
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$500(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 302
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$500(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 304
    :cond_1
    const-string v4, "HandleProgressActivity"

    const-string v5, "serviceConnected,ProcessorMsgType:PROCESSOR_FINISH. Start result Activity."

    invoke-static {v4, v5}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    const-class v5, Lcom/mediatek/calendarimporter/ShowHandleResultActivity;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v4, "SucceedCnt"

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v4, "totalCnt"

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 309
    const-string v4, "accountName"

    iget-object v5, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$300(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 312
    .local v0, eventInfo:Landroid/os/Bundle;
    const-string v4, "key_start_millis"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 313
    .local v2, startMills:J
    const-string v4, "HandleProgressActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceConnected,ProcessorMsgType:PROCESSOR_FINISH. DtStart = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v4, "eventStartTime"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 316
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 317
    iget-object v4, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$4;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
