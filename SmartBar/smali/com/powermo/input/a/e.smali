.class Lcom/powermo/input/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/powermo/input/a/a;

.field final synthetic b:Lcom/powermo/input/a/b;


# direct methods
.method constructor <init>(Lcom/powermo/input/a/b;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/powermo/input/a/e;->b:Lcom/powermo/input/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0, v1, v1, v1}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/input/a/e;->a:Lcom/powermo/input/a/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/input/a/e;->b:Lcom/powermo/input/a/b;

    invoke-static {v0}, Lcom/powermo/input/a/b;->d(Lcom/powermo/input/a/b;)Lcom/powermo/input/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/input/a/d;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/input/a/e;->b:Lcom/powermo/input/a/b;

    invoke-static {v1}, Lcom/powermo/input/a/b;->c(Lcom/powermo/input/a/b;)Lcom/powermo/input/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/input/a/e;->b:Lcom/powermo/input/a/b;

    iget-object v1, p0, Lcom/powermo/input/a/e;->a:Lcom/powermo/input/a/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powermo/input/a/b;->a(Lcom/powermo/input/a/a;Z)V

    iget-object v0, p0, Lcom/powermo/input/a/e;->b:Lcom/powermo/input/a/b;

    invoke-static {v0}, Lcom/powermo/input/a/b;->e(Lcom/powermo/input/a/b;)V

    return-void
.end method
