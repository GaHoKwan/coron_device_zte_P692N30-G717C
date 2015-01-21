.class public Lcom/zte/zdm/mo/AGPSSetting;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/zdm/b/f/b/g;
.implements Lcom/zte/zdm/b/f/b/h;


# static fields
.field protected static final a:Lcom/zte/zdm/mo/AGPSSetting;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/zte/zdm/platform/interfaces/AgpsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/mo/AGPSSetting;

    invoke-direct {v0}, Lcom/zte/zdm/mo/AGPSSetting;-><init>()V

    sput-object v0, Lcom/zte/zdm/mo/AGPSSetting;->a:Lcom/zte/zdm/mo/AGPSSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mo/AGPSSetting;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/zte/zdm/mo/AGPSSetting;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/mo/AGPSSetting;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/zte/zdm/platform/PlatformInterfaces;->a(Landroid/content/Context;Lcom/zte/zdm/b/b/a;)Lcom/zte/zdm/platform/PlatformInterfaces;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/platform/PlatformInterfaces;->a()Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/mo/AGPSSetting;->c:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    return-void
.end method


# virtual methods
.method protected a(I[B)I
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/mo/AGPSSetting;->c:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    iget-object v1, p0, Lcom/zte/zdm/mo/AGPSSetting;->b:Landroid/content/Context;

    invoke-interface {v0, p1, p2, v1}, Lcom/zte/zdm/platform/interfaces/AgpsInterface;->a(I[BLandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I[B)I
    .locals 6

    const/4 v0, -0x1

    invoke-static {}, Lcom/zte/zdm/mo/ReadEnum$AgpsReadHandler;->values()[Lcom/zte/zdm/mo/ReadEnum$AgpsReadHandler;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/zte/zdm/mo/ReadEnum$AgpsReadHandler;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, p2, p3}, Lcom/zte/zdm/mo/ReadEnum$AgpsReadHandler;->a(I[B)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the object is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/zte/zdm/mo/ReadEnum$AgpsReadHandler;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I[BI)I
    .locals 5

    invoke-static {}, Lcom/zte/zdm/mo/WriteEnum$AgpsWriteHandler;->values()[Lcom/zte/zdm/mo/WriteEnum$AgpsWriteHandler;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    iget-object v4, v3, Lcom/zte/zdm/mo/WriteEnum$AgpsWriteHandler;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2, p3}, Lcom/zte/zdm/mo/WriteEnum$AgpsWriteHandler;->a(I[B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the object is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/zte/zdm/mo/WriteEnum$AgpsWriteHandler;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected b(I[B)I
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/mo/AGPSSetting;->c:Lcom/zte/zdm/platform/interfaces/AgpsInterface;

    iget-object v1, p0, Lcom/zte/zdm/mo/AGPSSetting;->b:Landroid/content/Context;

    invoke-interface {v0, p1, p2, v1}, Lcom/zte/zdm/platform/interfaces/AgpsInterface;->b(I[BLandroid/content/Context;)I

    move-result v0

    return v0
.end method
