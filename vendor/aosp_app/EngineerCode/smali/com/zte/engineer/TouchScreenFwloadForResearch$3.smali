.class Lcom/zte/engineer/TouchScreenFwloadForResearch$3;
.super Landroid/os/Handler;
.source "TouchScreenFwloadForResearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/TouchScreenFwloadForResearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;


# direct methods
.method constructor <init>(Lcom/zte/engineer/TouchScreenFwloadForResearch;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "paramMessage"

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 87
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, ">>>>>>>>>>handleMessage()>>>>>>>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------msg.what()===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 170
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "------default--------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    const-string v0, "TAG"

    const-string v1, "<<<<<<<<<<handleMessage()<<<<<<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    return-void

    .line 91
    :pswitch_0
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    const-string v1, "------MESSAGE_CHECK_UPDATE_RESULT--------"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$400(Lcom/zte/engineer/TouchScreenFwloadForResearch;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1194

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$500(Lcom/zte/engineer/TouchScreenFwloadForResearch;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$502(Lcom/zte/engineer/TouchScreenFwloadForResearch;I)I

    .line 97
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------totalTime ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$500(Lcom/zte/engineer/TouchScreenFwloadForResearch;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$602(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----isUpdateSuccess = touchscreenfwloader(4)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$600(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isUpdateSuccess:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$600(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$500(Lcom/zte/engineer/TouchScreenFwloadForResearch;)I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2

    .line 136
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--totalTime >= 60----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->totalTime:I
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$500(Lcom/zte/engineer/TouchScreenFwloadForResearch;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->lastTime:J
    invoke-static {v0, v1, v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$402(Lcom/zte/engineer/TouchScreenFwloadForResearch;J)J

    .line 140
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v0, v0, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    iget-object v1, v1, Lcom/zte/engineer/TouchScreenFwloadForResearch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const/4 v1, 0x0

    #calls: Lcom/zte/engineer/TouchScreenFwloadForResearch;->setAirplaneModeOn(Z)V
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$700(Lcom/zte/engineer/TouchScreenFwloadForResearch;Z)V

    .line 147
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$802(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----tpInformation = touchscreenfwloader(1)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$800(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$900(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->tpInformation:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$800(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->touchscreenfwloader(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1002(Lcom/zte/engineer/TouchScreenFwloadForResearch;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    const-string v0, "Emode.TouchScreenFwloadForResearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----isNewVersion = touchscreenfwloader(3)====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1000(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->isNewVersion:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1000(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1100(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const v2, 0x7f0600dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_2
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_load:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1200(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->common_result:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$000(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_load:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1300(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->force_result:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$200(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    #getter for: Lcom/zte/engineer/TouchScreenFwloadForResearch;->update_or_not:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/engineer/TouchScreenFwloadForResearch;->access$1100(Lcom/zte/engineer/TouchScreenFwloadForResearch;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/engineer/TouchScreenFwloadForResearch$3;->this$0:Lcom/zte/engineer/TouchScreenFwloadForResearch;

    const v2, 0x7f0600de

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
