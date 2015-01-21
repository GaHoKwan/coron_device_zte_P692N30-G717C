.class final Lcom/farben/faq/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/DialogAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/DialogAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const v3, 0x7f080022

    const v2, 0x7f080021

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/farben/faq/DialogAct;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/farben/faq/b/h;

    iget-object v1, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v1, v0}, Lcom/farben/faq/DialogAct;->a(Lcom/farben/faq/DialogAct;Lcom/farben/faq/b/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/farben/faq/DialogAct;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0, v2}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "update_resultmsg"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0, v3}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "common_ok"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/farben/faq/DialogAct;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0, v2}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "update_check_error"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/c;->a:Lcom/farben/faq/DialogAct;

    invoke-virtual {v0, v3}, Lcom/farben/faq/DialogAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "common_ok"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
