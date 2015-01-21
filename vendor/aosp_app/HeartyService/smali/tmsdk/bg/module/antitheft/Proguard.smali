.class public final Ltmsdk/bg/module/antitheft/Proguard;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAllMethods()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    const-class v1, Ltmsdk/bg/module/antitheft/AntitheftManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/antitheft/AntitheftManager;

    .line 10
    .local v0, manager:Ltmsdk/bg/module/antitheft/AntitheftManager;
    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    .line 11
    invoke-virtual {v0}, Ltmsdk/bg/module/antitheft/AntitheftManager;->getPassword()Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Ltmsdk/bg/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Ltmsdk/bg/module/antitheft/AntitheftManager;->setPassword(Ljava/lang/String;)V

    .line 14
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Ltmsdk/bg/module/antitheft/AntitheftManager;->parseSmsCommand(Ljava/lang/String;Ljava/lang/String;Z)Ltmsdk/common/module/antitheft/AntitheftCommand;

    .line 15
    return-void
.end method
