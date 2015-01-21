.class Lcom/autonavi/xmgd/user/GDAccount$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/GDAccount;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/GDAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->access$002(Lcom/autonavi/xmgd/user/GDAccount;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$100(Lcom/autonavi/xmgd/user/GDAccount;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$000(Lcom/autonavi/xmgd/user/GDAccount;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v2, 0x7f07017c

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->setResult(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/user/GDAccount;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$000(Lcom/autonavi/xmgd/user/GDAccount;)I

    move-result v0

    const/16 v1, 0x3f3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v2, 0x7f07017e

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v3, 0x7f07017d

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v2}, Lcom/autonavi/xmgd/user/GDAccount;->access$000(Lcom/autonavi/xmgd/user/GDAccount;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$100(Lcom/autonavi/xmgd/user/GDAccount;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/GDAccount;->access$002(Lcom/autonavi/xmgd/user/GDAccount;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$000(Lcom/autonavi/xmgd/user/GDAccount;)I

    move-result v0

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u89e3\u6790\u5931\u8d25!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$000(Lcom/autonavi/xmgd/user/GDAccount;)I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668IO\u5f02\u5e38!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$100(Lcom/autonavi/xmgd/user/GDAccount;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v4, 0x7f0701aa

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v4, 0x7f0701ab

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/GDAccount;->access$200(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/GDAccount$1;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    const v4, 0x7f0701ac

    #calls: Lcom/autonavi/xmgd/user/GDAccount;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/GDAccount;->access$300(Lcom/autonavi/xmgd/user/GDAccount;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
