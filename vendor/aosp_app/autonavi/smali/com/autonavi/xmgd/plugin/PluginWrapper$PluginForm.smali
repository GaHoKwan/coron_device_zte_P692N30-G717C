.class public final enum Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field public static final enum APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field public static final enum APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field public static final enum APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field public static final enum JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

.field public static final enum UNKNOWN:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const-string v1, "APK_SDCARD"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const-string v1, "APK_HOST_ASSERTS"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const-string v1, "APK_INSTALLED"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const-string v1, "JAR_HOST"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->UNKNOWN:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_SDCARD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_HOST_ASSERTS:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->APK_INSTALLED:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->JAR_HOST:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->UNKNOWN:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->$VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;
    .locals 1

    const-class v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->$VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    invoke-virtual {v0}, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginForm;

    return-object v0
.end method
