.class final Lcom/farben/faq/av;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/TypeListAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/TypeListAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/av;->a:Lcom/farben/faq/TypeListAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/farben/faq/aw;

    iget-object v1, p0, Lcom/farben/faq/av;->a:Lcom/farben/faq/TypeListAct;

    invoke-direct {v0, v1}, Lcom/farben/faq/aw;-><init>(Lcom/farben/faq/TypeListAct;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farben/faq/aw;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
