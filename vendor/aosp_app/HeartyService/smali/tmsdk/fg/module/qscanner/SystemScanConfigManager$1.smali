.class Ltmsdk/fg/module/qscanner/SystemScanConfigManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/fg/module/qscanner/SystemScanConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fy:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;


# direct methods
.method constructor <init>(Ltmsdk/fg/module/qscanner/SystemScanConfigManager;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager$1;->Fy:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 33
    iget-wide v0, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/SystemScanConfigManager$1;->Fy:Ltmsdk/fg/module/qscanner/SystemScanConfigManager;

    invoke-static {v0}, Ltmsdk/fg/module/qscanner/SystemScanConfigManager;->a(Ltmsdk/fg/module/qscanner/SystemScanConfigManager;)V

    .line 36
    :cond_0
    return-void
.end method
