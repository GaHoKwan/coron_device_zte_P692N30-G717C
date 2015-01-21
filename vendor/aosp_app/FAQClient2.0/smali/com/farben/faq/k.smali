.class final Lcom/farben/faq/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->a(Lcom/farben/faq/FAQDetailActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->b(Lcom/farben/faq/FAQDetailActivity;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->c(Lcom/farben/faq/FAQDetailActivity;)V

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->d(Lcom/farben/faq/FAQDetailActivity;)Lcom/farben/faq/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v1}, Lcom/farben/faq/FAQDetailActivity;->e(Lcom/farben/faq/FAQDetailActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->f(Lcom/farben/faq/FAQDetailActivity;)V

    iget-object v0, p0, Lcom/farben/faq/k;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->g(Lcom/farben/faq/FAQDetailActivity;)V

    goto :goto_0
.end method
