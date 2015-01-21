.class final Lcom/farben/faq/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/TypeListAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/TypeListAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/au;->a:Lcom/farben/faq/TypeListAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/farben/faq/au;->a:Lcom/farben/faq/TypeListAct;

    invoke-static {v0}, Lcom/farben/faq/TypeListAct;->a(Lcom/farben/faq/TypeListAct;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/a;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/farben/faq/au;->a:Lcom/farben/faq/TypeListAct;

    const-class v3, Lcom/farben/faq/TypeDetailListAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "classid"

    iget v3, v0, Lcom/farben/faq/b/a;->a:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "className"

    iget-object v0, v0, Lcom/farben/faq/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/farben/faq/au;->a:Lcom/farben/faq/TypeListAct;

    invoke-virtual {v0, v1}, Lcom/farben/faq/TypeListAct;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
