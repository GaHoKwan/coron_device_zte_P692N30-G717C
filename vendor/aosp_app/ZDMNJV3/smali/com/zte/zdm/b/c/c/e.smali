.class public abstract Lcom/zte/zdm/b/c/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/c/d;


# instance fields
.field private A:I

.field private B:Lcom/zte/zdm/b/d/a;

.field private C:[Z

.field private D:J

.field protected q:Lcom/zte/zdm/d/c/bj;

.field protected r:Lcom/zte/zdm/d/c/bh;

.field protected s:Lcom/zte/zdm/b/e/b;

.field protected t:Ljava/lang/String;

.field protected u:Ljava/lang/String;

.field protected v:Lcom/zte/zdm/d/c/ar;

.field protected w:I

.field protected x:Lcom/zte/zdm/d/c/s;

.field protected y:Lcom/zte/zdm/b/g/d;

.field private z:I


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->v:Lcom/zte/zdm/d/c/ar;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->x:Lcom/zte/zdm/d/c/s;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->y:Lcom/zte/zdm/b/g/d;

    iput-object v1, p0, Lcom/zte/zdm/b/c/c/e;->B:Lcom/zte/zdm/b/d/a;

    const/16 v0, 0xd

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/zdm/b/c/c/e;->D:J

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {p2}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionContext cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/b;->g()Lcom/zte/zdm/b/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->B:Lcom/zte/zdm/b/d/a;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/mos/b/c/a;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->t:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/mos/b/c/a;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/c/c/e;->u:Ljava/lang/String;

    iput v2, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    iput v2, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->B:Lcom/zte/zdm/b/d/a;

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->t:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/zte/zdm/b/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/zte/zdm/d/c/l;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "syncml:auth-md5"

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "syncml:auth-MAC"

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/l;->b()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ar;->a()[B

    move-result-object v2

    invoke-static {v2}, Lcom/zte/zdm/b/g/b;->b([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zdm/mos/b/c/a;->a([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeNextNoncefromServer nonce string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ar;->a()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bk;
    .locals 4

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->A()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/zte/zdm/b/c/c/e;->D:J

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Lcom/zte/zdm/d/c/s;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->B:Lcom/zte/zdm/b/d/a;

    invoke-interface {v1}, Lcom/zte/zdm/b/d/a;->b()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()Lcom/zte/zdm/d/c/s;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->m()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "syncml:auth-basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/zte/zdm/d/c/s;

    new-instance v3, Lcom/zte/zdm/d/c/g;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lcom/zte/zdm/d/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v3}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "syncml:auth-md5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->d()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/zte/zdm/b/d/d;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v3}, Lcom/zte/zdm/d/c/ap;-><init>()V

    invoke-virtual {v3, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v0, Lcom/zte/zdm/d/c/s;

    new-instance v1, Lcom/zte/zdm/d/c/g;

    invoke-direct {v1, v3, v2}, Lcom/zte/zdm/d/c/g;-><init>(Lcom/zte/zdm/d/c/ap;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    goto :goto_0
.end method

.method private c(Lcom/zte/zdm/d/c/s;)Z
    .locals 8

    const/16 v7, 0x191

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->o()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/c/e;->d(Lcom/zte/zdm/d/c/s;)V

    if-nez p1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/16 v1, 0x197

    iput v1, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/c/c/e;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iput v6, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    iput v7, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverAuthType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "credType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/zte/zdm/b/c/c/e;->B:Lcom/zte/zdm/b/d/a;

    invoke-interface {v4, p1, v2, v3}, Lcom/zte/zdm/b/d/a;->a(Lcom/zte/zdm/d/c/s;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "security.authenticate success"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "authenticate hmac"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authorizedStatusCode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "authenticate not hmac"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/16 v0, 0xd4

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->d(Z)V

    goto :goto_1

    :cond_3
    const-string v1, "security.authenticate fail"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput v6, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    iput v7, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    goto/16 :goto_0
.end method

.method private d(Lcom/zte/zdm/d/c/s;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncml:auth-md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "syncml:auth-MAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/zte/zdm/b/c/e;->a()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/c/e;->a(Lcom/zte/zdm/d/c/ar;)V

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ar;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/zdm/mos/b/c/a;->b([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeNextNoncefromClient  for challage the server next time;nonce string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ar;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/e;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bk;
    .locals 8

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->b()Lcom/zte/zdm/d/c/bh;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->A()J

    move-result-wide v4

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->b(Lcom/zte/zdm/d/c/bh;)J

    move-result-wide v0

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxMsgSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeSyncHdr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sizeSyncBody: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    iput-wide v4, p0, Lcom/zte/zdm/b/c/c/e;->D:J

    iget-wide v4, p0, Lcom/zte/zdm/b/c/c/e;->D:J

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/zte/zdm/b/c/c/e;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bj;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/zte/zdm/d/c/ba;->a(Lcom/zte/zdm/d/c/bh;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zte/zdm/b/c/c/e;->b(Lcom/zte/zdm/d/c/bk;)Lcom/zte/zdm/d/c/bk;

    move-result-object p1

    goto :goto_1
.end method

.method public abstract a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;
.end method

.method public abstract a()V
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/c/c/e;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    aput-boolean p2, v0, p1

    :cond_0
    :goto_0
    return-void

    :goto_1
    :pswitch_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    aput-boolean p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    const/4 v5, 0x2

    aput-boolean p2, v4, v5

    aput-boolean p2, v2, v3

    aput-boolean p2, v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/zte/zdm/b/g/d;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "idGenerator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/b/c/c/e;->y:Lcom/zte/zdm/b/g/d;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c/c/e;->v:Lcom/zte/zdm/d/c/ar;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/c/c/e;->x:Lcom/zte/zdm/d/c/s;

    return-void
.end method

.method public abstract b()V
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/zdm/b/c/c/e;->a(IZ)V

    return-void
.end method

.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->C:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public abstract e()V
.end method

.method public g()Lcom/zte/zdm/d/c/ar;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->v:Lcom/zte/zdm/d/c/ar;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/b/g/d;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->y:Lcom/zte/zdm/b/g/d;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/az;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/zte/zdm/d/c/bo;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->a()Lcom/zte/zdm/d/c/bo;

    move-result-object v0

    return-object v0
.end method

.method public k()Lcom/zte/zdm/d/c/bp;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->b()Lcom/zte/zdm/d/c/bp;

    move-result-object v0

    return-object v0
.end method

.method public l()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/e;->a()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/e;->b()V

    return-void
.end method

.method public m()Lcom/zte/zdm/d/c/bj;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    return-object v0
.end method

.method public n()Lcom/zte/zdm/d/c/bh;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    return-object v0
.end method

.method public o()Lcom/zte/zdm/d/c/s;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->x:Lcom/zte/zdm/d/c/s;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bh;->b()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/b/c/c/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/e;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected r()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/bh;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "the header status is missing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->o()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, "the header status code is missing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/c/e;->a(Lcom/zte/zdm/d/c/l;)V

    return-void
.end method

.method protected s()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->q:Lcom/zte/zdm/d/c/bj;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->j()Lcom/zte/zdm/d/c/s;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "INVALID CREDENTIALS - Invalid credential error"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    const/16 v0, 0x197

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->w:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/c/e;->b(Lcom/zte/zdm/d/c/s;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the server uses an unsupported authentication typek "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncml:auth-md5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/s;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "AUTH_TYPE_MD5 || AUTH_TYPE_HMAC ,so get Nonce from server"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/zte/zdm/d/c/ar;

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->n()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/zdm/d/c/ar;-><init>([B)V

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/s;->f()Lcom/zte/zdm/d/c/g;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/zdm/d/c/g;->a(Lcom/zte/zdm/d/c/ar;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/c/e;->c(Lcom/zte/zdm/d/c/s;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverAuthenticationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/c/c/e;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected t()V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x20

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->r:Lcom/zte/zdm/d/c/bh;

    invoke-static {v0}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/bh;)Lcom/zte/zdm/d/c/bd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "the header status is missing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->o()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v0, "the header status code is missing"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bd;->l()Lcom/zte/zdm/d/c/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/c/c/e;->a(Lcom/zte/zdm/d/c/l;)V

    const/16 v2, 0x191

    if-eq v1, v2, :cond_2

    const/16 v2, 0x197

    if-ne v1, v2, :cond_7

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/l;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authenticate from server is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2, v1}, Lcom/zte/zdm/b/e/b;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->u:Ljava/lang/String;

    const-string v3, "syncml:auth-basic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "syncml:auth-basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "the server required credential is null"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/String;)V

    iput v4, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/l;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/c/e;->a(Lcom/zte/zdm/d/c/s;)V

    iput v4, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientAuthenticationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/b/c/e;->a(Lcom/zte/zdm/d/c/l;Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/d/c/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/c/c/e;->a(Lcom/zte/zdm/d/c/s;)V

    iput v4, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/zte/zdm/b/c/c;

    const-string v1, "Unable to authenticate to the server"

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0xd4

    if-ne v1, v0, :cond_8

    const-string v0, "Server logged the client(code 212)"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v5}, Lcom/zte/zdm/b/e/b;->e(Z)V

    goto :goto_1

    :cond_8
    const-string v0, "Server auhenticated the client (code 200)"

    invoke-static {v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    goto :goto_1
.end method

.method protected u()Lcom/zte/zdm/d/c/s;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncml:auth-MAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cred is null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->x:Lcom/zte/zdm/d/c/s;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zte/zdm/b/c/c/e;->c()Lcom/zte/zdm/d/c/s;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->x:Lcom/zte/zdm/d/c/s;

    goto :goto_0
.end method

.method protected v()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->F()Z

    move-result v0

    return v0
.end method

.method protected w()Z
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/c/c/e;->s:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->G()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    iget v0, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/zte/zdm/b/c/c/e;->A:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/b/c/c/e;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
