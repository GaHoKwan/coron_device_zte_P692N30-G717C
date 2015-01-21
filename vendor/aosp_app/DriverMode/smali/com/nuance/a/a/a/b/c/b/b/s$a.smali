.class public final Lcom/nuance/a/a/a/b/c/b/b/s$a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/nuance/a/a/a/b/c/b/b/s;

.field private e:Z


# direct methods
.method protected constructor <init>(ILcom/nuance/a/a/a/b/c/b/b/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a:I

    invoke-static {p2}, Lcom/nuance/a/a/a/b/c/b/b/s;->e(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->f()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/nuance/a/a/a/b/c/b/b/s;->e(Lcom/nuance/a/a/a/b/c/b/b/s;)Lcom/nuance/a/a/a/b/c/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/a/a/a/b/c/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->b:Ljava/lang/String;

    :goto_0
    const-string v0, "INTERNAL_ERROR"

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->d:Lcom/nuance/a/a/a/b/c/b/b/s;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->e:Z

    return-void

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/a/a/a/b/c/b/b/s$a;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->d:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0, p0}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/s;Lcom/nuance/a/a/a/b/c/b/b/s$a;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->a:I

    return v0
.end method

.method protected final a(Lcom/nuance/a/a/a/b/c/c/b$a;)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    const-string v1, "INTERNAL_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/c/b$a;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->d:Lcom/nuance/a/a/a/b/c/b/b/s;

    invoke-static {v0, p0}, Lcom/nuance/a/a/a/b/c/b/b/s;->a(Lcom/nuance/a/a/a/b/c/b/b/s;Lcom/nuance/a/a/a/b/c/b/b/s$a;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/a/a/a/b/c/c/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->b:Ljava/lang/String;

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->e:Z

    return-void
.end method

.method protected final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/a/a/a/b/c/b/b/s$a;->e:Z

    return v0
.end method
