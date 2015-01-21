.class public final enum Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

.field public static final enum GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

.field public static final enum GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

.field public static final enum GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

.field public static final enum GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    const-string v1, "GDEMO_SPEED_LOW"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    const-string v1, "GDEMO_SPEED_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    const-string v1, "GDEMO_SPEED_HIGH"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    const-string v1, "GDEMO_SPEED_JUMP"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_LOW:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_NORMAL:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_HIGH:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->GDEMO_SPEED_JUMP:Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    aput-object v1, v0, v5

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

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

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->values()[Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GDemoSpeed;

    return-object v0
.end method
