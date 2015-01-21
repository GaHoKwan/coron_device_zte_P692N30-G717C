.class public final Lcom/powermo/base/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/base/d;


# instance fields
.field private a:Lcom/powermo/base/i;

.field private final b:Lcom/powermo/base/e;

.field private final c:Lcom/powermo/base/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    new-instance v0, Lcom/powermo/base/e;

    const-string v1, "smartshow.version"

    invoke-direct {v0, v1}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powermo/base/a/k;->b:Lcom/powermo/base/e;

    new-instance v0, Lcom/powermo/base/e;

    const-string v1, "smartshow.interface"

    invoke-direct {v0, v1}, Lcom/powermo/base/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/powermo/base/a/k;->c:Lcom/powermo/base/e;

    invoke-direct {p0}, Lcom/powermo/base/a/k;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/powermo/a/a;->a()Lcom/powermo/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powermo/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/base/a/k;->b:Lcom/powermo/base/e;

    invoke-virtual {v0}, Lcom/powermo/a/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/base/a/k;->c:Lcom/powermo/base/e;

    invoke-virtual {v1, v0}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/powermo/base/a/k;->b:Lcom/powermo/base/e;

    invoke-virtual {v0}, Lcom/powermo/base/e;->b()V

    iget-object v0, p0, Lcom/powermo/base/a/k;->c:Lcom/powermo/base/e;

    invoke-virtual {v0}, Lcom/powermo/base/e;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/a/k;->b:Lcom/powermo/base/e;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/base/a/k;->c:Lcom/powermo/base/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/base/e;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "config.android."

    return-object v0
.end method

.method public final a(Lcom/powermo/base/b;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/powermo/base/i;)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    iget-object v0, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    iget-object v1, p0, Lcom/powermo/base/a/k;->b:Lcom/powermo/base/e;

    invoke-interface {v0, v1, v2}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    iget-object v0, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    iget-object v1, p0, Lcom/powermo/base/a/k;->c:Lcom/powermo/base/e;

    invoke-interface {v0, v1, v2}, Lcom/powermo/base/i;->a(Lcom/powermo/base/b;Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/base/a/k;->a:Lcom/powermo/base/i;

    return-void
.end method

.method public final b(Lcom/powermo/base/b;)V
    .locals 0

    return-void
.end method
