.class Lcom/powermo/SmartBar/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/DragGridView;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/DragGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0}, Lcom/powermo/SmartBar/DragGridView;->a(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0}, Lcom/powermo/SmartBar/DragGridView;->b(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v0

    iget-object v1, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v1}, Lcom/powermo/SmartBar/DragGridView;->c(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v1}, Lcom/powermo/SmartBar/DragGridView;->d(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v2}, Lcom/powermo/SmartBar/DragGridView;->e(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->a(Lcom/powermo/SmartBar/DragGridView;I)V

    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0, v4}, Lcom/powermo/SmartBar/DragGridView;->c(Lcom/powermo/SmartBar/DragGridView;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0, v4}, Lcom/powermo/SmartBar/DragGridView;->d(Lcom/powermo/SmartBar/DragGridView;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0, v4}, Lcom/powermo/SmartBar/DragGridView;->e(Lcom/powermo/SmartBar/DragGridView;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0, v4}, Lcom/powermo/SmartBar/DragGridView;->f(Lcom/powermo/SmartBar/DragGridView;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->a(Lcom/powermo/SmartBar/DragGridView;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v0, v4}, Lcom/powermo/SmartBar/DragGridView;->b(Lcom/powermo/SmartBar/DragGridView;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/powermo/SmartBar/DragGridView;->a(Lcom/powermo/SmartBar/DragGridView;J)V

    iget-object v0, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v1}, Lcom/powermo/SmartBar/DragGridView;->f(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v2}, Lcom/powermo/SmartBar/DragGridView;->g(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/powermo/SmartBar/au;->a:Lcom/powermo/SmartBar/DragGridView;

    invoke-static {v3}, Lcom/powermo/SmartBar/DragGridView;->h(Lcom/powermo/SmartBar/DragGridView;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/powermo/SmartBar/DragGridView;->a(Lcom/powermo/SmartBar/DragGridView;III)V

    goto :goto_0
.end method
