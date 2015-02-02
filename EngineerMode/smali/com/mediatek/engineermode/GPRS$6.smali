.class Lcom/mediatek/engineermode/GPRS$6;
.super Landroid/os/Handler;
.source "GPRS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/GPRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/GPRS;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/GPRS;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlive:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$600(Lcom/mediatek/engineermode/GPRS;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 595
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 599
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 602
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    .line 603
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Attache failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 613
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 614
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Detached failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 625
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 626
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    .line 627
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy command succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 631
    :cond_5
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "GPRS Fast Dormancy command failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 637
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 638
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mFlag:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$800(Lcom/mediatek/engineermode/GPRS;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 639
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 643
    :cond_6
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Activate failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 645
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 649
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 650
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    .line 651
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 655
    :cond_7
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "PDP Deactivate failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 661
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 662
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 663
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 664
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data succeeded."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 665
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 667
    :cond_8
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Send Data failed."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 673
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 674
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/engineermode/GPRS;->mFlag:Z
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/GPRS;->access$802(Lcom/mediatek/engineermode/GPRS;Z)Z

    goto/16 :goto_0

    .line 679
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 680
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    .line 681
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "IMEI WRITE"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "The IMEI is writen successfully."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 685
    :cond_9
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "IMEI WRITE"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    const-string v2, "Fail to write IMEI due to radio unavailable or something else."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v1, p0, Lcom/mediatek/engineermode/GPRS$6;->this$0:Lcom/mediatek/engineermode/GPRS;

    #getter for: Lcom/mediatek/engineermode/GPRS;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/engineermode/GPRS;->access$700(Lcom/mediatek/engineermode/GPRS;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
    .end packed-switch
.end method
