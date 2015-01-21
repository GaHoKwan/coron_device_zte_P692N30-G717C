.class final Lcom/farben/faq/bh;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/WelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    invoke-static {v0, v5}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Z)[Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "versionKey"

    aget-object v0, v1, v5

    check-cast v0, Lcom/farben/faq/b/h;

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const/16 v0, 0x78

    iput v0, v2, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5370\u8def\u5f84"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/farben/faq/common/g;->a:Ljava/lang/String;

    const-string v3, "ztefaq/software/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "faqclient.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v0, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {}, Lcom/farben/faq/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u5f00\u59cb\u66f4\u65b0FAQ\u6570\u636e"

    invoke-static {}, Lcom/farben/faq/WelcomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/farben/faq/f/a;

    iget-object v1, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v2, v2, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/farben/faq/f/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/farben/faq/f/a;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v0, v0, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x79

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/farben/faq/bh;->a:Lcom/farben/faq/WelcomeActivity;

    iget-object v1, v1, Lcom/farben/faq/WelcomeActivity;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
