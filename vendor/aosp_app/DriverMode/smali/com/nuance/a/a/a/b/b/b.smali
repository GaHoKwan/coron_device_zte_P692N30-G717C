.class public abstract Lcom/nuance/a/a/a/b/b/b;
.super Ljava/lang/Object;


# static fields
.field private static final g:Lcom/nuance/a/a/a/a/b/a/b$a;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:S

.field protected c:Ljava/lang/String;

.field protected d:Lcom/nuance/a/a/a/a/b/a/c;

.field protected e:Lcom/nuance/a/a/a/a/a/a$a;

.field protected f:Lcom/nuance/a/a/a/a/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/a/a/a/b/b/b;

    invoke-static {v0}, Lcom/nuance/a/a/a/a/b/a/b;->a(Ljava/lang/Class;)Lcom/nuance/a/a/a/a/b/a/b$a;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/b/b/b;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;SLjava/lang/String;Lcom/nuance/a/a/a/a/a/a$a;Lcom/nuance/a/a/a/a/a/a$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/a/a/a/b/b/b;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    invoke-virtual {v0}, Lcom/nuance/a/a/a/a/b/a/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/b/b/b;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in NMSPManager() gateway IP ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Port ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/a/a/a/a/b/a/b$a;->b(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_3

    const-string v0, " gatewayIP is null"

    :cond_1
    :goto_0
    if-gtz p2, :cond_2

    const-string v0, " gatewayPort should be greater than 0"

    :cond_2
    if-eqz v0, :cond_4

    sget-object v1, Lcom/nuance/a/a/a/b/b/b;->g:Lcom/nuance/a/a/a/a/b/a/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NMSPManager "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/a/a/a/a/b/a/b$a;->e(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string v0, " gatewayIP is empty"

    goto :goto_0

    :cond_4
    iput-object p1, p0, Lcom/nuance/a/a/a/b/b/b;->a:Ljava/lang/String;

    iput-short p2, p0, Lcom/nuance/a/a/a/b/b/b;->b:S

    iput-object p3, p0, Lcom/nuance/a/a/a/b/b/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/nuance/a/a/a/b/b/b;->e:Lcom/nuance/a/a/a/a/a/a$a;

    iput-object p5, p0, Lcom/nuance/a/a/a/b/b/b;->f:Lcom/nuance/a/a/a/a/a/a$a;

    new-instance v0, Lcom/nuance/a/a/a/c/e;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/e;-><init>()V

    iput-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->d:Lcom/nuance/a/a/a/a/b/a/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/nuance/a/a/a/a/b/a/c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->d:Lcom/nuance/a/a/a/a/b/a/c;

    return-object v0
.end method

.method public final a(Lcom/nuance/a/a/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/b/b;->e:Lcom/nuance/a/a/a/a/a/a$a;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/nuance/a/a/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/a/a/a/b/b/b;->f:Lcom/nuance/a/a/a/a/a/a$a;

    return-void
.end method

.method public final c()S
    .locals 1

    iget-short v0, p0, Lcom/nuance/a/a/a/b/b/b;->b:S

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/nuance/a/a/a/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->e:Lcom/nuance/a/a/a/a/a/a$a;

    return-object v0
.end method

.method public final f()Lcom/nuance/a/a/a/a/a/a$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/b/b/b;->f:Lcom/nuance/a/a/a/a/a/a$a;

    return-object v0
.end method
