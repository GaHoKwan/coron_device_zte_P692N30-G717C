.class final Lcom/farben/faq/service/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/service/FAQUpdateService;


# direct methods
.method constructor <init>(Lcom/farben/faq/service/FAQUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/service/a;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/service/a;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v0}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/service/a;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v0}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/farben/faq/e/a;->a(Z)V

    :cond_0
    sput-boolean v1, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/farben/faq/service/a;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v0}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/farben/faq/service/a;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v0}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/farben/faq/e/a;->a(Z)V

    :cond_3
    sput-boolean v2, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    goto :goto_0
.end method
