.class public final Ltmsdk/bg/module/antitheft/AntitheftManager;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field private ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method


# virtual methods
.method public encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "password"

    .prologue
    .line 136
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, ""

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBindQQNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHelperNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, ""

    .line 126
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, ""

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getPassword(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    return v0
.end method

.method public getWebServerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, ""

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getWebServerNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-direct {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    .line 25
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->onCreate(Landroid/content/Context;)V

    .line 26
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/antitheft/AntitheftManager;->a(Ltmsdk/common/BaseManager;)V

    .line 28
    const v0, 0x1d4c8

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 29
    return-void
.end method

.method public parseSmsCommand(Ljava/lang/String;Ljava/lang/String;Z)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 1
    .parameter "phoneNum"
    .parameter "smsConten"
    .parameter "isDebugModelt"

    .prologue
    .line 41
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->parseSmsCommand(Ljava/lang/String;Ljava/lang/String;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    goto :goto_0
.end method

.method public setBindQQNum(Ljava/lang/String;)V
    .locals 1
    .parameter "qqNum"

    .prologue
    .line 102
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->setBindQQNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDebugModel(Z)V
    .locals 1
    .parameter "isDebugModel"

    .prologue
    .line 37
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->setDebugModel(Z)V

    .line 38
    return-void
.end method

.method public setHelperNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "helperNum"

    .prologue
    .line 72
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->setHelperNumber(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 52
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->setPassword(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWebServerNum(Ljava/lang/String;)V
    .locals 1
    .parameter "serverNum"

    .prologue
    .line 82
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManager;->ud:Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;

    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->setWebServerNumber(Ljava/lang/String;)V

    goto :goto_0
.end method
