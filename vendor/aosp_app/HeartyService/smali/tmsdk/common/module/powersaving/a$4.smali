.class Ltmsdk/common/module/powersaving/a$4;
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

.field final synthetic AE:Ltmsdk/common/module/netsetting/NetSettingManager;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/a;Ltmsdk/common/module/netsetting/NetSettingManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Ltmsdk/common/module/powersaving/a$4;->AD:Ltmsdk/common/module/powersaving/a;

    iput-object p2, p0, Ltmsdk/common/module/powersaving/a$4;->AE:Ltmsdk/common/module/netsetting/NetSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Ltmsdk/common/module/powersaving/a$4;->AE:Ltmsdk/common/module/netsetting/NetSettingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltmsdk/common/module/netsetting/NetSettingManager;->setWifiEnabled(Z)Z

    .line 345
    const/4 v0, 0x1

    sput-boolean v0, Ltmsdk/common/module/powersaving/a;->Av:Z

    .line 346
    return-void
.end method
