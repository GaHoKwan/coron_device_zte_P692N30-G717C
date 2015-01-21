.class public final enum Lcom/zte/heartyservice/common/datatype/SpeedType;
.super Ljava/lang/Enum;
.source "SpeedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/heartyservice/common/datatype/SpeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/heartyservice/common/datatype/SpeedType;

.field public static final enum AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

.field public static final enum BACKGROUNDAUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

.field public static final enum GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

.field public static final enum ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

.field public static final enum RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    const-string v1, "ONKEYSPEED"

    invoke-direct {v0, v1, v2}, Lcom/zte/heartyservice/common/datatype/SpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    new-instance v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    const-string v1, "RUNNINGAPP"

    invoke-direct {v0, v1, v3}, Lcom/zte/heartyservice/common/datatype/SpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    new-instance v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    const-string v1, "GARBAGECLEARED"

    invoke-direct {v0, v1, v4}, Lcom/zte/heartyservice/common/datatype/SpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    new-instance v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    const-string v1, "AUTORUNAPP"

    invoke-direct {v0, v1, v5}, Lcom/zte/heartyservice/common/datatype/SpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    new-instance v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    const-string v1, "BACKGROUNDAUTORUNAPP"

    invoke-direct {v0, v1, v6}, Lcom/zte/heartyservice/common/datatype/SpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->BACKGROUNDAUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/heartyservice/common/datatype/SpeedType;

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->ONKEYSPEED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->RUNNINGAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->GARBAGECLEARED:Lcom/zte/heartyservice/common/datatype/SpeedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->AUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/heartyservice/common/datatype/SpeedType;->BACKGROUNDAUTORUNAPP:Lcom/zte/heartyservice/common/datatype/SpeedType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->$VALUES:[Lcom/zte/heartyservice/common/datatype/SpeedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/common/datatype/SpeedType;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/SpeedType;

    return-object v0
.end method

.method public static values()[Lcom/zte/heartyservice/common/datatype/SpeedType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/zte/heartyservice/common/datatype/SpeedType;->$VALUES:[Lcom/zte/heartyservice/common/datatype/SpeedType;

    invoke-virtual {v0}, [Lcom/zte/heartyservice/common/datatype/SpeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/heartyservice/common/datatype/SpeedType;

    return-object v0
.end method
