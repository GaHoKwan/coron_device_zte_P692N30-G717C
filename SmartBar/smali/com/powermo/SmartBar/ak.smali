.class Lcom/powermo/SmartBar/ak;
.super Lcom/powermo/SmartBar/at;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ai;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/ak;->a:Lcom/powermo/SmartBar/ai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/powermo/SmartBar/at;-><init>(Lcom/powermo/SmartBar/ai;Lcom/powermo/SmartBar/at;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/powermo/SmartBar/ar;I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/ak;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v0}, Lcom/powermo/SmartBar/ai;->a(Lcom/powermo/SmartBar/ai;)Lcom/powermo/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/powermo/b/a;->d(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ak;->a:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->g()V

    return-void
.end method

.method public b(Lcom/powermo/SmartBar/ar;I)V
    .locals 2

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powermo/SmartBar/ak;->a:Lcom/powermo/SmartBar/ai;

    invoke-static {v1}, Lcom/powermo/SmartBar/ai;->b(Lcom/powermo/SmartBar/ai;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ak;->a:Lcom/powermo/SmartBar/ai;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/ai;->a(Lcom/powermo/SmartBar/ai;Z)V

    return-void

    :cond_1
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
