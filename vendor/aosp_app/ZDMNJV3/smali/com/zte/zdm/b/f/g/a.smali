.class public Lcom/zte/zdm/b/f/g/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/b/f/g/c;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/f/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zte/zdm/b/f/g/c;

    invoke-direct {v0, p1}, Lcom/zte/zdm/b/f/g/c;-><init>(Lcom/zte/zdm/b/f/c;)V

    iput-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    return-void
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/g/c;->b()Lcom/zte/zdm/b/f/g/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rollbackCommand the command type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/zte/zdm/b/f/g/d;->a:Lcom/zte/zdm/b/f/g/e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/zdm/b/f/g/b;->a:[I

    iget-object v3, v1, Lcom/zte/zdm/b/f/g/d;->a:Lcom/zte/zdm/b/f/g/e;

    invoke-virtual {v3}, Lcom/zte/zdm/b/f/g/e;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/g/c;->a(Lcom/zte/zdm/b/f/g/d;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/g/c;->b(Lcom/zte/zdm/b/f/g/d;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/g/c;->c(Lcom/zte/zdm/b/f/g/d;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/f/g/c;->d(Lcom/zte/zdm/b/f/g/d;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/f/g/a;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/g/a;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/g/c;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/b/f/g/a;->b:Z

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "rollback all the commands..."

    invoke-static {v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    invoke-virtual {v1}, Lcom/zte/zdm/b/f/g/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/f/g/a;->f()Z

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public e()Lcom/zte/zdm/b/f/g/c;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/f/g/a;->a:Lcom/zte/zdm/b/f/g/c;

    return-object v0
.end method
