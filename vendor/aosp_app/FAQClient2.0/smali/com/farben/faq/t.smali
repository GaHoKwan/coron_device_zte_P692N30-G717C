.class final Lcom/farben/faq/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/t;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/t;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->h(Lcom/farben/faq/FAQDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/farben/faq/t;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->i(Lcom/farben/faq/FAQDetailActivity;)V

    return-void
.end method
