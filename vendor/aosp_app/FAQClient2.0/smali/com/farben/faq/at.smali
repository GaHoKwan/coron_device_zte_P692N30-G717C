.class final Lcom/farben/faq/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/TypeDetailListAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/TypeDetailListAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/at;->a:Lcom/farben/faq/TypeDetailListAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/farben/faq/at;->a:Lcom/farben/faq/TypeDetailListAct;

    invoke-static {v0}, Lcom/farben/faq/TypeDetailListAct;->a(Lcom/farben/faq/TypeDetailListAct;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/c;

    const-string v1, "faqHitArray"

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/farben/faq/common/a;->b(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "faqid"

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->b()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "faqTitle"

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/at;->a:Lcom/farben/faq/TypeDetailListAct;

    const-class v2, Lcom/farben/faq/FAQDetailActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/at;->a:Lcom/farben/faq/TypeDetailListAct;

    invoke-virtual {v0, v1}, Lcom/farben/faq/TypeDetailListAct;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
