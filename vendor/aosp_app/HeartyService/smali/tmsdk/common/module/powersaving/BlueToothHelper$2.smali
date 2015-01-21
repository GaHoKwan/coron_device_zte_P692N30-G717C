.class Ltmsdk/common/module/powersaving/BlueToothHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/PowerSavingConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

.field final synthetic AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/BlueToothHelper;Ltmsdk/common/module/powersaving/PowerSavingConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    iput-object p2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    iget v0, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    iget v0, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 134
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    new-instance v1, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;

    invoke-direct {v1, p0}, Ltmsdk/common/module/powersaving/BlueToothHelper$2$1;-><init>(Ltmsdk/common/module/powersaving/BlueToothHelper$2;)V

    invoke-virtual {v0, v1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->a(Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;)I

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AO:Ltmsdk/common/module/powersaving/PowerSavingConfig;

    iget v0, v0, Ltmsdk/common/module/powersaving/PowerSavingConfig;->mBlueToothAutoCloseCondition:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    iget-boolean v0, v0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AK:Z

    if-nez v0, :cond_3

    .line 167
    const-class v0, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Ltmsdk/common/module/netsetting/NetSettingManager;->disableBluetooth()Z

    .line 168
    const/4 v0, 0x1

    sput-boolean v0, Ltmsdk/common/module/powersaving/a;->AC:Z

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v0}, Ltmsdk/common/module/powersaving/BlueToothHelper;->e(Ltmsdk/common/module/powersaving/BlueToothHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;->AN:Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-static {v1}, Ltmsdk/common/module/powersaving/BlueToothHelper;->d(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
