.class Lcom/autonavi/xmgd/navigator/dx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x5

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->b(Lcom/autonavi/xmgd/navigator/MyNavigate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const v2, 0x7f070186

    invoke-virtual {v1, v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->w(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->e(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    const/16 v1, 0x405

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070185

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->w(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->e(Lcom/autonavi/xmgd/navigator/MyNavigate;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const v3, 0x7f070187

    invoke-virtual {v2, v3}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v2}, Lcom/autonavi/xmgd/navigator/MyNavigate;->u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

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

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->b(Lcom/autonavi/xmgd/navigator/MyNavigate;I)I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u89e3\u6790\u5931\u8d25!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->u(Lcom/autonavi/xmgd/navigator/MyNavigate;)I

    move-result v0

    const/16 v1, 0x232a

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668IO\u5f02\u5e38!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u8fde\u63a5\u9519\u8bef!"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->dismissDialog(I)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const v4, 0x7f0701aa

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const v4, 0x7f0701ab

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

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
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-static {v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->v(Lcom/autonavi/xmgd/navigator/MyNavigate;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/dx;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const v4, 0x7f0701ac

    invoke-virtual {v3, v4}, Lcom/autonavi/xmgd/navigator/MyNavigate;->getString(I)Ljava/lang/String;

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
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
