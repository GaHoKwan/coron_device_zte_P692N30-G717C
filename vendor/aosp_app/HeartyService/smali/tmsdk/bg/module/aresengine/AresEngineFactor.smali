.class public abstract Ltmsdk/bg/module/aresengine/AresEngineFactor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBlackListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ICallLogDao",
            "<+",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntityConverter()Ltmsdk/common/module/aresengine/IEntityConverter;
.end method

.method public abstract getKeyWordDao()Ltmsdk/common/module/aresengine/IKeyWordDao;
.end method

.method public abstract getLastCallLogDao()Ltmsdk/common/module/aresengine/ILastCallLogDao;
.end method

.method public getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getPrivateCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ICallLogDao",
            "<+",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ISmsDao",
            "<+",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ISmsDao",
            "<+",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltmsdk/common/module/aresengine/DefaultSysDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/DefaultSysDao;

    move-result-object v0

    return-object v0
.end method

.method public abstract getWhiteListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method
