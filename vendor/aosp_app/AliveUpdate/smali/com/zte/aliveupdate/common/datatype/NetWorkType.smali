.class public final enum Lcom/zte/aliveupdate/common/datatype/NetWorkType;
.super Ljava/lang/Enum;
.source "NetWorkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/common/datatype/NetWorkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/common/datatype/NetWorkType;

.field public static final enum WIFI_AND_DATA:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

.field public static final enum WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    const-string v1, "WIFI_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    new-instance v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    const-string v1, "WIFI_AND_DATA"

    invoke-direct {v0, v1, v3}, Lcom/zte/aliveupdate/common/datatype/NetWorkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_ONLY:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->$VALUES:[Lcom/zte/aliveupdate/common/datatype/NetWorkType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/datatype/NetWorkType;
    .locals 1
    .parameter "name"

    .prologue
    .line 9
    const-class v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/common/datatype/NetWorkType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/NetWorkType;->$VALUES:[Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/common/datatype/NetWorkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/common/datatype/NetWorkType;

    return-object v0
.end method
