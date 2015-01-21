.class public final enum Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
.super Ljava/lang/Enum;
.source "NetworkStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

.field public static final enum BUSSINESS_WLAN_CONNECTED_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

.field public static final enum BUSSINESS_WLAN_CONNECTED_NOT_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

.field public static final enum DATA_NETWORK_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

.field public static final enum FREE_WIFI_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

.field public static final enum NO_NETWORK:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 88
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    const-string v1, "FREE_WIFI_CONNECTED"

    invoke-direct {v0, v1, v4, v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->FREE_WIFI_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 89
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    const-string v1, "BUSSINESS_WLAN_CONNECTED_ALLOWED"

    invoke-direct {v0, v1, v3, v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 90
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    const-string v1, "BUSSINESS_WLAN_CONNECTED_NOT_ALLOWED"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_NOT_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 91
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    const-string v1, "DATA_NETWORK_CONNECTED"

    invoke-direct {v0, v1, v6, v4}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->DATA_NETWORK_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 92
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    const-string v1, "NO_NETWORK"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->NO_NETWORK:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    .line 86
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->FREE_WIFI_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->BUSSINESS_WLAN_CONNECTED_NOT_ALLOWED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->DATA_NETWORK_CONNECTED:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->NO_NETWORK:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->$VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->code:I

    .line 98
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    const-class v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->$VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;->code:I

    return v0
.end method
