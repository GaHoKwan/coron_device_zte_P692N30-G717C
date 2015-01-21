.class public Lcom/sdk/util/SignUtil;
.super Ljava/lang/Object;
.source "SignUtil.java"


# static fields
.field private static final ERROR:I = 0x2

.field private static final FINISH:I = 0x1

.field private static final NEWTS:Ljava/lang/String; = "newTs"

.field private static final OLDTS:Ljava/lang/String; = "oldTs"

.field public static final dbDir:Ljava/lang/String; = "/data/data/"

.field private static final infos:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6b63\u5e38\u53f7\u7801"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u9a9a\u6270\u7535\u8bdd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u623f\u4ea7\u4e2d\u4ecb"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5feb\u9012\u9001\u9910"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5e7f\u544a\u63a8\u9500"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/sdk/util/SignUtil;->isUrlempty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p0, p1, p2}, Lcom/sdk/util/SignUtil;->saveUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {p0, p1, p2}, Lcom/sdk/util/SignUtil;->updateTs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p0, p1, p2}, Lcom/sdk/util/SignUtil;->requestSearchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    return-void
.end method

.method static synthetic access$4()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-static {p0, p1, p2}, Lcom/sdk/util/SignUtil;->updateSign(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-static {p0, p1}, Lcom/sdk/util/SignUtil;->requestSubmitSign(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    return-void
.end method

.method static synthetic access$7(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-static {p0, p1}, Lcom/sdk/util/SignUtil;->requestUpdateSignDB(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    return-void
.end method

.method public static activate(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 14
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 99
    sget-object v11, Lcom/sdk/util/NBSrvUrl;->ACTIVATE:Ljava/lang/String;

    .line 101
    .local v11, url:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"model\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, model:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"adccompany\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initADCValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, adccompany:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"av\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, av:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"pkgname\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, pkgname:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"imsi\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, imsi:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"imei\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, imei:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"an\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initANValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, an:Ljava/lang/String;
    invoke-static {}, Lcom/sdk/util/SignUtil;->isUrlempty()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x1

    .line 109
    .local v10, type:I
    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\"actionType\":\""

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, actionType:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "{"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, requestData:Ljava/lang/String;
    new-instance v4, Lcom/sdk/util/SignUtil$1;

    invoke-direct {v4, p1, p0}, Lcom/sdk/util/SignUtil$1;-><init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;)V

    .line 143
    .local v4, dataCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {v11, v9, v4}, Lcom/sdk/util/SignUtil;->request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    .line 144
    return-void

    .line 108
    .end local v0           #actionType:Ljava/lang/String;
    .end local v4           #dataCallBack:Lcom/sdk/http/NetCallBack;
    .end local v9           #requestData:Ljava/lang/String;
    .end local v10           #type:I
    :cond_0
    const/4 v10, 0x2

    goto :goto_0
.end method

.method public static deleteSign(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "num"

    .prologue
    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    .line 346
    :cond_0
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 347
    .local v0, db:Lnet/tsz/afinal/FinalDb;
    const-class v1, Lcom/sdk/bean/NumInfo_native;

    invoke-virtual {v0, v1, p1}, Lnet/tsz/afinal/FinalDb;->deleteById(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 348
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isUrlempty()Z
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static needActivate(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const-string v6, "url"

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 46
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v6, "logUploadUrl"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sdk/util/NBSrvUrl;->logUploadUrl:Ljava/lang/String;

    .line 47
    const-string v6, "phoneSignUrl"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/sdk/util/NBSrvUrl;->phoneSignUrl:Ljava/lang/String;

    .line 48
    const-string v6, "ts"

    invoke-virtual {p0, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 49
    const-string v6, "newTs"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, newTs:Ljava/lang/String;
    const-string v6, "oldTs"

    const-string v7, ""

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, oldTs:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 52
    .local v0, needActivate:Z
    :goto_0
    invoke-static {}, Lcom/sdk/util/SignUtil;->isUrlempty()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v4

    .end local v0           #needActivate:Z
    :cond_0
    move v0, v5

    .line 51
    goto :goto_0

    .restart local v0       #needActivate:Z
    :cond_1
    move v4, v5

    .line 52
    goto :goto_1
.end method

.method private static request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    .locals 3
    .parameter "url"
    .parameter "requestData"
    .parameter "callBack"

    .prologue
    .line 525
    const-string v2, "url"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v2, "requestData"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/sdk/util/SignUtil$8;

    invoke-direct {v0, p2}, Lcom/sdk/util/SignUtil$8;-><init>(Lcom/sdk/http/NetCallBack;)V

    .line 544
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/sdk/util/SignUtil$9;

    invoke-direct {v1, v0, p0, p1}, Lcom/sdk/util/SignUtil$9;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 563
    return-void
.end method

.method private static requestSearchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    .locals 13
    .parameter "context"
    .parameter "num"
    .parameter "callBack"

    .prologue
    .line 211
    invoke-static {}, Lcom/sdk/util/NBSrvUrl;->getGETSIGN()Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, url:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"model\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, model:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"adccompany\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initADCValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, adccompany:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"av\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, av:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"pkgname\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, pkgname:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"imsi\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, imsi:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"imei\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, imei:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"an\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initANValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, an:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"phone\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, phone:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, requestData:Ljava/lang/String;
    new-instance v3, Lcom/sdk/util/SignUtil$3;

    invoke-direct {v3, p2, p0, p1}, Lcom/sdk/util/SignUtil$3;-><init>(Lcom/sdk/http/NetCallBack;Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    .local v3, dataCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {v10, v9, v3}, Lcom/sdk/util/SignUtil;->request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    .line 260
    return-void
.end method

.method private static requestSubmitSign(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 14
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 386
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdk/util/NBSrvUrl;->getSUBMITSIGN()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?imsi="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&pkgname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 387
    const-string v12, "&av="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&imei="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&model="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 388
    const-string v12, "&adccompany="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initADCValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 386
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, url:Ljava/lang/String;
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v2

    .line 391
    .local v2, finalDb:Lnet/tsz/afinal/FinalDb;
    const-class v11, Lcom/sdk/bean/NumInfo_native;

    const-string v12, "isSubmit=1"

    invoke-virtual {v2, v11, v12}, Lnet/tsz/afinal/FinalDb;->findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 393
    .local v8, nums:Ljava/util/List;,"Ljava/util/List<Lcom/sdk/bean/NumInfo_native;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 394
    :cond_0
    const-string v11, ""

    invoke-virtual {p1, v11}, Lcom/sdk/http/NetCallBack;->finish(Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 397
    :cond_1
    const-string v9, ""

    .line 399
    .local v9, requestData:Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 412
    new-instance v1, Lcom/sdk/util/SignUtil$5;

    invoke-direct {v1, p0, p1}, Lcom/sdk/util/SignUtil$5;-><init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 429
    .local v1, dbCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {v10, v9, v1}, Lcom/sdk/util/SignUtil;->request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    goto :goto_0

    .line 399
    .end local v1           #dbCallBack:Lcom/sdk/http/NetCallBack;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sdk/bean/NumInfo_native;

    .line 400
    .local v7, numInfo_native:Lcom/sdk/bean/NumInfo_native;
    invoke-virtual {v7}, Lcom/sdk/bean/NumInfo_native;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, num:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sdk/bean/NumInfo_native;->getInfo()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, infoStr:Ljava/lang/String;
    sget-object v12, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    array-length v5, v12

    .line 403
    .local v5, length:I
    const/4 v0, 0x1

    .local v0, a:I
    :goto_2
    if-ge v0, v5, :cond_2

    .line 404
    sget-object v12, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    aget-object v12, v12, v0

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 405
    move v3, v0

    .line 406
    .local v3, info:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    goto :goto_1

    .line 403
    .end local v3           #info:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static requestUpdateSignDB(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 13
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 467
    invoke-static {}, Lcom/sdk/util/NBSrvUrl;->getGETSIGNDB()Ljava/lang/String;

    move-result-object v10

    .line 469
    .local v10, url:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"model\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 470
    .local v7, model:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"adccompany\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initADCValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, adccompany:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"av\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdk/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, av:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"pkgname\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 473
    .local v8, pkgname:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"imsi\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, imsi:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"imei\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, imei:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"an\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initANValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, an:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\"lastTs\":\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initLastTs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, lastTs:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "{"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, requestData:Ljava/lang/String;
    new-instance v3, Lcom/sdk/util/SignUtil$7;

    invoke-direct {v3, p0, p1}, Lcom/sdk/util/SignUtil$7;-><init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 514
    .local v3, back:Lcom/sdk/http/NetCallBack;
    invoke-static {v10, v9, v3}, Lcom/sdk/util/SignUtil;->request(Ljava/lang/String;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    .line 515
    return-void
.end method

.method public static saveSign(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "num"
    .parameter "sign"

    .prologue
    const/4 v2, 0x1

    .line 295
    sget-object v3, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    if-gtz p2, :cond_1

    .line 296
    :cond_0
    const/4 v2, 0x0

    .line 308
    :goto_0
    return v2

    .line 298
    :cond_1
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 299
    .local v0, db:Lnet/tsz/afinal/FinalDb;
    new-instance v1, Lcom/sdk/bean/NumInfo_native;

    invoke-direct {v1}, Lcom/sdk/bean/NumInfo_native;-><init>()V

    .line 300
    .local v1, info_native:Lcom/sdk/bean/NumInfo_native;
    invoke-virtual {v1, p1}, Lcom/sdk/bean/NumInfo_native;->setNumber(Ljava/lang/String;)V

    .line 301
    sget-object v3, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v1, v3}, Lcom/sdk/bean/NumInfo_native;->setInfo(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v2}, Lcom/sdk/bean/NumInfo_native;->setIsSubmit(I)V

    .line 303
    const-class v3, Lcom/sdk/bean/NumInfo_native;

    invoke-virtual {v0, p1, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 304
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static saveSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "num"
    .parameter "sign"

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    :goto_0
    return v2

    .line 323
    :cond_0
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 324
    .local v0, db:Lnet/tsz/afinal/FinalDb;
    new-instance v1, Lcom/sdk/bean/NumInfo_native;

    invoke-direct {v1}, Lcom/sdk/bean/NumInfo_native;-><init>()V

    .line 325
    .local v1, info_native:Lcom/sdk/bean/NumInfo_native;
    invoke-virtual {v1, p1}, Lcom/sdk/bean/NumInfo_native;->setNumber(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p2}, Lcom/sdk/bean/NumInfo_native;->setInfo(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v2}, Lcom/sdk/bean/NumInfo_native;->setIsSubmit(I)V

    .line 328
    const-class v2, Lcom/sdk/bean/NumInfo_native;

    invoke-virtual {v0, p1, v2}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 329
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    .line 333
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static saveUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "phoneSignUrl"
    .parameter "logUploadUrl"

    .prologue
    .line 88
    const-string v2, "url"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 89
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 90
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "phoneSignUrl"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string v2, "logUploadUrl"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public static searchSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "num"

    .prologue
    .line 154
    invoke-static {p0}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 156
    .local v0, db:Lnet/tsz/afinal/FinalDb;
    const-class v5, Lcom/sdk/bean/NumInfo_native;

    invoke-virtual {v0, p1, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdk/bean/NumInfo_native;

    .line 157
    .local v2, info_native:Lcom/sdk/bean/NumInfo_native;
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v2}, Lcom/sdk/bean/NumInfo_native;->getInfo()Ljava/lang/String;

    move-result-object v5

    .line 170
    :goto_0
    return-object v5

    .line 161
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/data/data/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initLastTs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, path:Ljava/lang/String;
    invoke-static {p0, v3}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 163
    const-class v5, Lcom/sdk/bean/NumInfo;

    invoke-virtual {v0, p1, v5}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdk/bean/NumInfo;

    .line 164
    .local v1, info:Lcom/sdk/bean/NumInfo;
    if-eqz v1, :cond_1

    .line 165
    invoke-virtual {v1}, Lcom/sdk/bean/NumInfo;->getType()I

    move-result v4

    .line 166
    .local v4, type:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_1

    sget-object v5, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 167
    sget-object v5, Lcom/sdk/util/SignUtil;->infos:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_0

    .line 170
    .end local v4           #type:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static searchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V
    .locals 2
    .parameter "context"
    .parameter "num"
    .parameter "callBack"

    .prologue
    .line 183
    invoke-virtual {p2}, Lcom/sdk/http/NetCallBack;->start()V

    .line 185
    invoke-static {p0}, Lcom/sdk/util/SignUtil;->needActivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Lcom/sdk/util/SignUtil$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sdk/util/SignUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    .line 197
    .local v0, activateCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {p0, v0}, Lcom/sdk/util/SignUtil;->activate(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 201
    .end local v0           #activateCallBack:Lcom/sdk/http/NetCallBack;
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sdk/util/SignUtil;->requestSearchSign(Landroid/content/Context;Ljava/lang/String;Lcom/sdk/http/NetCallBack;)V

    goto :goto_0
.end method

.method public static submitSign(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 2
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/sdk/http/NetCallBack;->start()V

    .line 360
    invoke-static {p0}, Lcom/sdk/util/SignUtil;->needActivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Lcom/sdk/util/SignUtil$4;

    invoke-direct {v0, p0, p1}, Lcom/sdk/util/SignUtil$4;-><init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 372
    .local v0, activateCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {p0, v0}, Lcom/sdk/util/SignUtil;->activate(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 377
    .end local v0           #activateCallBack:Lcom/sdk/http/NetCallBack;
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {p0, p1}, Lcom/sdk/util/SignUtil;->requestSubmitSign(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    goto :goto_0
.end method

.method private static updateSign(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .parameter "context"
    .parameter "num"
    .parameter "type"

    .prologue
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initPkgname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/sdk/util/InitFuncs;->initLastTs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, path:Ljava/lang/String;
    invoke-static {p0, v2}, Lnet/tsz/afinal/FinalDb;->create(Landroid/content/Context;Ljava/lang/String;)Lnet/tsz/afinal/FinalDb;

    move-result-object v0

    .line 273
    .local v0, db:Lnet/tsz/afinal/FinalDb;
    const-class v3, Lcom/sdk/bean/NumInfo;

    invoke-virtual {v0, p1, v3}, Lnet/tsz/afinal/FinalDb;->findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdk/bean/NumInfo;

    .line 274
    .local v1, info:Lcom/sdk/bean/NumInfo;
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1, p2}, Lcom/sdk/bean/NumInfo;->setType(I)V

    .line 276
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->update(Ljava/lang/Object;)V

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    new-instance v1, Lcom/sdk/bean/NumInfo;

    .end local v1           #info:Lcom/sdk/bean/NumInfo;
    invoke-direct {v1}, Lcom/sdk/bean/NumInfo;-><init>()V

    .line 279
    .restart local v1       #info:Lcom/sdk/bean/NumInfo;
    invoke-virtual {v1, p1}, Lcom/sdk/bean/NumInfo;->setPhone(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, p2}, Lcom/sdk/bean/NumInfo;->setType(I)V

    .line 281
    const-string v3, "0"

    invoke-virtual {v1, v3}, Lcom/sdk/bean/NumInfo;->setSigntimes(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/FinalDb;->save(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static updateSignDB(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V
    .locals 2
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 440
    invoke-virtual {p1}, Lcom/sdk/http/NetCallBack;->start()V

    .line 442
    invoke-static {p0}, Lcom/sdk/util/SignUtil;->needActivate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    new-instance v0, Lcom/sdk/util/SignUtil$6;

    invoke-direct {v0, p0, p1}, Lcom/sdk/util/SignUtil$6;-><init>(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 454
    .local v0, activateCallBack:Lcom/sdk/http/NetCallBack;
    invoke-static {p0, v0}, Lcom/sdk/util/SignUtil;->activate(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    .line 458
    .end local v0           #activateCallBack:Lcom/sdk/http/NetCallBack;
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-static {p0, p1}, Lcom/sdk/util/SignUtil;->requestUpdateSignDB(Landroid/content/Context;Lcom/sdk/http/NetCallBack;)V

    goto :goto_0
.end method

.method private static updateTs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "ts"

    .prologue
    .line 74
    const-string v2, "ts"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 75
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method
