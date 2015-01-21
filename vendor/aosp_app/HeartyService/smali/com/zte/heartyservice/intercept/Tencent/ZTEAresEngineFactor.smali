.class public final Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;
.super Ltmsdk/bg/module/aresengine/AresEngineFactor;
.source "ZTEAresEngineFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;,
        Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public getBlackListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    return-object v0
.end method

.method public getCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ICallLogDao",
            "<+",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v0

    return-object v0
.end method

.method public getEntityConverter()Ltmsdk/common/module/aresengine/IEntityConverter;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;-><init>()V

    return-object v0
.end method

.method public getKeyWordDao()Ltmsdk/common/module/aresengine/IKeyWordDao;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallLogDao()Ltmsdk/common/module/aresengine/ILastCallLogDao;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;

    invoke-super {p0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;Ltmsdk/bg/module/aresengine/PhoneDeviceController;)V

    return-object v0
.end method

.method public getPrivateCallLogDao()Ltmsdk/common/module/aresengine/ICallLogDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ICallLogDao",
            "<+",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivateSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ISmsDao",
            "<+",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsDao()Ltmsdk/common/module/aresengine/ISmsDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/ISmsDao",
            "<+",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v0

    return-object v0
.end method

.method public getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListDao()Ltmsdk/common/module/aresengine/IContactDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltmsdk/common/module/aresengine/IContactDao",
            "<+",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    return-object v0
.end method
