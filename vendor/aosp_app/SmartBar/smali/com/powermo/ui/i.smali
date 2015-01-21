.class Lcom/powermo/ui/i;
.super Lcom/powermo/ui/j;


# instance fields
.field final synthetic a:Lcom/powermo/ui/f;


# direct methods
.method constructor <init>(Lcom/powermo/ui/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/ui/i;->a:Lcom/powermo/ui/f;

    invoke-direct {p0, p2}, Lcom/powermo/ui/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/ui/i;->a:Lcom/powermo/ui/f;

    iget-object v0, v0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->c(Lcom/powermo/ui/a;)Lcom/powermo/ui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/ui/i;->a:Lcom/powermo/ui/f;

    iget-object v0, v0, Lcom/powermo/ui/f;->a:Lcom/powermo/ui/a;

    invoke-static {v0}, Lcom/powermo/ui/a;->c(Lcom/powermo/ui/a;)Lcom/powermo/ui/b;

    move-result-object v0

    iget v1, p0, Lcom/powermo/ui/i;->b:I

    invoke-interface {v0, v1}, Lcom/powermo/ui/b;->a(I)V

    :cond_0
    return-void
.end method
