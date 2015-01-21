.class final Lcom/farben/faq/an;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;


# direct methods
.method private constructor <init>(Lcom/farben/faq/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/an;->a:Lcom/farben/faq/ListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/farben/faq/ListActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/an;-><init>(Lcom/farben/faq/ListActivity;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/farben/faq/an;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->a(Lcom/farben/faq/ListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/an;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->b(Lcom/farben/faq/ListActivity;)Lcom/farben/faq/widget/ChannelGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farben/faq/widget/ChannelGallery;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    const/16 v0, 0x8

    iput v0, v1, Landroid/os/Message;->what:I

    sget-object v0, Lcom/farben/faq/ListActivity;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/farben/faq/an;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->c(Lcom/farben/faq/ListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_0
.end method
