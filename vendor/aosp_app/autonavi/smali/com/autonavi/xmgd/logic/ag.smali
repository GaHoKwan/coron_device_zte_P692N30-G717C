.class public Lcom/autonavi/xmgd/logic/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/logic/f;


# static fields
.field private static a:Lcom/autonavi/xmgd/logic/ag;


# instance fields
.field private b:Lcom/autonavi/xmgd/logic/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/autonavi/xmgd/logic/f;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/ag;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/ag;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    return-object v0
.end method

.method public static e()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    iput-object v1, v0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    :cond_0
    sput-object v1, Lcom/autonavi/xmgd/logic/ag;->a:Lcom/autonavi/xmgd/logic/ag;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ag;->e()V

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/controls/r;)V
    .locals 0

    check-cast p1, Lcom/autonavi/xmgd/logic/g;

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ag;->e()V

    return-void
.end method

.method public c()V
    .locals 7

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->enumExternalStroragePath(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/g;->b(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "autonavidata60tob/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    invoke-interface {v0, v2}, Lcom/autonavi/xmgd/logic/g;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ag;->b:Lcom/autonavi/xmgd/logic/g;

    invoke-interface {v0, v1}, Lcom/autonavi/xmgd/logic/g;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
