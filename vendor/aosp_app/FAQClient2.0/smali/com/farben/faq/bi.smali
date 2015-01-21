.class final Lcom/farben/faq/bi;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->b(Lcom/farben/faq/WelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->c(Lcom/farben/faq/WelcomeActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const-string v1, "welcome_checkupdate"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const-string v1, "welcome_getdata"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const-string v1, "welcome_getdata"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->b:Landroid/widget/TextView;

    const-string v1, "welcome_coming"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->d(Lcom/farben/faq/WelcomeActivity;)V

    goto :goto_1

    :sswitch_4
    sget v0, Lcom/farben/faq/WelcomeActivity;->a:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->e(Lcom/farben/faq/WelcomeActivity;)V

    goto :goto_1

    :sswitch_5
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0}, Lcom/farben/faq/WelcomeActivity;->f(Lcom/farben/faq/WelcomeActivity;)V

    goto :goto_1

    :sswitch_6
    iget-object v0, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/farben/faq/WelcomeActivity;->a(Lcom/farben/faq/WelcomeActivity;I)V

    goto :goto_1

    :sswitch_7
    const-string v0, "\u6709\u65b0\u7248\u672c\u53d1\u5e03"

    invoke-static {}, Lcom/farben/faq/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "versionKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/h;

    iget-object v1, p0, Lcom/farben/faq/bi;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v1, v0}, Lcom/farben/faq/WelcomeActivity;->a(Lcom/farben/faq/WelcomeActivity;Lcom/farben/faq/b/h;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x78 -> :sswitch_7
    .end sparse-switch
.end method
