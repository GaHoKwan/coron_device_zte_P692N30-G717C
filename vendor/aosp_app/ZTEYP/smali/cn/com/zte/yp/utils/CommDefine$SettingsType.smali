.class public final enum Lcn/com/zte/yp/utils/CommDefine$SettingsType;
.super Ljava/lang/Enum;
.source "CommDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/utils/CommDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/zte/yp/utils/CommDefine$SettingsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum NONE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum SEARCH_YELLOW_PAGE_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum UPDATE_CITY_TIMES:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum UPDATE_CITY_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum YELLOW_PAGE_ABOUT:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum YELLOW_PAGE_FEEDBACK:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

.field public static final enum YELLOW_PAGE_UPGRADE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "UPDATE_CITY_WIFI_ONLY"

    invoke-direct {v0, v1, v3}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->UPDATE_CITY_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 13
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "UPDATE_CITY_TIMES"

    invoke-direct {v0, v1, v4}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->UPDATE_CITY_TIMES:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 14
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "SEARCH_YELLOW_PAGE_WIFI_ONLY"

    invoke-direct {v0, v1, v5}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->SEARCH_YELLOW_PAGE_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 15
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "YELLOW_PAGE_ABOUT"

    invoke-direct {v0, v1, v6}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_ABOUT:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 16
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "YELLOW_PAGE_UPGRADE"

    invoke-direct {v0, v1, v7}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_UPGRADE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 17
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "YELLOW_PAGE_FEEDBACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_FEEDBACK:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 18
    new-instance v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcn/com/zte/yp/utils/CommDefine$SettingsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->NONE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->UPDATE_CITY_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->UPDATE_CITY_TIMES:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v1, v0, v4

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->SEARCH_YELLOW_PAGE_WIFI_ONLY:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v1, v0, v5

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_ABOUT:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v1, v0, v6

    sget-object v1, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_UPGRADE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->YELLOW_PAGE_FEEDBACK:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->NONE:Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->$VALUES:[Lcn/com/zte/yp/utils/CommDefine$SettingsType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/zte/yp/utils/CommDefine$SettingsType;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    return-object v0
.end method

.method public static values()[Lcn/com/zte/yp/utils/CommDefine$SettingsType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcn/com/zte/yp/utils/CommDefine$SettingsType;->$VALUES:[Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    invoke-virtual {v0}, [Lcn/com/zte/yp/utils/CommDefine$SettingsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/zte/yp/utils/CommDefine$SettingsType;

    return-object v0
.end method
