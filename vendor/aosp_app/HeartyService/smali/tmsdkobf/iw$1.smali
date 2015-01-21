.class Ltmsdkobf/iw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sv:Ltmsdkobf/iw;


# direct methods
.method constructor <init>(Ltmsdkobf/iw;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Ltmsdkobf/iw$1;->sv:Ltmsdkobf/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 58
    iget-wide v0, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide v2, 0x100000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Ltmsdkobf/iw$1;->sv:Ltmsdkobf/iw;

    invoke-static {v0}, Ltmsdkobf/iw;->a(Ltmsdkobf/iw;)V

    .line 60
    iget-object v0, p0, Ltmsdkobf/iw$1;->sv:Ltmsdkobf/iw;

    invoke-static {v0}, Ltmsdkobf/iw;->b(Ltmsdkobf/iw;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_cert_list_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-wide v0, p1, Ltmsdk/common/module/update/UpdateInfo;->flag:J

    const-wide v2, 0x200000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Ltmsdkobf/iw$1;->sv:Ltmsdkobf/iw;

    invoke-static {v0}, Ltmsdkobf/iw;->c(Ltmsdkobf/iw;)V

    .line 63
    iget-object v0, p0, Ltmsdkobf/iw$1;->sv:Ltmsdkobf/iw;

    invoke-static {v0}, Ltmsdkobf/iw;->b(Ltmsdkobf/iw;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_cert_list_update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
