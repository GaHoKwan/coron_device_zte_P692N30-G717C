.class public final enum Lcom/autonavi/xmgd/search/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/autonavi/xmgd/search/d;

.field public static final enum b:Lcom/autonavi/xmgd/search/d;

.field private static final synthetic c:[Lcom/autonavi/xmgd/search/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/search/d;

    const-string v1, "AROUND_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/search/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/search/d;->a:Lcom/autonavi/xmgd/search/d;

    new-instance v0, Lcom/autonavi/xmgd/search/d;

    const-string v1, "COMMON_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xmgd/search/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/search/d;->b:Lcom/autonavi/xmgd/search/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xmgd/search/d;

    sget-object v1, Lcom/autonavi/xmgd/search/d;->a:Lcom/autonavi/xmgd/search/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xmgd/search/d;->b:Lcom/autonavi/xmgd/search/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xmgd/search/d;->c:[Lcom/autonavi/xmgd/search/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xmgd/search/d;
    .locals 1

    const-class v0, Lcom/autonavi/xmgd/search/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/search/d;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xmgd/search/d;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/search/d;->c:[Lcom/autonavi/xmgd/search/d;

    invoke-virtual {v0}, [Lcom/autonavi/xmgd/search/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/search/d;

    return-object v0
.end method
