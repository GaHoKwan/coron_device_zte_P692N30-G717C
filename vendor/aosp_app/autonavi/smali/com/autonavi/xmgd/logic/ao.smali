.class Lcom/autonavi/xmgd/logic/ao;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/autonavi/xmgd/logic/am;

.field private b:Lcom/autonavi/xmgd/g/c;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/logic/am;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xmgd/logic/ao;->a:Lcom/autonavi/xmgd/logic/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/autonavi/xmgd/g/c;

    invoke-direct {v0}, Lcom/autonavi/xmgd/g/c;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/logic/ao;->b:Lcom/autonavi/xmgd/g/c;

    return-void
.end method

.method private a()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/autonavi/xmgd/a/a;->a:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/autonavi/xmgd/a/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/autonavi/xmgd/a/a;->a:[Ljava/lang/String;

    array-length v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v5, Lcom/autonavi/xmgd/a/a;->a:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/autonavi/xmgd/logic/ao;->a:Lcom/autonavi/xmgd/logic/am;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/logic/am;->b(Lcom/autonavi/xmgd/logic/am;I)I

    :cond_0
    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/logic/ao;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/logic/ao;->a()Z

    move-result v0

    return v0
.end method
