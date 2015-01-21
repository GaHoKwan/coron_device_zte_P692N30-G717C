.class public final enum Lcom/autonavi/xm/navigation/server/map/GMapContent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xm/navigation/server/map/GMapContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapContent;

.field public static final enum GMAP_CONTENT_2D:Lcom/autonavi/xm/navigation/server/map/GMapContent;

.field public static final enum GMAP_CONTENT_BLOCK:Lcom/autonavi/xm/navigation/server/map/GMapContent;

.field public static final enum GMAP_CONTENT_MIX:Lcom/autonavi/xm/navigation/server/map/GMapContent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;

    const-string v1, "GMAP_CONTENT_2D"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GMapContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_2D:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;

    const-string v1, "GMAP_CONTENT_BLOCK"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GMapContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_BLOCK:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;

    const-string v1, "GMAP_CONTENT_MIX"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GMapContent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_MIX:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GMapContent;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_2D:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_BLOCK:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GMapContent;->GMAP_CONTENT_MIX:Lcom/autonavi/xm/navigation/server/map/GMapContent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapContent;

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

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GMapContent;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GMapContent;->values()[Lcom/autonavi/xm/navigation/server/map/GMapContent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GMapContent;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GMapContent;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GMapContent;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GMapContent;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GMapContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GMapContent;

    return-object v0
.end method
