.class public final enum Lcom/autonavi/xm/navigation/server/poi/GSearchType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

.field public static final enum GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_CATEGORY"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_TEL"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_AROUND"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_ROUTEPOI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_CROSS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    new-instance v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const-string v1, "GSEARCH_TYPE_MAX"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xm/navigation/server/poi/GSearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_NAME:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CATEGORY:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_TEL:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_AROUND:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ROUTEPOI:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_CROSS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_MAX:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->$VALUES:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/poi/GSearchType;
    .locals 1

    const-class v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xm/navigation/server/poi/GSearchType;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->$VALUES:[Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    invoke-virtual {v0}, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    return-object v0
.end method
