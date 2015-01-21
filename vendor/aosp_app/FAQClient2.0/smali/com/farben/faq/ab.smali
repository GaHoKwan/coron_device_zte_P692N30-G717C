.class final Lcom/farben/faq/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/FavoritesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v1, v1, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v1, v1, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-boolean v0, v0, Lcom/farben/faq/FavoritesActivity;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iput-boolean v2, v0, Lcom/farben/faq/FavoritesActivity;->j:Z

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->i:Lcom/farben/faq/a/b;

    invoke-virtual {v0, v2}, Lcom/farben/faq/a/b;->a(Z)V

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_selectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iput-boolean v3, v0, Lcom/farben/faq/FavoritesActivity;->j:Z

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->i:Lcom/farben/faq/a/b;

    invoke-virtual {v0, v3}, Lcom/farben/faq/a/b;->a(Z)V

    iget-object v0, p0, Lcom/farben/faq/ab;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_noselectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
