.class public Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/antitheft/AntitheftLocatorObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocListener"
.end annotation


# instance fields
.field final synthetic tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bD(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "str"

    .prologue
    .line 319
    if-nez p1, :cond_0

    .line 320
    const-string p1, ""

    .line 322
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public accurateLocateTimeout()V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public getLocationFailed()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onLocationUpdate(Ltmsdkobf/gr;Z)V
    .locals 13
    .parameter "locRes"
    .parameter "isAccuracy"

    .prologue
    const-wide/16 v3, 0x0

    .line 281
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    if-nez v0, :cond_0

    .line 282
    const-string v0, "AntitheftCommandExecutor"

    const-string v1, "onLocationUpdate mAction == null"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v0, p1, Ltmsdkobf/gr;->oh:I

    if-eqz v0, :cond_2

    .line 286
    const-string v0, "AntitheftCommandExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationUpdate error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Ltmsdkobf/gr;->oh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    iget-boolean v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->d(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    move-result-object v1

    invoke-interface {v1}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4LocateFaild()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v1

    const/4 v2, 0x1

    move-wide v5, v3

    move-wide v7, v3

    invoke-static/range {v0 .. v8}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    goto :goto_0

    .line 292
    :cond_2
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v0, "#.00"

    invoke-direct {v10, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 293
    .local v10, decimalFormat:Ljava/text/DecimalFormat;
    iget-wide v5, p1, Ltmsdkobf/gr;->nT:D

    .line 294
    .local v5, sLat:D
    iget-wide v3, p1, Ltmsdkobf/gr;->nU:D

    .line 295
    .local v3, sLon:D
    iget-wide v7, p1, Ltmsdkobf/gr;->nW:D

    .line 296
    .local v7, sAcc:D
    const-string v0, "AntitheftCommandExecutor"

    const-string v1, "onLocationUpdate successed"

    invoke-static {v0, v1}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    iget-boolean v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    if-nez v0, :cond_3

    .line 298
    invoke-virtual {v10, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, lat:Ljava/lang/String;
    invoke-virtual {v10, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, lon:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.qq.com/1?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ltmsdkobf/gr;->od:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    invoke-direct {p0, v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u7eac\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ecf\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, address:Ljava/lang/String;
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v0

    iget-object v0, v0, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->d(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    move-result-object v2

    invoke-interface {v2}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4LocateSuccess()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 305
    .end local v9           #address:Ljava/lang/String;
    .end local v11           #lat:Ljava/lang/String;
    .end local v12           #lon:Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_4

    .line 306
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static/range {v0 .. v8}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    goto/16 :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    iget-object v1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$LocListener;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v1}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v8}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    goto/16 :goto_0
.end method
