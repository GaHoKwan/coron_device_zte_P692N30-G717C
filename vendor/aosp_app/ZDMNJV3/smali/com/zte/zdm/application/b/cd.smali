.class Lcom/zte/zdm/application/b/cd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/application/b/s;Lcom/zte/zdm/application/b/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/application/b/cd;-><init>(Lcom/zte/zdm/application/b/s;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/cd;->c:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cd;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/b/cd;->b:Z

    return-void
.end method

.method public a([Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cd;->i:[Ljava/lang/Runnable;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/cd;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cd;->f:Ljava/lang/String;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/application/b/cd;->e:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cd;->g:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v3, 0x0

    iget v0, p0, Lcom/zte/zdm/application/b/cd;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->i:[Ljava/lang/Runnable;

    if-nez v0, :cond_0

    move-object v7, v3

    :goto_1
    iget-object v8, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cd;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/zte/zdm/application/b/cd;->b:Z

    iget-object v5, p0, Lcom/zte/zdm/application/b/cd;->g:Ljava/lang/String;

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    invoke-static {v8, v0}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show.waitingDlgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->d(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->i:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v2}, Lcom/zte/zdm/application/b/s;->d(Lcom/zte/zdm/application/b/s;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(Lcom/zte/zdm/a/j;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismiss.waitingDlgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->d(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v9, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cd;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    iget v5, p0, Lcom/zte/zdm/application/b/cd;->e:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/application/b/cd;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/zte/zdm/application/b/cd;->b:Z

    iget-object v5, p0, Lcom/zte/zdm/application/b/cd;->g:Ljava/lang/String;

    new-instance v6, Lcom/zte/zdm/application/b/ce;

    invoke-direct {v6, p0}, Lcom/zte/zdm/application/b/ce;-><init>(Lcom/zte/zdm/application/b/cd;)V

    new-instance v7, Lcom/zte/zdm/application/b/cf;

    invoke-direct {v7, p0}, Lcom/zte/zdm/application/b/cf;-><init>(Lcom/zte/zdm/application/b/cd;)V

    new-instance v8, Lcom/zte/zdm/application/b/cg;

    invoke-direct {v8, p0}, Lcom/zte/zdm/application/b/cg;-><init>(Lcom/zte/zdm/application/b/cd;)V

    invoke-virtual/range {v0 .. v8}, Lcom/zte/zdm/application/activities/b;->a(Lcom/zte/zdm/a/j;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;I)I

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    iget v2, p0, Lcom/zte/zdm/application/b/cd;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->a(II)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    iget v2, p0, Lcom/zte/zdm/application/b/cd;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(II)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    iget v4, p0, Lcom/zte/zdm/application/b/cd;->e:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/application/b/cd;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show download progress dilog, its id is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->b(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v2}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(Lcom/zte/zdm/a/j;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dissmissProgressBarID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    iget v2, p0, Lcom/zte/zdm/application/b/cd;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->a(II)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->c(Lcom/zte/zdm/application/b/s;)Lcom/zte/zdm/application/activities/b;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v1}, Lcom/zte/zdm/application/b/s;->l(Lcom/zte/zdm/application/b/s;)I

    move-result v1

    iget v2, p0, Lcom/zte/zdm/application/b/cd;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/b;->b(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
