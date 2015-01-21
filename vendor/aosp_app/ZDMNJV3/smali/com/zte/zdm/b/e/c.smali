.class public Lcom/zte/zdm/b/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/e/g;


# static fields
.field private static f:Lcom/zte/zdm/b/e/c;


# instance fields
.field private g:Lcom/zte/zdm/b/e/a;

.field private h:Lcom/zte/zdm/b/e/b;

.field private i:Ljava/util/HashMap;


# direct methods
.method private constructor <init>(Lcom/zte/zdm/b/f/e/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/c;->b(Lcom/zte/zdm/b/f/e/b;)Lcom/zte/zdm/b/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    return-void
.end method

.method public static a(Lcom/zte/zdm/b/f/e/b;)Lcom/zte/zdm/b/e/c;
    .locals 1

    sget-object v0, Lcom/zte/zdm/b/e/c;->f:Lcom/zte/zdm/b/e/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/b/e/c;

    invoke-direct {v0, p0}, Lcom/zte/zdm/b/e/c;-><init>(Lcom/zte/zdm/b/f/e/b;)V

    sput-object v0, Lcom/zte/zdm/b/e/c;->f:Lcom/zte/zdm/b/e/c;

    :cond_0
    sget-object v0, Lcom/zte/zdm/b/e/c;->f:Lcom/zte/zdm/b/e/c;

    return-object v0
.end method

.method private b(ILcom/zte/zdm/b/e;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, p2}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/e;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, p3}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/d/a/k;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, p4}, Lcom/zte/zdm/b/e/b;->a(Lcom/zte/zdm/b/b/a;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need createSession,type is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/zte/zdm/b/e/b/a;

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/e/b/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/e/b;->a(Z)V

    new-instance v0, Lcom/zte/zdm/b/e/b/a;

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/e/b/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/zte/zdm/b/e/a/c;

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/zdm/b/e/a/c;-><init>(Lcom/zte/zdm/b/e/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->i()Lcom/zte/zdm/mos/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/c;->a(I)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a;->a(Lcom/zte/zdm/b/e/b;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v2}, Lcom/zte/zdm/b/e/b;->a(Z)V

    invoke-static {}, Lcom/zte/zdm/b/a;->b()Lcom/zte/zdm/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/b/a;->i()Lcom/zte/zdm/mos/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/zdm/mos/c;->a(I)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    const-string v0, "createSession session == null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/a;->a(Lcom/zte/zdm/b/e/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/zte/zdm/b/f/e/b;)Lcom/zte/zdm/b/e/b;
    .locals 1

    new-instance v0, Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, p1}, Lcom/zte/zdm/b/e/b;-><init>(Lcom/zte/zdm/b/f/e/b;)V

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/zte/zdm/b/e/a;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/e/a;

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v2, v2, v2}, Lcom/zte/zdm/b/e/c;->b(ILcom/zte/zdm/b/e;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    return-object v0
.end method

.method public a(ILcom/zte/zdm/b/e;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a;
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/b/e/a;

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "session in sessionHolder is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/zdm/b/e/c;->b(ILcom/zte/zdm/b/e;Lcom/zte/zdm/d/a/k;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/b/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    return-object v0
.end method

.method public a()Lcom/zte/zdm/b/e/b;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    return-object v0
.end method

.method public a(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setContinueSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    const-string v0, "setContinueSession: session is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/a;->a(Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a;->k()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/a;->b(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->g:Lcom/zte/zdm/b/e/a;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/a;->i()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->h:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/b;->c(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/c;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string v0, "after destroyAllSessions, but session not null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
