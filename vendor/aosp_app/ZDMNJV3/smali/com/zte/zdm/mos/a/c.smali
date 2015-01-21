.class public Lcom/zte/zdm/mos/a/c;
.super Lcom/zte/zdm/b/e/a;

# interfaces
.implements Lcom/zte/zdm/mos/b;


# instance fields
.field private g:Lcom/zte/zdm/mos/a/b;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/e/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/zdm/mos/a/c;->h:I

    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->m()V

    return-void
.end method

.method private m()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mos/a/b;

    invoke-direct {v0, p0}, Lcom/zte/zdm/mos/a/b;-><init>(Lcom/zte/zdm/mos/a/c;)V

    iput-object v0, p0, Lcom/zte/zdm/mos/a/c;->g:Lcom/zte/zdm/mos/a/b;

    return-void
.end method

.method private n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 0

    return-void
.end method

.method private p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private q()V
    .locals 0

    return-void
.end method

.method private r()V
    .locals 0

    return-void
.end method

.method private s()V
    .locals 0

    return-void
.end method

.method private t()V
    .locals 0

    return-void
.end method

.method private u()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/a/c;->g:Lcom/zte/zdm/mos/a/b;

    invoke-virtual {v0}, Lcom/zte/zdm/mos/a/b;->m()V

    invoke-virtual {p0}, Lcom/zte/zdm/mos/a/c;->l()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/zdm/mos/a/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/zte/zdm/mos/a/c;->h:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/mos/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->s()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->r()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->q()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->p()Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->o()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/zte/zdm/mos/a/c;->n()Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
