.class public Lcom/zte/zdm/b/f/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/h/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/zte/zdm/b/f/h/c;


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/f/h/c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/b/f/e/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    iput-object v1, p0, Lcom/zte/zdm/b/f/e/a;->c:Lcom/zte/zdm/b/f/h/c;

    iput-object p1, p0, Lcom/zte/zdm/b/f/e/a;->c:Lcom/zte/zdm/b/f/h/c;

    return-void
.end method

.method private a(ILcom/zte/zdm/b/f/d/f;)V
    .locals 4

    invoke-virtual {p2}, Lcom/zte/zdm/b/f/d/f;->m()Lcom/zte/zdm/b/f/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/f/d/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p2}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    const-string v3, "command not allowed"

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/e/a;->c:Lcom/zte/zdm/b/f/h/c;

    invoke-interface {v0, p2}, Lcom/zte/zdm/b/f/h/c;->d(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acl.isPermitted return false command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Acl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    const/16 v1, 0x1a9

    const-string v2, "permissions denied"

    invoke-direct {v0, p2, v1, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/zte/zdm/b/f/d/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    const-string v3, "Leaf nodes cannot have children."

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private b(Lcom/zte/zdm/b/f/d/f;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->h()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    const-string v3, "Delete Failed, node is permanent node."

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private c(Lcom/zte/zdm/b/f/d/f;)V
    .locals 4

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    invoke-static {v0}, Lcom/zte/zdm/b/f/d/h;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    invoke-virtual {p1, v0}, Lcom/zte/zdm/b/f/d/f;->b(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f4

    const-string v3, "Get property does not exsits."

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x195

    const-string v3, "Get size property does not support."

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0
.end method

.method private d(Lcom/zte/zdm/b/f/d/f;)V
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private e(Lcom/zte/zdm/b/f/d/f;)V
    .locals 5

    const/16 v4, 0x195

    const/4 v3, 0x1

    const/4 v2, 0x4

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-eq v0, v2, :cond_2

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Replace is allowed only on Name, ACL and Title properties of the node."

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->h()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/zte/zdm/b/f/h/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'Name\' MUST NOT be changed for permanent objects"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/b/f/h/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/b/f/e/a;->c:Lcom/zte/zdm/b/f/h/c;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/f/h/c;->d(Ljava/lang/String;)Lcom/zte/zdm/b/f/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/f/e/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/f/d/b;->c(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->c()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/f/e/a;->b:I

    return-void
.end method

.method public a(Lcom/zte/zdm/b/f/d/f;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/d/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lcom/zte/zdm/b/f/e/a;->a(ILcom/zte/zdm/b/f/d/f;)V

    invoke-direct {p0, p2, v0}, Lcom/zte/zdm/b/f/e/a;->a(ILjava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/e/a;->a(Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/e/a;->b(Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/e/a;->c(Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/e/a;->d(Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/f/e/a;->e(Lcom/zte/zdm/b/f/d/f;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/f/e/a;->a:Ljava/lang/String;

    return-void
.end method
