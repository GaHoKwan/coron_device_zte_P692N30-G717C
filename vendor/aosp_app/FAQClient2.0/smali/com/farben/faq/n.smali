.class final Lcom/farben/faq/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FAQDetailActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-virtual {v0}, Lcom/farben/faq/FAQDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faqid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v1}, Lcom/farben/faq/FAQDetailActivity;->k(Lcom/farben/faq/FAQDetailActivity;)Lcom/farben/faq/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->c(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "attentionArray"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v1}, Lcom/farben/faq/FAQDetailActivity;->k(Lcom/farben/faq/FAQDetailActivity;)Lcom/farben/faq/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->b(I)V

    iget-object v0, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    invoke-static {v0}, Lcom/farben/faq/FAQDetailActivity;->o(Lcom/farben/faq/FAQDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/farben/faq/n;->a:Lcom/farben/faq/FAQDetailActivity;

    const-string v1, "common_actionok"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
