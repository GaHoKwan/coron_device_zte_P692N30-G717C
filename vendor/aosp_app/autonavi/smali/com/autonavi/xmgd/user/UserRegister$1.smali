.class Lcom/autonavi/xmgd/user/UserRegister$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/UserRegister;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const v6, 0x7f07018d

    const/16 v4, 0x3f1

    const/16 v3, 0x3c

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$000(Lcom/autonavi/xmgd/user/UserRegister;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$102(Lcom/autonavi/xmgd/user/UserRegister;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v2, 0x7f070192

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->showNext()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$400(Lcom/autonavi/xmgd/user/UserRegister;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070199

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v3, 0x7f070193

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v2}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ] \uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$000(Lcom/autonavi/xmgd/user/UserRegister;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$102(Lcom/autonavi/xmgd/user/UserRegister;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    const/16 v1, 0x4c2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    const/16 v1, 0x4c5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070199

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07019b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v3, 0x7f07019d

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v2}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

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

    :sswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$000(Lcom/autonavi/xmgd/user/UserRegister;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    iget v1, p1, Landroid/os/Message;->arg2:I

    #setter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$102(Lcom/autonavi/xmgd/user/UserRegister;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u89e3\u6790\u5931\u8d25!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->rspcode:I
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$100(Lcom/autonavi/xmgd/user/UserRegister;)I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668IO\u5f02\u5e38!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->dismissMyDialog()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$000(Lcom/autonavi/xmgd/user/UserRegister;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v4, 0x7f0701aa

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

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

    :pswitch_1
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v4, 0x7f0701ab

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

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

    :pswitch_2
    iget-object v1, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/autonavi/xmgd/user/UserRegister;->access$200(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    const v4, 0x7f0701ac

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->getStr(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/autonavi/xmgd/user/UserRegister;->access$300(Lcom/autonavi/xmgd/user/UserRegister;I)Ljava/lang/String;

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

    :sswitch_5
    invoke-static {}, Lcom/autonavi/xmgd/user/UserRegister;->access$500()I

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/autonavi/xmgd/user/UserRegister;->access$502(I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$600(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$600(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #calls: Lcom/autonavi/xmgd/user/UserRegister;->updateGetIdentifyCodeView()V
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$700(Lcom/autonavi/xmgd/user/UserRegister;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$800(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {v3}, Lcom/autonavi/xmgd/user/UserRegister;->access$502(I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$600(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$1;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mBtGetVerificationCode:Landroid/widget/Button;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$600(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0xb -> :sswitch_5
        0xc -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
        0x8 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
