.class public abstract enum Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
.super Ljava/lang/Enum;
.source "NetworkStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/common/utils/NetworkStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

.field public static final enum ONLY_WIFI:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

.field public static final enum WIFI_AND_DATA:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;


# instance fields
.field private bLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$1;

    const-string v1, "ONLY_WIFI"

    invoke-direct {v0, v1, v2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->ONLY_WIFI:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    .line 45
    new-instance v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$2;

    const-string v1, "WIFI_AND_DATA"

    invoke-direct {v0, v1, v3}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->ONLY_WIFI:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->WIFI_AND_DATA:Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->$VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->bLog:Z

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/zte/aliveupdate/common/utils/NetworkStrategy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/common/utils/NetworkStrategy;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->$VALUES:[Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/common/utils/NetworkStrategy;

    return-object v0
.end method


# virtual methods
.method public abstract checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
.end method

.method public checkNetworkStatus(Landroid/content/Context;Z)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    .locals 2
    .parameter "context"
    .parameter "bLog"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->bLog:Z

    .line 66
    .local v0, oldBlog:Z
    iput-boolean p2, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->bLog:Z

    .line 68
    invoke-virtual {p0, p1}, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->checkNetworkStatus(Landroid/content/Context;)Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;

    move-result-object v1

    .line 70
    .local v1, status:Lcom/zte/aliveupdate/common/utils/NetworkStrategy$NetworkStatus;
    iput-boolean v0, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->bLog:Z

    .line 72
    return-object v1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/zte/aliveupdate/common/utils/NetworkStrategy;->bLog:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p0, p1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method
