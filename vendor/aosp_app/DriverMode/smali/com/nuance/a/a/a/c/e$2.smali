.class final Lcom/nuance/a/a/a/c/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nuance/a/a/a/c/e$a;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/c/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/c/e$2;->a:Lcom/nuance/a/a/a/c/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "Executing Message"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/a/a/a/c/e$2;->a:Lcom/nuance/a/a/a/c/e$a;

    iget-object v0, v0, Lcom/nuance/a/a/a/c/e$a;->c:Lcom/nuance/a/a/a/a/b/a/c$b;

    iget-object v1, p0, Lcom/nuance/a/a/a/c/e$2;->a:Lcom/nuance/a/a/a/c/e$a;

    iget-object v1, v1, Lcom/nuance/a/a/a/c/e$a;->d:Ljava/lang/Object;

    iget-object v2, p0, Lcom/nuance/a/a/a/c/e$2;->a:Lcom/nuance/a/a/a/c/e$a;

    iget-object v2, v2, Lcom/nuance/a/a/a/c/e$a;->a:Ljava/lang/Thread;

    invoke-interface {v0, v1, v2}, Lcom/nuance/a/a/a/a/b/a/c$b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    const-string v1, "Done Executing Message"

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
