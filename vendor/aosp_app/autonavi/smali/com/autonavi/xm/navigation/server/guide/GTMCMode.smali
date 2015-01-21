.class public final enum Lcom/autonavi/xm/navigation/server/guide/GTMCMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/guide/GTMCMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

.field public static final enum GTMC_MODE_GD:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

.field public static final enum GTMC_MODE_RTIC:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

.field public static final enum GTMC_MODE_TPEG:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    const-string v1, "GTMC_MODE_GD"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_GD:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    const-string v1, "GTMC_MODE_RTIC"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_RTIC:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    new-instance v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    const-string v1, "GTMC_MODE_TPEG"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_TPEG:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_GD:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_RTIC:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->GTMC_MODE_TPEG:Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/guide/GTMCMode;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->values()[Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/guide/GTMCMode;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/guide/GTMCMode;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->$VALUES:[Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/guide/GTMCMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/guide/GTMCMode;

    return-object v0
.end method
