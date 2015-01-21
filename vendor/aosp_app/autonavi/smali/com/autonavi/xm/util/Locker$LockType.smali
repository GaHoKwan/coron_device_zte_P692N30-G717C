.class public final enum Lcom/autonavi/xm/util/Locker$LockType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/util/Locker$LockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/util/Locker$LockType;

.field public static final enum LOCK_CALCULATE_ROUTE:Lcom/autonavi/xm/util/Locker$LockType;

.field public static final enum LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/util/Locker$LockType;

    const-string v1, "LOCK_UPDATA_MAP_DATAS"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/util/Locker$LockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;

    new-instance v0, Lcom/autonavi/xm/util/Locker$LockType;

    const-string v1, "LOCK_CALCULATE_ROUTE"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/util/Locker$LockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_CALCULATE_ROUTE:Lcom/autonavi/xm/util/Locker$LockType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xm/util/Locker$LockType;

    sget-object v1, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_CALCULATE_ROUTE:Lcom/autonavi/xm/util/Locker$LockType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xm/util/Locker$LockType;->$VALUES:[Lcom/autonavi/xm/util/Locker$LockType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/util/Locker$LockType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/util/Locker$LockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/util/Locker$LockType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/util/Locker$LockType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/util/Locker$LockType;->$VALUES:[Lcom/autonavi/xm/util/Locker$LockType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/util/Locker$LockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/util/Locker$LockType;

    return-object v0
.end method
