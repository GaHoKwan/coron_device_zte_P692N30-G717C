.class Lcom/powermo/ui/h;
.super Lcom/powermo/ui/j;


# instance fields
.field final synthetic a:Lcom/powermo/ui/f;


# direct methods
.method constructor <init>(Lcom/powermo/ui/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/ui/h;->a:Lcom/powermo/ui/f;

    invoke-direct {p0, p2}, Lcom/powermo/ui/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/powermo/ui/h;->a:Lcom/powermo/ui/f;

    iget-object v0, v0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->c(Lcom/powermo/ui/a;)Lcom/powermo/ui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/h;->a:Lcom/powermo/ui/f;

    iget v1, p0, Lcom/powermo/ui/h;->b:I

    invoke-static {v0, v1}, Lcom/powermo/ui/f;->a(Lcom/powermo/ui/f;I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/powermo/ui/h;->a:Lcom/powermo/ui/f;

    iget-object v2, v2, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v2}, Lcom/powermo/ui/a;->c(Lcom/powermo/ui/a;)Lcom/powermo/ui/b;

    move-result-object v2

    iget v3, p0, Lcom/powermo/ui/h;->b:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/powermo/ui/b;->b(IIII)V

    goto :goto_0
.end method
