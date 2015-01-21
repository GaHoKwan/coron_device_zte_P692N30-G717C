.class public final Lcom/nuance/a/a/a/b/a/b/a/e;
.super Lcom/nuance/a/a/a/b/a/b/a/d;


# instance fields
.field protected a:Z

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/a/a/a/b/a/b/a/d;-><init>(Lcom/nuance/a/a/a/b/a/b/a/h;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->a:Z

    return-void
.end method


# virtual methods
.method protected final a()Lcom/nuance/a/a/a/b/a/c/b;
    .locals 4

    invoke-super {p0}, Lcom/nuance/a/a/a/b/a/b/a/d;->a()Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v0

    const-string v1, "RefId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/e;->a(Lcom/nuance/a/a/a/b/a/c/b;Ljava/lang/String;Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "Cancel"

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/e;->a(Lcom/nuance/a/a/a/b/a/c/b;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()V
    .locals 2

    invoke-super {p0}, Lcom/nuance/a/a/a/b/a/b/a/d;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->b:Lcom/nuance/a/a/a/b/a/b/a/f;

    invoke-virtual {v1}, Lcom/nuance/a/a/a/b/a/b/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/e;->f:Ljava/lang/String;

    return-void
.end method
