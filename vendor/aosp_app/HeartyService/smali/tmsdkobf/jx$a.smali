.class Ltmsdkobf/jx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/utils/WifiUtil$IWifiApproveCheckCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic yb:Ltmsdkobf/jx;


# direct methods
.method private constructor <init>(Ltmsdkobf/jx;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Ltmsdkobf/jx$a;->yb:Ltmsdkobf/jx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/jx;Ltmsdkobf/jx$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 878
    invoke-direct {p0, p1}, Ltmsdkobf/jx$a;-><init>(Ltmsdkobf/jx;)V

    return-void
.end method


# virtual methods
.method public onWifiApproveCheckFinished(ZZ)V
    .locals 2
    .parameter "needWifiApprove"
    .parameter "receivedError"

    .prologue
    .line 882
    invoke-static {}, Ltmsdkobf/jx;->fc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltmsdkobf/jx;->fc()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ltmsdk/common/utils/WifiUtil;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltmsdkobf/jx;->fd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    if-nez p2, :cond_1

    .line 884
    invoke-static {p1}, Ltmsdkobf/jx;->y(Z)Z

    .line 888
    :goto_0
    invoke-static {p2}, Ltmsdkobf/jx;->z(Z)Z

    .line 889
    const/4 v0, 0x0

    invoke-static {v0}, Ltmsdkobf/jx;->q(Z)Z

    .line 891
    :cond_0
    return-void

    .line 886
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ltmsdkobf/jx;->y(Z)Z

    goto :goto_0
.end method
