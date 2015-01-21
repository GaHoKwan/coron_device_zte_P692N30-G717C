.class public Lcom/zte/zdm/b/e/b/a;
.super Lcom/zte/zdm/b/e/a;


# static fields
.field private static final p:I = 0x6e


# instance fields
.field private g:I

.field private h:[B

.field private i:[B

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/zte/zdm/b/e/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/zdm/b/e/a;-><init>(Lcom/zte/zdm/b/e/b;)V

    return-void
.end method

.method private A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/b/a;->n:Z

    return v0
.end method

.method private B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/b/a;->o:Z

    return v0
.end method

.method private a(Lcom/zte/zdm/d/c/bk;)V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x1

    new-instance v0, Lcom/zte/zdm/b/c/b/b;

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1, p1}, Lcom/zte/zdm/b/c/b/b;-><init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/b/b;->e()V

    new-instance v1, Lcom/zte/zdm/b/c/b/a;

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v1, v2, p1}, Lcom/zte/zdm/b/c/b/a;-><init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/b/b;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->e(Z)V

    const-string v2, "auth data is ok,process action message"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/zte/zdm/b/c/b/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->g(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/a;->f()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/c/b/a;->a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bk;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    const-string v1, "request:\n"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/zte/zdm/b/c/b/b;->x()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/zte/zdm/b/c/b/b;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->g(Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "action setSessionAborted "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/a;->d()V

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->f(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/zte/zdm/b/g/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/c/b/b;->a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bk;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    const-string v1, "request:\n"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    goto :goto_0
.end method

.method private a(Lcom/zte/zdm/d/c/bk;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->c()Lcom/zte/zdm/d/c/az;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/az;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/zdm/d/c/bj;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/zte/zdm/b/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a([BLcom/zte/zdm/d/c/bk;)V
    .locals 3

    const-string v0, ""

    :try_start_0
    iget-boolean v0, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/zte/zdm/d/b/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml data:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "traceSession:Exceptionn"

    invoke-static {p0, v1, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data hex:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/zdm/b/g/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send data bin:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/zte/zdm/d/c/bk;)V
    .locals 7

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response hmac value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/zte/zdm/d/c/ah;

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->k:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/zte/zdm/d/c/ah;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/zte/zdm/d/c/ah;->l()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MD5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Algorithm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t supported using hmac"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    const-string v0, "MD5"

    iget-object v3, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    iget-object v4, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/zdm/mos/b/c/a;->o()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v5}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/zdm/mos/b/c/a;->h()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v6}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/zdm/mos/b/c/a;->n()[B

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/zte/zdm/b/d/d;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {v2, v0}, Lcom/zte/zdm/d/c/ah;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/zte/zdm/d/c/s;

    invoke-direct {v0, v2}, Lcom/zte/zdm/d/c/s;-><init>(Lcom/zte/zdm/d/c/g;)V

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/zdm/d/c/bj;->a(Lcom/zte/zdm/d/c/s;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "calculateMac"

    invoke-static {p0, v3, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/e/b/a;->g:I

    return-void
.end method

.method private c(Lcom/zte/zdm/d/c/bk;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/bk;->a()Lcom/zte/zdm/d/c/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/bj;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/b/a;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/b/a;->m:Z

    return-void
.end method

.method private f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/b/a;->n:Z

    return-void
.end method

.method private g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/b/a;->o:Z

    return-void
.end method

.method private w()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "processDestroySessioning"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/b/e/b/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->e(Z)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/b/e/b;->d(Z)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->v()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v0}, Lcom/zte/zdm/b/e/e;->c()V

    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->t()V

    return-void
.end method

.method private y()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v0, "application/vnd.syncml.dm+wbxml"

    const-string v1, "application/vnd.syncml.dm+xml"

    iget-boolean v2, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private z()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "MD5"

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    iget-object v3, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v3}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v4}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/zdm/mos/b/c/a;->p()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v5}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/zdm/mos/b/c/a;->d()[B

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/zte/zdm/b/d/d;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "algorithm="

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "MD5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", username=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v2}, Lcom/zte/zdm/b/e/b;->b()Lcom/zte/zdm/mos/b/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/mos/b/c/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\", mac="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "calculateMac"

    invoke-static {p0, v2, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    return-void
.end method

.method protected a(Ljava/lang/Exception;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "handleSessionException:"

    invoke-static {p0, v1, p1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v1}, Lcom/zte/zdm/d/a/k;->i()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->d:Lcom/zte/zdm/b/e/e;

    invoke-interface {v2, v1}, Lcom/zte/zdm/b/e/e;->c(I)V

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/e/b/a;->c(I)V

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/b/e/b/a;->g:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->d()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/b/e/b;->b(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->l()V

    return-void
.end method

.method public i()V
    .locals 0

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->e()V

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
    .locals 2

    :cond_0
    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->x()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/b/e/b/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/zte/zdm/b/e/b/a;->g:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(I)V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->m()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->n()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->o()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->p()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected m()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->r()V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->q()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/e/b/a;->c(I)V
    :try_end_0
    .catch Lcom/zte/zdm/d/c/au; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_0
.end method

.method protected n()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->s()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "moveTo DmSessionState.DM_SESSION_STATE_TERM "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const-string v0, "performPostMessage "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->q()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(I)V
    :try_end_0
    .catch Lcom/zte/zdm/d/c/au; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1
.end method

.method protected o()Z
    .locals 2

    :try_start_0
    const-string v0, "=================== processManagementMessage start  ==================="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSessionEnded is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->t()V

    const-string v0, "=================== processManagementMessage end    ==================="

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->A()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "moveTo DmSessionState.DM_SESSION_STATE_TERM "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(I)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    const-string v0, "performPostMessage "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zte/zdm/b/e/b/a;->q()V
    :try_end_0
    .catch Lcom/zte/zdm/d/c/au; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/zte/zdm/b/c/c; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Ljava/lang/Exception;)Z

    move-result v0

    goto :goto_1
.end method

.method protected p()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->w()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/zte/zdm/b/e/b/a;->c(I)V

    return v0
.end method

.method protected q()V
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v1}, Lcom/zte/zdm/b/e/b;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "syncml:auth-MAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "x-syncml-hmac"

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "Accept"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", */*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->j:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->j:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/zte/zdm/d/a/k;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    invoke-interface {v1, v0}, Lcom/zte/zdm/d/a/k;->a(Ljava/util/Hashtable;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    invoke-direct {p0}, Lcom/zte/zdm/b/e/b/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->a:Lcom/zte/zdm/d/a/k;

    const-string v1, "x-syncml-hmac"

    invoke-interface {v0, v1}, Lcom/zte/zdm/d/a/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/b/e/b/a;->k:Ljava/lang/String;

    return-void
.end method

.method protected r()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->b:Lcom/zte/zdm/b/b/a;

    const-string v1, "encode_wbxml_msg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/b/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(Z)V

    new-instance v0, Lcom/zte/zdm/b/c/b/d;

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v0, v1}, Lcom/zte/zdm/b/c/b/d;-><init>(Lcom/zte/zdm/b/e/b;)V

    const-string v1, "+++++++++++++++++++ prepare Request SyncML ++++++++++++++++++++"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/zdm/b/c/b/d;->a()Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    const-string v1, "------------------- prepare Request SyncML --------------------"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bk;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    const-string v1, "request:\n"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    return-void
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/b/a;->a([BZ)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    const-string v1, "response:\n"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(Lcom/zte/zdm/d/c/bk;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->b(Lcom/zte/zdm/d/c/bk;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->a(Lcom/zte/zdm/d/c/bk;)V

    return-void
.end method

.method protected t()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    iget-boolean v1, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v1}, Lcom/zte/zdm/d/c/b/a;->a([BZ)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    const-string v1, "response:\n"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/b/e/b/a;->i:[B

    invoke-direct {p0, v1, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->c(Lcom/zte/zdm/d/c/bk;)V

    invoke-direct {p0, v0}, Lcom/zte/zdm/b/e/b/a;->b(Lcom/zte/zdm/d/c/bk;)V

    new-instance v1, Lcom/zte/zdm/b/c/b/a;

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-direct {v1, v2, v0}, Lcom/zte/zdm/b/c/b/a;-><init>(Lcom/zte/zdm/b/e/b;Lcom/zte/zdm/d/c/bk;)V

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setSessionAborted "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/a;->d()V

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->f(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "setSessionEnded "

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/a;->d()V

    invoke-direct {p0, v3}, Lcom/zte/zdm/b/e/b/a;->g(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/zte/zdm/b/c/b/a;->e()V

    iget-object v0, p0, Lcom/zte/zdm/b/e/b/a;->e:Lcom/zte/zdm/b/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/e/b;->f()Lcom/zte/zdm/b/g/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/b/g/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/c/b/a;->a(Ljava/lang/String;)Lcom/zte/zdm/d/c/bk;

    move-result-object v0

    iget-boolean v2, p0, Lcom/zte/zdm/b/e/b/a;->l:Z

    invoke-static {v0, v2}, Lcom/zte/zdm/d/c/a/a;->a(Lcom/zte/zdm/d/c/bk;Z)[B

    move-result-object v2

    iput-object v2, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    const-string v2, "request:\n"

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/zdm/b/e/b/a;->h:[B

    invoke-direct {p0, v2, v0}, Lcom/zte/zdm/b/e/b/a;->a([BLcom/zte/zdm/d/c/bk;)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/zte/zdm/b/c/b/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/zte/zdm/b/e/b/a;->c:Z

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/b/e/b/a;->m:Z

    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/b/e/b/a;->g:I

    return v0
.end method
