.class Ltmsdk/common/module/powersaving/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/powersaving/a;->c(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AD:Ltmsdk/common/module/powersaving/a;

.field final synthetic xg:Landroid/content/Context;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/a;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Ltmsdk/common/module/powersaving/a$3;->AD:Ltmsdk/common/module/powersaving/a;

    iput-object p2, p0, Ltmsdk/common/module/powersaving/a$3;->xg:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    iget-object v2, p0, Ltmsdk/common/module/powersaving/a$3;->AD:Ltmsdk/common/module/powersaving/a;

    invoke-static {v2}, Ltmsdk/common/module/powersaving/a;->a(Ltmsdk/common/module/powersaving/a;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "start check"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-object v2, p0, Ltmsdk/common/module/powersaving/a$3;->xg:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    .local v0, conMan:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    const-class v2, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 285
    .local v1, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 286
    sput-boolean v4, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 288
    .end local v1           #netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    :cond_0
    return-void
.end method
