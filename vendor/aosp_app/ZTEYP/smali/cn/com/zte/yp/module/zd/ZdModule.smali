.class public Lcn/com/zte/yp/module/zd/ZdModule;
.super Lcn/com/zte/yp/YpModule;
.source "ZdModule.java"


# static fields
.field private static initFlag:Z


# instance fields
.field private description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/zte/yp/module/zd/ZdModule;->initFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Lcn/com/zte/yp/YpModule;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    .line 41
    const v0, 0x7f080007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/yp/module/zd/ZdModule;->description:Ljava/lang/String;

    .line 42
    sget-boolean v0, Lcn/com/zte/yp/module/zd/ZdModule;->initFlag:Z

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcn/com/zte/yp/module/zd/ZdModule;->init()V

    .line 45
    :cond_0
    return-void
.end method

.method private getCallFlag(I)Ljava/lang/String;
    .locals 2
    .parameter "callType"

    .prologue
    .line 288
    const-string v0, "-1"

    .line 289
    .local v0, callFlag:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    .line 290
    const-string v0, "4"

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 291
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    .line 292
    const-string v0, "2"

    goto :goto_0

    .line 293
    :cond_2
    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 294
    const-string v0, "3"

    goto :goto_0
.end method

.method private getLocationFromIsw(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, loc:Ljava/lang/String;
    invoke-static {p1}, Lcom/isw/android/corp/util/DotInterface;->getNumLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;

    move-result-object v1

    .line 143
    .local v1, location:Lcom/isw/android/corp/bean/LocInfoBean;
    if-eqz v1, :cond_0

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/isw/android/corp/bean/LocInfoBean;->city:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/isw/android/corp/bean/LocInfoBean;->operator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method private getLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/module/zd/ZdModule;->queryLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, loc:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search loc from nlt.loc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 136
    return-object v0
.end method

.method private readPhoto(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "is"

    .prologue
    const/4 v3, 0x0

    .line 156
    if-eqz p1, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 159
    .local v2, length:I
    new-array v0, v2, [B

    .line 160
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    .end local v0           #buffer:[B
    .end local v2           #length:I
    :goto_0
    return-object v0

    .line 169
    .restart local v0       #buffer:[B
    .restart local v2       #length:I
    :catch_0
    move-exception v1

    .line 170
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #length:I
    :catch_1
    move-exception v1

    .line 163
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    move-object v0, v3

    .line 171
    goto :goto_0

    .line 169
    :catch_2
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 168
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 171
    :goto_2
    throw v3

    .line 169
    :catch_3
    move-exception v1

    .line 170
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    move-object v0, v3

    .line 174
    goto :goto_0
.end method

.method private searchYpc(Ljava/lang/String;Z)Lcn/com/zte/yp/YpContact;
    .locals 7
    .parameter "number"
    .parameter "onlyYp"

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "112"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 103
    const/4 v2, 0x0

    .line 129
    :goto_0
    return-object v2

    .line 106
    :cond_1
    new-instance v2, Lcn/com/zte/yp/YpContact;

    invoke-direct {v2}, Lcn/com/zte/yp/YpContact;-><init>()V

    .line 107
    .local v2, ypc:Lcn/com/zte/yp/YpContact;
    iget-object v3, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/isw/android/corp/util/DotInterface;->getDotInfoBean(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/isw/android/corp/bean/DotInfoBean;

    move-result-object v0

    .line 110
    .local v0, dotInfoBean:Lcom/isw/android/corp/bean/DotInfoBean;
    invoke-virtual {v2, p1}, Lcn/com/zte/yp/YpContact;->setNumber(Ljava/lang/String;)V

    .line 111
    iget-object v3, v0, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setName(Ljava/lang/String;)V

    .line 112
    iget-object v3, v0, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lcn/com/zte/yp/module/zd/ZdModule;->readPhoto(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setPhoto([B)V

    .line 113
    iget-object v3, v0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    invoke-direct {p0, v3}, Lcn/com/zte/yp/module/zd/ZdModule;->readPhoto(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setExtraData([B)V

    .line 115
    invoke-virtual {v2}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DotInterface.Search yp data by new  DotInterface.number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 117
    new-instance v1, Lcom/isw/android/corp/util/DotInterface;

    iget-object v3, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p1}, Lcom/isw/android/corp/util/DotInterface;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    .local v1, dotInterface:Lcom/isw/android/corp/util/DotInterface;
    iget-object v3, p0, Lcn/com/zte/yp/module/zd/ZdModule;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setDatasource(Ljava/lang/String;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DotInterface.dotInterface.getCompanyName()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/isw/android/corp/util/DotInterface;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1}, Lcom/isw/android/corp/util/DotInterface;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setName(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Lcom/isw/android/corp/util/DotInterface;->getCompanyIconInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/zte/yp/module/zd/ZdModule;->readPhoto(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setPhoto([B)V

    .line 122
    invoke-static {}, Lcom/isw/android/corp/util/DotInterface;->getDotInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/com/zte/yp/module/zd/ZdModule;->readPhoto(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setExtraData([B)V

    .line 125
    .end local v1           #dotInterface:Lcom/isw/android/corp/util/DotInterface;
    :cond_2
    invoke-virtual {v2}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    .line 126
    invoke-direct {p0, p1}, Lcn/com/zte/yp/module/zd/ZdModule;->getLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/zte/yp/YpContact;->setLocation(Ljava/lang/String;)V

    .line 128
    :cond_3
    const-string v3, "ypc=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcn/com/zte/yp/YpContact;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startYpDotView(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 5
    .parameter "activity"
    .parameter "number"
    .parameter "callType"

    .prologue
    .line 270
    iget-object v2, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/zte/yp/utils/CommonFuncs;->networkIsAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    const-string v3, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff01"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p3}, Lcn/com/zte/yp/module/zd/ZdModule;->getCallFlag(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, callFlag:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.isw.third.app.DotWebShow"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "callFlag"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v2, "number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public getYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 3
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 90
    const-string v2, "numbers is null, return null"

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    .line 91
    const/4 v1, 0x0

    .line 97
    :cond_0
    return-object v1

    .line 93
    :cond_1
    array-length v2, p1

    new-array v1, v2, [Lcn/com/zte/yp/YpContact;

    .line 94
    .local v1, ypcs:[Lcn/com/zte/yp/YpContact;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 95
    aget-object v2, p1, v0

    invoke-direct {p0, v2, p2}, Lcn/com/zte/yp/module/zd/ZdModule;->searchYpc(Ljava/lang/String;Z)Lcn/com/zte/yp/YpContact;

    move-result-object v2

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getYpContactByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 1
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, Lcn/com/zte/yp/module/zd/ZdModule;->getYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 243
    const-string v0, "WinksApplication.onCreate"

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V

    .line 245
    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/zte/yp/module/zd/ZdModule;->initFlag:Z

    .line 246
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public launchOfflineDataDownloadUI()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public launchSearchUI()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    const-string v2, "QueryYpNum"

    const-string v3, "ZD"

    invoke-static {v1, v2, v3}, Lcn/com/zte/yp/statics/StaticsInfo;->collectSelfDefineStatiscs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->activity:Landroid/app/Activity;

    const-class v2, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public launchSettingsUI()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public launchWarningDialog()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public launchWebView(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2
    .parameter "activity"
    .parameter "number"
    .parameter "callType"

    .prologue
    .line 257
    iget-object v0, p0, Lcn/com/zte/yp/module/zd/ZdModule;->context:Landroid/content/Context;

    const-string v1, "YpDot"

    invoke-static {v0, v1}, Lcn/com/zte/yp/statics/StaticsInfo;->collectSelfDefineStatiscs(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcn/com/zte/yp/module/zd/ZdModule;->startYpDotView(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 259
    return-void
.end method

.method public queryYpContactByName(Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;
    .locals 8
    .parameter "name"

    .prologue
    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getBusinessCardByName.search "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyDataByName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 196
    .local v3, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 197
    :cond_0
    const/4 v5, 0x0

    .line 215
    :goto_0
    return-object v5

    .line 199
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Lcn/com/zte/yp/YpContact;

    .line 200
    .local v5, ypcs:[Lcn/com/zte/yp/YpContact;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 201
    new-instance v4, Lcn/com/zte/yp/YpContact;

    invoke-direct {v4}, Lcn/com/zte/yp/YpContact;-><init>()V

    .line 202
    .local v4, ypc:Lcn/com/zte/yp/YpContact;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 203
    .local v0, bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    iget-object v6, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcn/com/zte/yp/YpContact;->setName(Ljava/lang/String;)V

    .line 204
    iget-object v6, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcn/com/zte/yp/YpContact;->setNumber(Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcn/com/zte/yp/module/zd/ZdModule;->description:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcn/com/zte/yp/YpContact;->setDatasource(Ljava/lang/String;)V

    .line 206
    iget-object v6, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-static {v6}, Lcom/isw/android/corp/util/DotInterface;->getCompanyIconInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 208
    .local v2, is:Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcn/com/zte/yp/module/zd/ZdModule;->readPhoto(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/com/zte/yp/YpContact;->setPhoto([B)V

    .line 210
    .end local v2           #is:Ljava/io/InputStream;
    :cond_2
    aput-object v4, v5, v1

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v0           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v4           #ypc:Lcn/com/zte/yp/YpContact;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 213
    const/4 v3, 0x0

    .line 215
    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 184
    iput-object p1, p0, Lcn/com/zte/yp/module/zd/ZdModule;->activity:Landroid/app/Activity;

    .line 185
    return-void
.end method
