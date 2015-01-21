.class final Lcom/farben/faq/ac;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/farben/faq/FavoritesActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/FavoritesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ac;->a:Lcom/farben/faq/FavoritesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/farben/faq/ac;->a:Lcom/farben/faq/FavoritesActivity;

    iput-boolean v1, v0, Lcom/farben/faq/FavoritesActivity;->j:Z

    iget-object v0, p0, Lcom/farben/faq/ac;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_noselectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/ac;->a:Lcom/farben/faq/FavoritesActivity;

    iget-object v0, v0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_selectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ac;->a:Lcom/farben/faq/FavoritesActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/farben/faq/FavoritesActivity;->j:Z

    goto :goto_0
.end method
