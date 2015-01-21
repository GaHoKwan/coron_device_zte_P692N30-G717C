.class final Lcom/farben/faq/af;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ae;

.field private final synthetic b:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/farben/faq/ae;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/af;->a:Lcom/farben/faq/ae;

    iput-object p2, p0, Lcom/farben/faq/af;->b:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/farben/faq/af;->a:Lcom/farben/faq/ae;

    iget-object v0, v0, Lcom/farben/faq/ae;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/af;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/farben/faq/af;->a:Lcom/farben/faq/ae;

    iget-object v0, v0, Lcom/farben/faq/ae;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->f:Lcom/farben/faq/c/c;

    invoke-virtual {v0, v1}, Lcom/farben/faq/c/c;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/farben/faq/af;->a:Lcom/farben/faq/ae;

    iget-object v0, v0, Lcom/farben/faq/ae;->a:Lcom/farben/faq/FavoritesActivity;

    invoke-virtual {v0}, Lcom/farben/faq/FavoritesActivity;->onResume()V

    iget-object v0, p0, Lcom/farben/faq/af;->a:Lcom/farben/faq/ae;

    iget-object v0, v0, Lcom/farben/faq/ae;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_selectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/c;

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
