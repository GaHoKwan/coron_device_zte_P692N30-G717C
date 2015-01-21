.class public final enum Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

.field public static final enum STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

.field public static final enum STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    const-string v1, "STATE_UNLOAD"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    new-instance v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    const-string v1, "STATE_LOAD"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_UNLOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->STATE_LOAD:Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->$VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;
    .locals 1

    const-class v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->$VALUES:[Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    invoke-virtual {v0}, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/plugin/PluginWrapper$PluginState;

    return-object v0
.end method
