.class Ltmsdkobf/ha$a$1;
.super Ltmsdkobf/gy$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/ha$a;->aR(I)Ltmsdkobf/gy$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oL:I

.field final synthetic oM:Ltmsdkobf/ha$a;


# direct methods
.method constructor <init>(Ltmsdkobf/ha$a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    iput p2, p0, Ltmsdkobf/ha$a$1;->oL:I

    invoke-direct {p0}, Ltmsdkobf/gy$a;-><init>()V

    return-void
.end method


# virtual methods
.method bY()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bU()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bU()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 288
    :cond_0
    :goto_0
    return v3

    .line 244
    :cond_1
    const/4 v1, 0x0

    .line 245
    .local v1, dao:Ljava/lang/Object;
    iget v5, p0, Ltmsdkobf/ha$a$1;->oL:I

    sparse-switch v5, :sswitch_data_0

    .line 274
    .end local v1           #dao:Ljava/lang/Object;
    :goto_1
    :sswitch_0
    iget v5, p0, Ltmsdkobf/ha$a$1;->oL:I

    const/16 v6, 0x40

    if-ne v5, v6, :cond_2

    .line 275
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iget-object v3, v3, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    .line 250
    .restart local v1       #dao:Ljava/lang/Object;
    :sswitch_1
    iget-object v5, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v5}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPrivateListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v1

    .line 251
    .local v1, dao:Ltmsdk/common/module/aresengine/IContactDao;
    goto :goto_1

    .line 254
    .local v1, dao:Ljava/lang/Object;
    :sswitch_2
    iget-object v5, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v5}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getWhiteListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v1

    .line 255
    .local v1, dao:Ltmsdk/common/module/aresengine/IContactDao;
    goto :goto_1

    .line 258
    .local v1, dao:Ljava/lang/Object;
    :sswitch_3
    iget-object v5, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v5}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getBlackListDao()Ltmsdk/common/module/aresengine/IContactDao;

    move-result-object v1

    .line 259
    .local v1, dao:Ltmsdk/common/module/aresengine/IContactDao;
    goto :goto_1

    .line 262
    .local v1, dao:Ljava/lang/Object;
    :sswitch_4
    iget-object v5, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v5}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v1

    .line 263
    .local v1, dao:Ltmsdk/common/module/aresengine/AbsSysDao;
    goto :goto_1

    .line 266
    .local v1, dao:Ljava/lang/Object;
    :sswitch_5
    iget-object v5, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v5}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getLastCallLogDao()Ltmsdk/common/module/aresengine/ILastCallLogDao;

    move-result-object v1

    .line 267
    .local v1, dao:Ltmsdk/common/module/aresengine/ILastCallLogDao;
    goto :goto_1

    .line 270
    .local v1, dao:Ljava/lang/Object;
    :sswitch_6
    const/4 v1, 0x0

    goto :goto_1

    .line 276
    .end local v1           #dao:Ljava/lang/Object;
    :cond_2
    iget v5, p0, Ltmsdkobf/ha$a$1;->oL:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_3

    move v3, v4

    .line 277
    goto :goto_0

    .line 278
    :cond_3
    instance-of v4, v1, Ltmsdk/common/module/aresengine/IContactDao;

    if-eqz v4, :cond_4

    move-object v0, v1

    .line 280
    check-cast v0, Ltmsdk/common/module/aresengine/IContactDao;

    .line 281
    .local v0, contactdao:Ltmsdk/common/module/aresengine/IContactDao;,"Ltmsdk/common/module/aresengine/IContactDao<+Ltmsdk/common/module/aresengine/ContactEntity;>;"
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v4

    iget-object v4, v4, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ltmsdk/common/module/aresengine/IContactDao;->contains(Ljava/lang/String;I)Z

    move-result v3

    goto :goto_0

    .line 282
    .end local v0           #contactdao:Ltmsdk/common/module/aresengine/IContactDao;,"Ltmsdk/common/module/aresengine/IContactDao<+Ltmsdk/common/module/aresengine/ContactEntity;>;"
    :cond_4
    instance-of v4, v1, Ltmsdk/common/module/aresengine/ILastCallLogDao;

    if-eqz v4, :cond_5

    .line 283
    check-cast v1, Ltmsdk/common/module/aresengine/ILastCallLogDao;

    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iget-object v3, v3, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-interface {v1, v3}, Ltmsdk/common/module/aresengine/ILastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 284
    :cond_5
    instance-of v4, v1, Ltmsdk/common/module/aresengine/AbsSysDao;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 285
    check-cast v2, Ltmsdk/common/module/aresengine/AbsSysDao;

    .line 286
    .local v2, sysdao:Ltmsdk/common/module/aresengine/AbsSysDao;
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v3

    iget-object v3, v3, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ltmsdk/common/module/aresengine/AbsSysDao;->contains(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x20 -> :sswitch_6
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method bZ()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 296
    new-instance v4, Ltmsdk/common/module/aresengine/FilterResult;

    invoke-direct {v4}, Ltmsdk/common/module/aresengine/FilterResult;-><init>()V

    .line 297
    .local v4, result:Ltmsdk/common/module/aresengine/FilterResult;
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bT()Ltmsdk/common/module/aresengine/TelephonyEntity;

    move-result-object v6

    iput-object v6, v4, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    .line 298
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bV()[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v4, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    .line 299
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bU()I

    move-result v6

    iput v6, v4, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    .line 300
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bW()I

    move-result v6

    iput v6, v4, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    .line 302
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bU()I

    move-result v6

    if-nez v6, :cond_1

    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Ltmsdkobf/ha$a$1;->a(Ltmsdk/common/module/aresengine/FilterResult;)V

    .line 340
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Ltmsdkobf/ha$a$1;->bU()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 306
    iput-boolean v8, v4, Ltmsdk/common/module/aresengine/FilterResult;->isBlocked:Z

    .line 308
    iget-object v3, v4, Ltmsdk/common/module/aresengine/FilterResult;->mData:Ltmsdk/common/module/aresengine/TelephonyEntity;

    check-cast v3, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 309
    .local v3, entity:Ltmsdk/common/module/aresengine/CallLogEntity;
    sget-object v0, Ltmsdkobf/ig;->qS:Ltmsdkobf/lm;

    .line 310
    .local v0, adapter:Ltmsdkobf/lm;
    const/4 v5, 0x0

    .line 311
    .local v5, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_3

    .line 312
    iget-object v6, v3, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ltmsdkobf/lm;->bZ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    :cond_2
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getDefaultTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 323
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 325
    .local v1, callEnded:Z
    if-eqz v5, :cond_4

    .line 326
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 333
    iget-object v6, p0, Ltmsdkobf/ha$a$1;->oM:Ltmsdkobf/ha$a;

    invoke-static {v6}, Ltmsdkobf/ha$a;->a(Ltmsdkobf/ha$a;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->hangup()V

    .line 336
    :cond_5
    const v6, 0x1d4c1

    invoke-static {v6}, Ltmsdkobf/im;->aT(I)V

    goto :goto_0

    .line 317
    .end local v1           #callEnded:Z
    :cond_6
    iget-object v6, v3, Ltmsdk/common/module/aresengine/CallLogEntity;->fromCard:Ljava/lang/String;

    invoke-interface {v0, v8}, Ltmsdkobf/lm;->bZ(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 320
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getSecondTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    goto :goto_1

    .line 328
    .restart local v1       #callEnded:Z
    :catch_0
    move-exception v2

    .line 329
    .local v2, e:Landroid/os/RemoteException;
    const-string v6, "IncomingCallInterceptorBuilder"

    const-string v7, "endCall"

    invoke-static {v6, v7, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
