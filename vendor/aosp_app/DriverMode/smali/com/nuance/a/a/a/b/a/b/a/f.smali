.class public final Lcom/nuance/a/a/a/b/a/b/a/f;
.super Lcom/nuance/a/a/a/b/a/b/a/h;


# instance fields
.field protected a:Lcom/nuance/a/a/a/b/a/a/b;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/nuance/a/a/a/b/a/b/a/e;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/nuance/a/a/a/b/a/b/a/a;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p6, v1, v1, p5}, Lcom/nuance/a/a/a/b/a/b/a/h;-><init>(Ljava/lang/String;Lcom/nuance/a/a/a/b/a/b/a/h;Lcom/nuance/a/a/a/b/a/b/a/f;Lcom/nuance/a/a/a/b/a/b/a/a;)V

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->g:I

    iput-object p2, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->j:Ljava/lang/String;

    iput p4, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->k:I

    iput-object v1, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->a:Lcom/nuance/a/a/a/b/a/a/b;

    iput-object p1, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->f:Ljava/lang/String;

    iput-object p0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->b:Lcom/nuance/a/a/a/b/a/b/a/f;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/nuance/a/a/a/b/a/c/b;
    .locals 4

    invoke-super {p0}, Lcom/nuance/a/a/a/b/a/b/a/h;->a()Lcom/nuance/a/a/a/b/a/c/b;

    move-result-object v0

    const-string v1, "Application"

    iget-object v2, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/f;->a(Lcom/nuance/a/a/a/b/a/c/b;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "SchemaVersion"

    iget-object v2, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/f;->a(Lcom/nuance/a/a/a/b/a/c/b;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v1, "RetentionDays"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->k:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v1, v2}, Lcom/nuance/a/a/a/b/a/b/a/f;->a(Lcom/nuance/a/a/a/b/a/c/b;Ljava/lang/String;Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected final c()V
    .locals 1

    invoke-super {p0}, Lcom/nuance/a/a/a/b/a/b/a/h;->c()V

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->h:Lcom/nuance/a/a/a/b/a/b/a/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->h:Lcom/nuance/a/a/a/b/a/b/a/e;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/b/a/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nuance/a/a/a/b/a/b/a/f;->g:I

    return v0
.end method
