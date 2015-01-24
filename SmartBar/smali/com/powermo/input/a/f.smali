.class Lcom/powermo/input/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/powermo/input/a/a;

.field final b:Lcom/powermo/input/a/a;

.field final synthetic c:Lcom/powermo/input/a/b;


# direct methods
.method constructor <init>(Lcom/powermo/input/a/b;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/powermo/input/a/f;->c:Lcom/powermo/input/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    invoke-static {p1, v2, v2, v2, v0}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/f;->a:Lcom/powermo/input/a/a;

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/powermo/input/a/b;->b(Lcom/powermo/input/a/b;)I

    move-result v1

    invoke-static {p1, v0, v2, v2, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/f;->b:Lcom/powermo/input/a/a;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/a/f;->a:Lcom/powermo/input/a/a;

    invoke-virtual {v0}, Lcom/powermo/input/a/a;->d()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/input/a/f;->c:Lcom/powermo/input/a/b;

    iget-object v1, p0, Lcom/powermo/input/a/f;->b:Lcom/powermo/input/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/a;Z)V

    iget-object v0, p0, Lcom/powermo/input/a/f;->c:Lcom/powermo/input/a/b;

    iget-object v1, p0, Lcom/powermo/input/a/f;->a:Lcom/powermo/input/a/a;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/a;Z)V

    iget-object v0, p0, Lcom/powermo/input/a/f;->c:Lcom/powermo/input/a/b;

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/b;I)V

    return-void
.end method
