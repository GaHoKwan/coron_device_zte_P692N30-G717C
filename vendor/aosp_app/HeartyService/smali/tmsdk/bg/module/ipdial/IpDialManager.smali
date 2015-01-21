.class public final Ltmsdk/bg/module/ipdial/IpDialManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private uC:Ltmsdk/bg/module/ipdial/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public doIpCall(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "ipPhoneNum"
    .parameter "receiver"

    .prologue
    .line 64
    invoke-static {}, Ltmsdk/bg/module/ipdial/IpDialManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/ipdial/a;->doIpCall(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public getDialPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 53
    invoke-static {}, Ltmsdk/bg/module/ipdial/IpDialManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/ipdial/a;->getDialPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ltmsdk/bg/module/ipdial/IpDialManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    invoke-direct {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;-><init>()V

    .line 44
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0}, Ltmsdk/bg/module/ipdial/a;->getIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v0

    goto :goto_0
.end method

.method public getLagacyIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0}, Ltmsdk/bg/module/ipdial/a;->getLagacyIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 18
    new-instance v0, Ltmsdk/bg/module/ipdial/a;

    invoke-direct {v0}, Ltmsdk/bg/module/ipdial/a;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    .line 19
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/ipdial/a;->onCreate(Landroid/content/Context;)V

    .line 20
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/ipdial/IpDialManager;->a(Ltmsdk/common/BaseManager;)V

    .line 23
    const v0, 0x1d4e3

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 24
    return-void
.end method

.method public setIpDialSettingDao(Ltmsdk/common/module/ipdial/IAbsIpSetting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 34
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/IpDialManager;->uC:Ltmsdk/bg/module/ipdial/a;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/ipdial/a;->setIpDialSettingDao(Ltmsdk/common/module/ipdial/IAbsIpSetting;)V

    .line 35
    return-void
.end method
