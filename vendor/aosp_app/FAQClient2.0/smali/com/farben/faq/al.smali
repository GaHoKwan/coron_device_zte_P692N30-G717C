.class final Lcom/farben/faq/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;


# direct methods
.method constructor <init>(Lcom/farben/faq/ListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/al;->a:Lcom/farben/faq/ListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    iget-object v0, p0, Lcom/farben/faq/al;->a:Lcom/farben/faq/ListActivity;

    invoke-static {v0}, Lcom/farben/faq/ListActivity;->e(Lcom/farben/faq/ListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p3, v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->j()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "channelHitArray"

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/farben/faq/al;->a:Lcom/farben/faq/ListActivity;

    const-class v3, Lcom/farben/faq/ChannelDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail_channel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "\u5185\u5bb9"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/farben/faq/al;->a:Lcom/farben/faq/ListActivity;

    invoke-virtual {v0, v1}, Lcom/farben/faq/ListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
