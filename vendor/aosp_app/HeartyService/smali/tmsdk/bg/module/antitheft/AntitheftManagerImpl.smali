.class public final Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

.field private uf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->uf:Z

    return-void
.end method


# virtual methods
.method public getBindQQNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    invoke-virtual {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    invoke-virtual {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(Z)Ljava/lang/String;
    .locals 1
    .parameter "encrypt"

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getPassword(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty()Ltmsdk/common/module/antitheft/AntitheftProperty;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public getWebServerNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    invoke-virtual {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;->getWebServerNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDebugModel()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->uf:Z

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->mContext:Landroid/content/Context;

    .line 22
    new-instance v0, Ltmsdk/common/module/antitheft/AntitheftProperty;

    invoke-direct {v0}, Ltmsdk/common/module/antitheft/AntitheftProperty;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->ue:Ltmsdk/common/module/antitheft/AntitheftProperty;

    .line 23
    return-void
.end method

.method public parseSmsCommand(Ljava/lang/String;Ljava/lang/String;)Ltmsdk/common/module/antitheft/AntitheftCommand;
    .locals 2
    .parameter "phoneNum"
    .parameter "smsContent"

    .prologue
    .line 35
    new-instance v0, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;-><init>(Ltmsdk/common/module/antitheft/AntitheftCommand$IAntitheftCommandObserver;Landroid/content/Context;)V

    .line 36
    .local v0, parser:Ltmsdk/bg/module/antitheft/AntitheftCommandParser;
    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/antitheft/AntitheftCommandParser;->parseSmsCommand(Ljava/lang/String;Ljava/lang/String;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v1

    return-object v1
.end method

.method public setDebugModel(Z)V
    .locals 0
    .parameter "isDebugModel"

    .prologue
    .line 40
    iput-boolean p1, p0, Ltmsdk/bg/module/antitheft/AntitheftManagerImpl;->uf:Z

    .line 41
    return-void
.end method
