.class final Lcom/farben/faq/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/ListActivity;

.field private final synthetic b:Lcom/farben/faq/b/b;


# direct methods
.method constructor <init>(Lcom/farben/faq/ListActivity;Lcom/farben/faq/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/ak;->a:Lcom/farben/faq/ListActivity;

    iput-object p2, p0, Lcom/farben/faq/ak;->b:Lcom/farben/faq/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "channelHitArray"

    iget-object v1, p0, Lcom/farben/faq/ak;->b:Lcom/farben/faq/b/b;

    invoke-virtual {v1}, Lcom/farben/faq/b/b;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/farben/faq/ak;->a:Lcom/farben/faq/ListActivity;

    const-class v2, Lcom/farben/faq/ChannelDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "detail_channel"

    iget-object v2, p0, Lcom/farben/faq/ak;->b:Lcom/farben/faq/b/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/farben/faq/ak;->a:Lcom/farben/faq/ListActivity;

    invoke-virtual {v1, v0}, Lcom/farben/faq/ListActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
