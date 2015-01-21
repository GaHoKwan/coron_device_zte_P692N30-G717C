.class Lcom/autonavi/xmgd/user/ForgetPassword$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/ForgetPassword;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/ForgetPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const v4, 0x7f07018d

    const/16 v3, 0x3c

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$002(Lcom/autonavi/xmgd/user/ForgetPassword;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$100(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701a6

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->showNext()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$300(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$002(Lcom/autonavi/xmgd/user/ForgetPassword;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$100(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    const/16 v1, 0x4c2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    const/16 v1, 0x3f1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    const v3, 0x7f07019d

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v2}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

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

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0701a9

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    const v3, 0x7f0701a7

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v2}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

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

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$100(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$002(Lcom/autonavi/xmgd/user/ForgetPassword;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u89e3\u6790\u5931\u8d25!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$000(Lcom/autonavi/xmgd/user/ForgetPassword;)I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668IO\u5f02\u5e38!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$100(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    const v4, 0x7f0701aa

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

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

    :pswitch_5
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    const v4, 0x7f0701ab

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

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

    :pswitch_6
    iget-object v1, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$200(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    const v4, 0x7f0701ac

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/user/ForgetPassword;->getString(I)Ljava/lang/String;

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

    :sswitch_2
    invoke-static {}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$400()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$402(I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$500(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$500(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #calls: Lcom/autonavi/xmgd/user/ForgetPassword;->updateGetIdentifyCodeView()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$600(Lcom/autonavi/xmgd/user/ForgetPassword;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$700(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v3}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$402(I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$500(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$1;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$500(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
