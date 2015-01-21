.class public final enum Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
.super Ljava/lang/Enum;


# static fields
.field public static final enum CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

.field private static final synthetic a:[Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    new-instance v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->CONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->DISCONNECTED:Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->a:[Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 1

    const-class v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;
    .locals 1

    sget-object v0, Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->a:[Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    invoke-virtual {v0}, [Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/dragon/toolkit/cloudservices/CloudServices$ConnectionState;

    return-object v0
.end method
