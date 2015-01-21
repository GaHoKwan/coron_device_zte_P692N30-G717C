.class final Lcom/farben/faq/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/a/b;


# direct methods
.method constructor <init>(Lcom/farben/faq/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/a/c;->a:Lcom/farben/faq/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/a/c;->a:Lcom/farben/faq/a/b;

    invoke-static {v0}, Lcom/farben/faq/a/b;->a(Lcom/farben/faq/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/c;

    invoke-virtual {v0, p2}, Lcom/farben/faq/b/c;->a(Z)V

    sget-object v0, Lcom/farben/faq/FavoritesActivity;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/farben/faq/FavoritesActivity;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/farben/faq/a/c;->a:Lcom/farben/faq/a/b;

    invoke-static {v1}, Lcom/farben/faq/a/b;->b(Lcom/farben/faq/a/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
