.class Ltmsdk/common/module/powersaving/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/powersaving/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AD:Ltmsdk/common/module/powersaving/a;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/a;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Ltmsdk/common/module/powersaving/a$1;->AD:Ltmsdk/common/module/powersaving/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    const-class v1, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v1}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/netsetting/NetSettingManager;

    .line 102
    .local v0, netSettingManager:Ltmsdk/common/module/netsetting/NetSettingManager;
    invoke-virtual {v0, v2}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 103
    const/4 v1, 0x1

    sput-boolean v1, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 104
    iget-object v1, p0, Ltmsdk/common/module/powersaving/a$1;->AD:Ltmsdk/common/module/powersaving/a;

    invoke-static {v1, v2}, Ltmsdk/common/module/powersaving/a;->a(Ltmsdk/common/module/powersaving/a;Z)Z

    .line 105
    return-void
.end method
