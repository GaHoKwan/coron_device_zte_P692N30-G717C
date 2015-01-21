.class public final Lcom/nuance/a/a/a/c/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/nuance/a/a/a/a/b/a/f$a;

.field private synthetic b:Lcom/nuance/a/a/a/c/e;


# direct methods
.method public constructor <init>(Lcom/nuance/a/a/a/c/e;Lcom/nuance/a/a/a/a/b/a/f$a;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/a/a/a/c/e$b;->b:Lcom/nuance/a/a/a/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/a/a/a/c/e$b;->a:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-static {p1}, Lcom/nuance/a/a/a/c/e;->a(Lcom/nuance/a/a/a/c/e;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/nuance/a/a/a/c/e$b;->b:Lcom/nuance/a/a/a/c/e;

    invoke-static {v0}, Lcom/nuance/a/a/a/c/e;->a(Lcom/nuance/a/a/a/c/e;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/a/a/a/c/e$b;->a:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/a/a/a/c/e$b;

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nuance/a/a/a/c/e;->d()Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TIMER run() _pendingTimerTasks.size():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/a/a/a/c/e$b;->b:Lcom/nuance/a/a/a/c/e;

    invoke-static {v3}, Lcom/nuance/a/a/a/c/e;->a(Lcom/nuance/a/a/a/c/e;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/nuance/a/a/a/c/e$b;->a:Lcom/nuance/a/a/a/a/b/a/f$a;

    invoke-interface {v0}, Lcom/nuance/a/a/a/a/b/a/f$a;->run()V

    :cond_1
    return-void
.end method
