.class final Lcom/farben/faq/ar;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/SearchKeyAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/SearchKeyAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ar;->a:Lcom/farben/faq/SearchKeyAct;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/farben/faq/ar;->a:Lcom/farben/faq/SearchKeyAct;

    iget-object v1, p0, Lcom/farben/faq/ar;->a:Lcom/farben/faq/SearchKeyAct;

    invoke-static {v1}, Lcom/farben/faq/SearchKeyAct;->a(Lcom/farben/faq/SearchKeyAct;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/farben/faq/SearchKeyAct;->a(I)V

    iget-object v0, p0, Lcom/farben/faq/ar;->a:Lcom/farben/faq/SearchKeyAct;

    invoke-static {v0}, Lcom/farben/faq/SearchKeyAct;->b(Lcom/farben/faq/SearchKeyAct;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
