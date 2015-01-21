.class Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RetrieveLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/RetrieveLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/RetrieveLockView;


# direct methods
.method private constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;)V
    .locals 0
    .parameter

    .prologue
    .line 588
    iput-object p1, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/retrieve/service/RetrieveLockView;Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 588
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;-><init>(Lcom/zte/retrieve/service/RetrieveLockView;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 592
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 593
    packed-switch p1, :pswitch_data_0

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 596
    :pswitch_0
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$8(Lcom/zte/retrieve/service/RetrieveLockView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLockStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->lockViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$9(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 598
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setUnalarm()Z

    .line 599
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->cancelAlarm()V

    .line 601
    :cond_1
    const-string v0, "ringing"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :pswitch_1
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getAnswerStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 607
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->unRegCallListener()V
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$12(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 610
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 611
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setLock()Z

    .line 612
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/controller/Controller;->setAnswerStatus(Z)V

    .line 614
    :cond_3
    const-string v0, "offhook"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLockStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->lockViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$9(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #setter for: Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z
    invoke-static {v0, v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$13(Lcom/zte/retrieve/service/RetrieveLockView;Z)V

    goto/16 :goto_0

    .line 622
    :pswitch_2
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getAnswerStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 623
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #calls: Lcom/zte/retrieve/service/RetrieveLockView;->unRegCallListener()V
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$12(Lcom/zte/retrieve/service/RetrieveLockView;)V

    .line 624
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$11(Lcom/zte/retrieve/service/RetrieveLockView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 627
    :cond_4
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->mOperator:Lcom/zte/retrieve/service/instruct/InstructionOperator;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$10(Lcom/zte/retrieve/service/RetrieveLockView;)Lcom/zte/retrieve/service/instruct/InstructionOperator;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zte/retrieve/service/instruct/InstructionOperator;->lock(Z)I

    .line 628
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->setLock()Z

    .line 629
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/zte/retrieve/controller/Controller;->setAnswerStatus(Z)V

    .line 631
    :cond_5
    const-string v0, "idle"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->isLockStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #getter for: Lcom/zte/retrieve/service/RetrieveLockView;->lockViewUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/zte/retrieve/service/RetrieveLockView;->access$9(Lcom/zte/retrieve/service/RetrieveLockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 634
    iget-object v0, p0, Lcom/zte/retrieve/service/RetrieveLockView$CallStateListener;->this$0:Lcom/zte/retrieve/service/RetrieveLockView;

    #setter for: Lcom/zte/retrieve/service/RetrieveLockView;->isTryingUnlock:Z
    invoke-static {v0, v2}, Lcom/zte/retrieve/service/RetrieveLockView;->access$13(Lcom/zte/retrieve/service/RetrieveLockView;Z)V

    goto/16 :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
