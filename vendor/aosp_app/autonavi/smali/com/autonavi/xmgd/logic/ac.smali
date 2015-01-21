.class public Lcom/autonavi/xmgd/logic/ac;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:Lcom/autonavi/xmgd/logic/ac;


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/logic/ad;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/logic/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Lcom/autonavi/xmgd/logic/ac;->a:I

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/logic/ac;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/logic/ac;

    invoke-direct {v0}, Lcom/autonavi/xmgd/logic/ac;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->l()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/autonavi/xmgd/logic/ad;)Z
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ad;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static l()V
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/logic/ac;->b:Lcom/autonavi/xmgd/logic/ac;

    iget-object v0, v0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/autonavi/xmgd/logic/ad;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/autonavi/xmgd/logic/ad;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/xmgd/logic/ac;->c(Lcom/autonavi/xmgd/logic/ad;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MapStatusManage] MapStatusManage  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    :cond_3
    sget v1, Lcom/autonavi/xmgd/logic/ac;->a:I

    sput p1, Lcom/autonavi/xmgd/logic/ac;->a:I

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->d:Ljava/util/ArrayList;

    new-instance v2, Lcom/autonavi/xmgd/logic/ae;

    invoke-direct {v2, p0, p1, p2}, Lcom/autonavi/xmgd/logic/ae;-><init>(Lcom/autonavi/xmgd/logic/ac;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/logic/ad;

    invoke-interface {v0, v1, p1}, Lcom/autonavi/xmgd/logic/ad;->a(II)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/autonavi/xmgd/logic/ad;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/logic/ae;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/logic/ac;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d()I
    .locals 1

    sget v0, Lcom/autonavi/xmgd/logic/ac;->a:I

    return v0
.end method

.method public e()Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/logic/ac;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ac;->a(I)Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ac;->b(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/logic/ac;->a()Lcom/autonavi/xmgd/logic/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/logic/ac;->d()I

    move-result v0

    invoke-static {v0}, Lcom/autonavi/xmgd/logic/ac;->c(I)Z

    move-result v0

    return v0
.end method
