.class final Lcom/farben/faq/g;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/DialogAct;


# direct methods
.method private constructor <init>(Lcom/farben/faq/DialogAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/farben/faq/DialogAct;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/g;-><init>(Lcom/farben/faq/DialogAct;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v0, v2}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Z)[Ljava/lang/Object;

    move-result-object v1

    aget-object v0, v1, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v0}, Lcom/farben/faq/DialogAct;->a(Lcom/farben/faq/DialogAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-static {}, Lcom/farben/faq/DialogAct;->a()I

    move-result v2

    iput v2, v0, Landroid/os/Message;->what:I

    aget-object v1, v1, v3

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v1}, Lcom/farben/faq/DialogAct;->a(Lcom/farben/faq/DialogAct;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v0}, Lcom/farben/faq/DialogAct;->a(Lcom/farben/faq/DialogAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/farben/faq/DialogAct;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/g;->a:Lcom/farben/faq/DialogAct;

    invoke-static {v0}, Lcom/farben/faq/DialogAct;->a(Lcom/farben/faq/DialogAct;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/farben/faq/DialogAct;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
