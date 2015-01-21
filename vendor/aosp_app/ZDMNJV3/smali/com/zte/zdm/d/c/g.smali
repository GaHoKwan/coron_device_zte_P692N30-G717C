.class public Lcom/zte/zdm/d/c/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/zte/zdm/d/c/ap;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/d/c/g;->d:Z

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/ap;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/d/c/g;->d:Z

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/d/c/g;->d:Z

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/zte/zdm/d/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The authentication username and password cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/zdm/d/c/g;->d:Z

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    iput-boolean p3, p0, Lcom/zte/zdm/d/c/g;->d:Z

    invoke-virtual {p0, p1, p2}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ar;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "syncml:auth-basic,syncml:auth-clear,syncml:auth-md5,syncml:auth-MAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string p1, "syncml:auth-basic"

    :cond_0
    const-string v0, "syncml:auth-basic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "syncml:auth-basic"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;)V

    const-string v0, "b64"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/g;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "syncml:auth-clear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "syncml:auth-clear"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;)V

    const-string v0, "clear"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/g;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "syncml:auth-md5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "syncml:auth-md5"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/g;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "syncml:auth-MAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "syncml:auth-MAC"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/zte/zdm/d/c/g;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x3a

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/zte/zdm/d/c/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncml:auth-clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/zte/zdm/d/c/g;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/zte/zdm/d/c/g;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-lez v1, :cond_3

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    :cond_5
    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v0, p0, Lcom/zte/zdm/d/c/g;->d:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    move-object v0, p1

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/zte/zdm/d/c/g;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/zte/zdm/b/g/b;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    if-lez v2, :cond_8

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, ""

    goto :goto_4

    :cond_9
    const-string v0, ""

    goto :goto_5

    :cond_a
    const-string v1, "syncml:auth-md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "b64"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/g;->b(Ljava/lang/String;)V

    :cond_b
    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->a:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->c:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/zte/zdm/d/c/ar;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->i()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    return-void
.end method

.method public g()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->g:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/g;->f:Ljava/lang/String;

    return-object v0
.end method
