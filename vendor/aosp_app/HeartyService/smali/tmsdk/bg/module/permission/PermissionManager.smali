.class public Ltmsdk/bg/module/permission/PermissionManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public addPermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 122
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->addPermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V

    .line 123
    return-void
.end method

.method protected eL()Ltmsdkobf/hv;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Ltmsdk/bg/creator/BaseManagerB;->eM()Ltmsdk/common/BaseManager;

    move-result-object v0

    check-cast v0, Ltmsdkobf/hv;

    return-object v0
.end method

.method protected synthetic eM()Ltmsdk/common/BaseManager;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/hv;->getPermissionTable()Ltmsdk/common/module/permission/PermissionTable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRidEnables()Ltmsdk/common/module/permission/RidEnableList;
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ltmsdk/common/module/permission/RidEnableList;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    invoke-direct {v0, v1}, Ltmsdk/common/module/permission/RidEnableList;-><init>([Z)V

    .line 172
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/hv;->cp()Ltmsdk/common/module/permission/RidEnableList;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Ltmsdk/bg/module/permission/IUserDummyServiceCallback;Z)I
    .locals 1
    .parameter "callback"
    .parameter "ignoreOldFramework"

    .prologue
    .line 71
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/16 v0, 0x63

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/hv;->init(Ltmsdk/bg/module/permission/IUserDummyServiceCallback;Z)I

    move-result v0

    goto :goto_0
.end method

.method public isFinishInit()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/hv;->isFinishInit()Z

    move-result v0

    goto :goto_0
.end method

.method public isRidEnable(I)Z
    .locals 1
    .parameter "rid"

    .prologue
    .line 180
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->isRidEnable(I)Z

    move-result v0

    return v0
.end method

.method public isRidsEnable([I)Z
    .locals 1
    .parameter "rids"

    .prologue
    .line 189
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->isRidsEnable([I)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 21
    new-instance v0, Ltmsdkobf/hv;

    invoke-direct {v0}, Ltmsdkobf/hv;-><init>()V

    .line 22
    .local v0, impl:Ltmsdkobf/hv;
    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->onCreate(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0, v0}, Ltmsdk/bg/module/permission/PermissionManager;->a(Ltmsdk/common/BaseManager;)V

    .line 26
    const v1, 0x1d4db

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ltmsdkobf/im;->a(II)V

    .line 27
    return-void
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Ltmsdkobf/hv;->reboot()V

    goto :goto_0
.end method

.method public removePermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 130
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->removePermissionTableItem(Ltmsdk/common/module/permission/PermissionTableItem;)V

    .line 131
    return-void
.end method

.method public setPermissionTable(Ltmsdk/common/module/permission/PermissionTable;)V
    .locals 1
    .parameter "table"

    .prologue
    .line 101
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->setPermissionTable(Ltmsdk/common/module/permission/PermissionTable;)V

    goto :goto_0
.end method

.method public setRidEnables(Ltmsdk/common/module/permission/RidEnableList;)V
    .locals 1
    .parameter "ridenables"

    .prologue
    .line 161
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->setRidEnables(Ltmsdk/common/module/permission/RidEnableList;)V

    .line 162
    return-void
.end method

.method public updatePermissionTable(III)V
    .locals 1
    .parameter "uid"
    .parameter "rid"
    .parameter "value"

    .prologue
    .line 140
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ltmsdkobf/hv;->updatePermissionTable(III)V

    goto :goto_0
.end method

.method public updatePermissionTable(Ltmsdk/common/module/permission/PermissionTableItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 150
    invoke-static {}, Ltmsdk/bg/module/permission/PermissionManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Ltmsdk/bg/module/permission/PermissionManager;->eL()Ltmsdkobf/hv;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdkobf/hv;->updatePermissionTable(Ltmsdk/common/module/permission/PermissionTableItem;)V

    goto :goto_0
.end method
