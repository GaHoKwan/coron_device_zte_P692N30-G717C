.class public final enum Lcom/autonavi/xm/navigation/server/map/GLanguage;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/map/GLanguage;

.field public static final enum GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

.field public static final enum GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

.field public static final enum GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v1, "GLANGUAGE_SIMPLE_CHINESE"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/map/GLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v1, "GLANGUAGE_ENGLISH"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/map/GLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    new-instance v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const-string v1, "GLANGUAGE_TRADITIONAL_CHINESE"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/map/GLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/map/GLanguage;

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_SIMPLE_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_ENGLISH:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/map/GLanguage;->GLANGUAGE_TRADITIONAL_CHINESE:Lcom/autonavi/xm/navigation/server/map/GLanguage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final valueOf(I)Lcom/autonavi/xm/navigation/server/map/GLanguage;
    .locals 2

    invoke-static {}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->values()[Lcom/autonavi/xm/navigation/server/map/GLanguage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/map/GLanguage;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/map/GLanguage;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/map/GLanguage;->$VALUES:[Lcom/autonavi/xm/navigation/server/map/GLanguage;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/map/GLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/map/GLanguage;

    return-object v0
.end method
