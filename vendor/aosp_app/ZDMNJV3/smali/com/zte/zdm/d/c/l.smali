.class public final Lcom/zte/zdm/d/c/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/zte/zdm/d/c/ap;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/ap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    iput-object p1, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The authentication type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "b64"

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "syncml:auth-md5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "b64"

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "syncml:auth-clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "syncml:auth-MAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "b64"

    invoke-virtual {p1, v0}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The authentication format cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e()Lcom/zte/zdm/d/c/l;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v1, "syncml:auth-basic"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    const-string v1, "b64"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v1, Lcom/zte/zdm/d/c/l;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/l;-><init>(Lcom/zte/zdm/d/c/ap;)V

    return-object v1
.end method

.method public static f()Lcom/zte/zdm/d/c/l;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v1, "syncml:auth-clear"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v1, Lcom/zte/zdm/d/c/l;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/l;-><init>(Lcom/zte/zdm/d/c/ap;)V

    return-object v1
.end method

.method public static g()Lcom/zte/zdm/d/c/l;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v1, "syncml:auth-md5"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    const-string v1, "b64"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v1, Lcom/zte/zdm/d/c/l;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/l;-><init>(Lcom/zte/zdm/d/c/ap;)V

    return-object v1
.end method

.method public static h()Lcom/zte/zdm/d/c/l;
    .locals 2

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    const-string v1, "syncml:auth-MAC"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->b(Ljava/lang/String;)V

    const-string v1, "b64"

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    new-instance v1, Lcom/zte/zdm/d/c/l;

    invoke-direct {v1, v0}, Lcom/zte/zdm/d/c/l;-><init>(Lcom/zte/zdm/d/c/ap;)V

    return-object v1
.end method


# virtual methods
.method public a()Lcom/zte/zdm/d/c/ap;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/d/c/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/ar;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zte/zdm/d/c/ap;

    invoke-direct {v0}, Lcom/zte/zdm/d/c/ap;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0, p1}, Lcom/zte/zdm/d/c/ap;->a(Lcom/zte/zdm/d/c/ar;)V

    return-void
.end method

.method public b()Lcom/zte/zdm/d/c/ar;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->i()Lcom/zte/zdm/d/c/ar;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/l;->a:Lcom/zte/zdm/d/c/ap;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/ap;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
