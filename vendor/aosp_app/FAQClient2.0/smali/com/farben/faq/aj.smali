.class final Lcom/farben/faq/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/aj;->a:Lcom/farben/faq/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

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

    const-string v2, "faqid"

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "faqTitle"

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/aj;->a:Lcom/farben/faq/ListActivity;

    const-class v2, Lcom/farben/faq/FAQDetailActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/aj;->a:Lcom/farben/faq/ListActivity;

    invoke-virtual {v0, v1}, Lcom/farben/faq/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
