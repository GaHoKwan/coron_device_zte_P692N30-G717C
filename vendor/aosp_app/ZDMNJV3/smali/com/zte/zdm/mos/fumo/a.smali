.class public Lcom/zte/zdm/mos/fumo/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/mos/a;
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "/State"

.field public static final b:Ljava/lang/String; = "/DownloadAndUpdate/PkgURL"

.field public static final c:Ljava/lang/String; = "/Update/PkgData"

.field public static final d:Ljava/lang/String; = "/Download/PkgURL"

.field public static final e:Ljava/lang/String; = "/PkgVersion"

.field public static final f:Ljava/lang/String; = "/PkgName"

.field private static final g:J = 0x1L


# instance fields
.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->n:Ljava/lang/String;

    return-void
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/zte/zdm/mos/fumo/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/zte/zdm/b/f/h/b;)V
    .locals 2

    const-string v0, "Fumomomo serialize"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "serialize isOpen == false"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->c()V

    :goto_0
    const-string v0, "/State"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/mos/fumo/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {p1}, Lcom/zte/zdm/b/f/e/b;->d()V

    return-void

    :cond_0
    const-string v0, "serialize isOpen == true"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->n:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/zte/zdm/b/f/h/b;)V
    .locals 3

    const-string v0, "Fumomomo deserialize"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/zte/zdm/b/f/e/b;

    invoke-virtual {v0}, Lcom/zte/zdm/b/f/e/b;->c()V

    const-string v0, "/State"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->b(Ljava/lang/String;)V

    const-string v0, "/DownloadAndUpdate/PkgURL"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadAndupdatePkgurl from Tree : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->c(Ljava/lang/String;)V

    const-string v0, "/Update/PkgData"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->d(Ljava/lang/String;)V

    const-string v0, "/Download/PkgURL"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->e(Ljava/lang/String;)V

    const-string v0, "/PkgVersion"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->f(Ljava/lang/String;)V

    const-string v0, "/PkgName"

    invoke-direct {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zte/zdm/b/f/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/mos/fumo/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->h:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->j:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->k:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->l:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/mos/fumo/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/mos/fumo/a;->m:Ljava/lang/String;

    return-void
.end method
