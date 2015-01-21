.class public Lcom/zte/zdm/omacp/application/a/c;
.super Lcom/zte/zdm/omacp/application/a/d;

# interfaces
.implements Lcom/zte/zdm/omacp/b/b;
.implements Lcom/zte/zdm/omacp/d/e;


# static fields
.field public static final a:Ljava/lang/String; = "w4"

.field private static final ag:Ljava/lang/String; = "mms"


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/omacp/application/a/d;-><init>()V

    const-string v0, "mms"

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method private d(Lcom/zte/zdm/omacp/d/c;)V
    .locals 2

    const-string v0, "APPLICATION"

    const-string v1, "w4"

    invoke-interface {p1, v0, v1}, Lcom/zte/zdm/omacp/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NAME"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->c:Ljava/lang/String;

    const-string v1, "ADDR"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->o:Ljava/lang/String;

    const-string v1, "TO-PROXY"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->q:Ljava/lang/String;

    const-string v1, "TO-NAPID"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/a/c;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private e(Lcom/zte/zdm/omacp/d/c;)V
    .locals 3

    const-string v0, "PXLOGICAL"

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->q:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/zte/zdm/omacp/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PXPHYSICAL"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->c(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v0

    const-string v1, "PXADDR"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->m:Ljava/lang/String;

    const-string v1, "PORT"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->c(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a;

    move-result-object v1

    const-string v2, "PORTNBR"

    invoke-interface {v1, v2}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->n:Ljava/lang/String;

    const-string v1, "TO-NAPID"

    invoke-interface {v0, v1}, Lcom/zte/zdm/omacp/d/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/omacp/application/a/c;->r:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "mms"

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "MmsConfig"

    invoke-virtual {p0}, Lcom/zte/zdm/omacp/application/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/zte/zdm/omacp/application/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/zte/zdm/omacp/d/c;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/application/a/c;->b(Lcom/zte/zdm/omacp/d/c;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/omacp/application/a/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public b(Lcom/zte/zdm/omacp/d/c;)V
    .locals 0

    invoke-static {p1}, Lcom/zte/zdm/g/a;->c(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/application/a/c;->d(Lcom/zte/zdm/omacp/d/c;)V

    invoke-direct {p0, p1}, Lcom/zte/zdm/omacp/application/a/c;->e(Lcom/zte/zdm/omacp/d/c;)V

    invoke-virtual {p0, p1}, Lcom/zte/zdm/omacp/application/a/c;->c(Lcom/zte/zdm/omacp/d/c;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,apn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,authtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/omacp/application/a/c;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mmsc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,password:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mmsport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mmsproxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/omacp/application/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
