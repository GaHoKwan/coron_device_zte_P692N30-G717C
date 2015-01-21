.class public Lcom/isw/android/corp/message/MiniCompanyData;
.super Ljava/lang/Object;
.source "MiniCompanyData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCompanyData"

.field private static bConnecting:Z

.field private static bRefreshWorking:Z

.field private static localCompanyArr:[Ljava/lang/String;

.field public static localCompanyTs:Ljava/lang/String;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCompanyData;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 70
    const-string v0, "localCompanyFile"

    const-string v1, ""

    .line 69
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    .line 73
    const-string v0, "localCompanyTs"

    const-string v1, ""

    .line 72
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 91
    sput-boolean v2, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    .line 985
    sput-boolean v2, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 90
    sput p0, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 97
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->process()V

    return-void
.end method

.method static synthetic access$2(Z)V
    .locals 0
    .parameter

    .prologue
    .line 985
    sput-boolean p0, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 851
    invoke-static {p0, p1}, Lcom/isw/android/corp/message/MiniCompanyData;->parseCompanyData(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    return-object v0
.end method

.method public static checkDiffDataExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "ts"

    .prologue
    .line 1491
    const/4 v0, 0x0

    .line 1492
    .local v0, bExisting:Z
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1493
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1494
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1495
    .local v3, list:[Ljava/io/File;
    const-string v4, ""

    .line 1496
    .local v4, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1497
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-lt v2, v5, :cond_1

    .line 1508
    .end local v2           #i:I
    .end local v3           #list:[Ljava/io/File;
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    return v0

    .line 1498
    .restart local v2       #i:I
    .restart local v3       #list:[Ljava/io/File;
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1499
    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1500
    const-string v5, ".dizz"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1501
    const-string v5, ".diff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1502
    :cond_2
    const/4 v0, 0x1

    .line 1503
    goto :goto_1

    .line 1497
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static dotidTopath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dotservice"

    .prologue
    .line 1139
    const-string v1, ""

    .line 1141
    .local v1, dotpath:Ljava/lang/String;
    sget-object v2, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v0, v2, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 1142
    .local v0, dotEnable:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1144
    const-string v3, "dotEnable"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    sget-object v2, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iput-object v0, v2, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 1148
    :cond_0
    if-eqz p0, :cond_1

    .line 1149
    const-string v2, "s"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1150
    const-string v2, "p"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1153
    :cond_1
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1154
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1155
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1156
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1155
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1157
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1158
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    :cond_2
    :goto_0
    return-object v1

    .line 1159
    :cond_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1160
    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1162
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1164
    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1166
    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1167
    goto/16 :goto_0

    :cond_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1168
    const-string v4, "dotdefault.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1170
    const-string v3, "dotdefault.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getCompanyDataByName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "keyWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1988
    const-string v6, "MiniCompanyData"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Begin search company data by name: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1989
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-object v0

    .line 1992
    :cond_1
    new-instance v4, Ljava/io/File;

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1993
    .local v4, searchFileDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1996
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1997
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1998
    .local v1, companyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    .local v0, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/pinyincompany.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2000
    .local v5, searchFilePath:Ljava/lang/String;
    invoke-static {p0, v1, v0, v5}, Lcom/isw/android/corp/message/MiniCompanyData;->setCompanyMapByName(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2001
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-lt v3, v6, :cond_2

    .line 2007
    const-string v6, "MiniCompanyData"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "End search company data for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 2002
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, filePath:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2004
    invoke-static {p0, v1, v0, v2}, Lcom/isw/android/corp/message/MiniCompanyData;->setCompanyMapByName(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2001
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static getCompanyDataByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .parameter "keyWords"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1898
    const-string v4, "MiniCompanyData"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Begin search company data by number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_1

    .line 1900
    :cond_0
    const/4 v0, 0x0

    .line 1914
    :goto_0
    return-object v0

    .line 1902
    :cond_1
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1903
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1904
    .local v1, companyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v0, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->numberCompanyDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    .local v3, searchFilePath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1907
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "localCompanyFile"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1909
    :cond_2
    invoke-static {p0, v1, v0, v3}, Lcom/isw/android/corp/message/MiniCompanyData;->setCompanyMapByNumber(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1910
    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataFile:Ljava/lang/String;

    .line 1911
    .local v2, preCompanyFile:Ljava/lang/String;
    invoke-static {p0, v1, v0, v2}, Lcom/isw/android/corp/message/MiniCompanyData;->setCompanyMapByNumber(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1912
    const-string v4, "MiniCompanyData"

    const-string v5, "End search company data."

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public static getCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iconid"

    .prologue
    .line 688
    const-string v1, "MiniCompanyData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "iconid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, ""

    .line 690
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 691
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 734
    :goto_0
    return-object v1

    .line 696
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 699
    goto :goto_0

    .line 702
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 705
    goto :goto_0

    .line 708
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 710
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 711
    goto/16 :goto_0

    .line 714
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->companyIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 715
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 714
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 717
    goto/16 :goto_0

    .line 720
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 721
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 720
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v0

    .line 723
    goto/16 :goto_0

    .line 726
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 728
    goto/16 :goto_0

    .line 730
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v0

    .line 732
    goto/16 :goto_0

    .line 734
    :cond_7
    const-string v1, ""

    goto/16 :goto_0
.end method

.method private static getCompanyPreItem(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyItemBean;
    .locals 17
    .parameter "phone"

    .prologue
    .line 761
    new-instance v8, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v8}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    .line 763
    .local v8, itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v9, v8

    .line 845
    .end local v8           #itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .local v9, itemBean:Ljava/lang/Object;
    :goto_0
    return-object v9

    .line 768
    .end local v9           #itemBean:Ljava/lang/Object;
    .restart local v8       #itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_0
    const/4 v6, 0x0

    .line 769
    .local v6, fr:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 770
    .local v2, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 771
    .local v1, bCompanyExist:Z
    const-string v10, ""

    .line 775
    .local v10, oneCompanyFile:Ljava/lang/String;
    :try_start_0
    sget-object v10, Lcom/isw/android/corp/util/LocalConfig;->preDataFile:Ljava/lang/String;

    .line 777
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Search company data: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 780
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 784
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v6           #fr:Ljava/io/FileReader;
    .local v7, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 786
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 788
    .local v11, s:Ljava/lang/String;
    :goto_1
    if-nez v11, :cond_4

    .line 800
    :goto_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 801
    const/4 v6, 0x0

    .line 802
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 803
    const/4 v2, 0x0

    .line 811
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v11           #s:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    :cond_1
    if-eqz v6, :cond_2

    .line 812
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 814
    :cond_2
    if-eqz v2, :cond_3

    .line 815
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 823
    .end local v5           #file:Ljava/io/File;
    :cond_3
    :goto_3
    if-nez v1, :cond_9

    .line 824
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "The company item of phone("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 825
    const-string v15, ") is not predata!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 824
    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const/4 v8, 0x0

    :goto_4
    move-object v9, v8

    .line 845
    .restart local v9       #itemBean:Ljava/lang/Object;
    goto :goto_0

    .line 789
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v9           #itemBean:Ljava/lang/Object;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v11       #s:Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 790
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 791
    .local v12, split:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v8, v12}, Lcom/isw/android/corp/message/MiniCompanyData;->readCompanyItem(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;[Ljava/lang/String;)V

    .line 793
    const/4 v1, 0x1

    .line 794
    goto :goto_2

    .line 797
    .end local v12           #split:[Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v11

    goto :goto_1

    .line 806
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #s:Ljava/lang/String;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v4

    .line 807
    .local v4, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 808
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 811
    if-eqz v6, :cond_6

    .line 812
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 814
    :cond_6
    if-eqz v2, :cond_3

    .line 815
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 817
    :catch_1
    move-exception v4

    .line 818
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 809
    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    .line 811
    :goto_6
    if-eqz v6, :cond_7

    .line 812
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 814
    :cond_7
    if-eqz v2, :cond_8

    .line 815
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 821
    :cond_8
    :goto_7
    throw v13

    .line 817
    :catch_2
    move-exception v4

    .line 818
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const-string v14, "MiniCompanyData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 817
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #file:Ljava/io/File;
    :catch_3
    move-exception v4

    .line 818
    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 828
    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #file:Ljava/io/File;
    :cond_9
    iget-object v13, v8, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    iput-object v13, v8, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    .line 829
    iget-object v13, v8, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-static {v13}, Lcom/isw/android/corp/message/MiniCompanyData;->getPreCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    goto/16 :goto_4

    .line 809
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v13

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v11       #s:Ljava/lang/String;
    :catchall_3
    move-exception v13

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto :goto_6

    .line 806
    .end local v6           #fr:Ljava/io/FileReader;
    .end local v11           #s:Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    goto/16 :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v11       #s:Ljava/lang/String;
    :catch_6
    move-exception v4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method

.method public static getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;
    .locals 14
    .parameter "phone"
    .parameter "bRefreshCache"

    .prologue
    .line 990
    new-instance v4, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v4}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    .line 992
    .local v4, itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v5, v4

    .line 1135
    .end local v4           #itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .local v5, itemBean:Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 997
    .end local v5           #itemBean:Ljava/lang/Object;
    .restart local v4       #itemBean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_0
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 999
    const-string v10, "MiniCompanyData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getCompanyRawItem for phoneNumber: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "112"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    move-object v5, v4

    .line 1002
    .restart local v5       #itemBean:Ljava/lang/Object;
    goto :goto_0

    .line 1005
    .end local v5           #itemBean:Ljava/lang/Object;
    :cond_2
    sget-object v10, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v10, v10, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1006
    sget-object v10, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v10, v10, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1007
    .local v3, item:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, v3

    if-lt v2, v10, :cond_c

    .line 1015
    .end local v2           #i:I
    .end local v3           #item:[Ljava/lang/String;
    :cond_3
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".d"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1016
    .local v7, itemName:Ljava/lang/String;
    const-string v10, "MiniCompanyData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "itemName:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v6, 0x0

    .line 1018
    .local v6, itemFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    .end local v6           #itemFile:Ljava/io/File;
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1019
    .restart local v6       #itemFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1020
    invoke-static {v7}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, content:Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1022
    .local v9, sub:[Ljava/lang/String;
    const-string v10, "MiniCompanyData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "cache content: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1023
    array-length v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1022
    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    array-length v10, v9

    const/4 v11, 0x4

    if-lt v10, v11, :cond_6

    .line 1026
    iput-object p0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 1027
    const/4 v10, 0x0

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 1028
    const/4 v10, 0x1

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 1029
    const/4 v10, 0x2

    aget-object v10, v9, v10

    invoke-static {v10}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 1031
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-static {v10}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1032
    const/4 v10, 0x2

    aget-object v10, v9, v10

    invoke-static {v10}, Lcom/isw/android/corp/message/MiniCompanyData;->getPreCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 1035
    :cond_4
    const/4 v10, 0x3

    aget-object v10, v9, v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 1036
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    const/16 v11, 0x3b

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_5

    .line 1037
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    const/4 v11, 0x0

    .line 1038
    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 1037
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 1041
    :cond_5
    array-length v10, v9

    const/4 v11, 0x5

    if-lt v10, v11, :cond_6

    .line 1042
    const/4 v10, 0x4

    aget-object v10, v9, v10

    const-string v11, ";"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 1046
    :cond_6
    if-eqz p1, :cond_7

    .line 1047
    sget-boolean v10, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    if-nez v10, :cond_7

    .line 1048
    move-object v1, p0

    .line 1049
    .local v1, fphone:Ljava/lang/String;
    new-instance v10, Lcom/isw/android/corp/message/MiniCompanyData$2;

    invoke-direct {v10, v1, v7}, Lcom/isw/android/corp/message/MiniCompanyData$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v10}, Lcom/isw/android/corp/message/MiniCompanyData$2;->start()V

    .line 1102
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #fphone:Ljava/lang/String;
    .end local v9           #sub:[Ljava/lang/String;
    :cond_7
    :goto_3
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    .line 1103
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-static {v10}, Lcom/isw/android/corp/message/MiniCompanyData;->dotidTopath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 1108
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v10}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1109
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    .line 1112
    :cond_8
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    invoke-static {v10}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1113
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1114
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    .line 1117
    :cond_9
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    const-string v11, "p"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1118
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    .line 1121
    :cond_a
    const/4 v10, 0x1

    iput-boolean v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    .line 1122
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1123
    const/4 v10, 0x0

    iput-boolean v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    .line 1128
    :cond_b
    const-string v10, "MiniCompanyData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[getCompanyRawItem]phone: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1129
    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", info: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1130
    const-string v12, ", iconid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dotservice: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1131
    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dotrawid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotrawid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1132
    const-string v12, ", bShowCom: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bPushCom: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1133
    iget-boolean v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bDotCom: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1128
    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 1135
    .restart local v5       #itemBean:Ljava/lang/Object;
    goto/16 :goto_0

    .line 1008
    .end local v5           #itemBean:Ljava/lang/Object;
    .end local v6           #itemFile:Ljava/io/File;
    .end local v7           #itemName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #item:[Ljava/lang/String;
    :cond_c
    aget-object v10, v3, v2

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1009
    aget-object v10, v3, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1010
    goto/16 :goto_2

    .line 1007
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1081
    .end local v2           #i:I
    .end local v3           #item:[Ljava/lang/String;
    .restart local v6       #itemFile:Ljava/io/File;
    .restart local v7       #itemName:Ljava/lang/String;
    :cond_e
    if-eqz p1, :cond_7

    .line 1082
    sget-boolean v10, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    if-nez v10, :cond_7

    .line 1083
    const/4 v10, 0x1

    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    .line 1085
    invoke-static {p0, v4}, Lcom/isw/android/corp/message/MiniCompanyData;->parseCompanyData(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v4

    .line 1087
    iget-object v10, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v10}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1089
    const-string v10, "MiniCompanyData"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Generate new item: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1092
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1093
    iget-object v11, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1091
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1094
    .local v8, newContent:Ljava/lang/String;
    invoke-static {v8, v7}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .end local v8           #newContent:Ljava/lang/String;
    :cond_f
    const/4 v10, 0x0

    sput-boolean v10, Lcom/isw/android/corp/message/MiniCompanyData;->bRefreshWorking:Z

    goto/16 :goto_3
.end method

.method public static declared-synchronized getConnection()Z
    .locals 2

    .prologue
    .line 94
    const-class v0, Lcom/isw/android/corp/message/MiniCompanyData;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getNameFromRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "record"

    .prologue
    .line 1360
    const-string v0, ""

    .line 1361
    .local v0, name:Ljava/lang/String;
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1362
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1363
    .local v1, split:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1364
    const/4 v2, 0x1

    aget-object v0, v1, v2

    .line 1367
    .end local v1           #split:[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getPreCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iconid"

    .prologue
    .line 664
    const-string v0, ""

    .line 665
    .local v0, filePath:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 666
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 667
    const-string v1, "MiniCompanyData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pre icon: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 683
    :goto_0
    return-object v1

    .line 672
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 673
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 675
    goto :goto_0

    .line 678
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/isw/android/corp/util/LocalConfig;->preDataDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 679
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 681
    goto :goto_0

    .line 683
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method private static localCompanyDataExist()Z
    .locals 6

    .prologue
    .line 739
    const/4 v0, 0x1

    .line 740
    .local v0, bExist:Z
    const-string v3, ""

    .line 741
    .local v3, oneCompanyFile:Ljava/lang/String;
    const/4 v1, 0x0

    .line 742
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    .line 754
    :goto_1
    return v0

    .line 743
    :cond_0
    sget-object v4, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 744
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 745
    sget-object v5, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 744
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 748
    const/4 v0, 0x0

    .line 749
    goto :goto_1

    .line 742
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static mergeDiffData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "diffFile"
    .parameter "newTs"
    .parameter "localDataFileList"

    .prologue
    .line 1210
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "[mergeDiffData]diffFile: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "[mergeDiffData]newTs: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "[mergeDiffData]localDataFileList: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v12, 0x0

    .line 1219
    .local v12, fr:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 1220
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v10, 0x0

    .line 1223
    .local v10, file:Ljava/io/File;
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".dat"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1226
    .local v15, newDataFile:Ljava/lang/String;
    const-string v6, ""

    .line 1227
    .local v6, currentRecord:Ljava/lang/String;
    const-string v5, ""

    .line 1228
    .local v5, currentName:Ljava/lang/String;
    const-string v18, ""

    .line 1229
    .local v18, nextRecord:Ljava/lang/String;
    const-string v17, ""

    .line 1231
    .local v17, nextName:Ljava/lang/String;
    const-string v23, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 1232
    .local v22, split:[Ljava/lang/String;
    const-string v19, ""

    .line 1235
    .local v19, oldDataFile:Ljava/lang/String;
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 1236
    .local v8, diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    .end local v10           #file:Ljava/io/File;
    .local v11, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1238
    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1239
    .end local v12           #fr:Ljava/io/FileReader;
    .local v13, fr:Ljava/io/FileReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1240
    .end local v3           #br:Ljava/io/BufferedReader;
    .local v4, br:Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .line 1241
    .local v21, s:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1242
    .local v7, diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    const/16 v20, 0x0

    .line 1243
    .local v20, p:[Ljava/lang/String;
    :goto_0
    if-nez v21, :cond_4

    .line 1265
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 1266
    const/4 v12, 0x0

    .line 1267
    .end local v13           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 1268
    const/4 v3, 0x0

    .line 1272
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v7           #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .end local v20           #p:[Ljava/lang/String;
    .end local v21           #s:Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    :cond_0
    const/4 v2, 0x0

    .line 1273
    .local v2, bTsExist:Z
    const/4 v14, 0x0

    .local v14, i:I
    move-object v4, v3

    .local v4, br:Ljava/lang/Object;
    move-object v13, v12

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v12           #fr:Ljava/io/FileReader;
    .local v13, fr:Ljava/lang/Object;
    :goto_1
    :try_start_5
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v14, v0, :cond_8

    .line 1330
    const-string v16, ""

    .line 1331
    .local v16, newRecordList:Ljava/lang/String;
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v14, v0, :cond_d

    .line 1338
    invoke-static/range {v16 .. v16}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 1339
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "[mergeDiffData] Add newRecordList: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1340
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1339
    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 1347
    :cond_1
    if-eqz v13, :cond_2

    .line 1348
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileReader;->close()V

    .line 1350
    :cond_2
    if-eqz v4, :cond_11

    .line 1351
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .line 1357
    .end local v2           #bTsExist:Z
    .end local v4           #br:Ljava/lang/Object;
    .end local v5           #currentName:Ljava/lang/String;
    .end local v6           #currentRecord:Ljava/lang/String;
    .end local v8           #diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    .end local v13           #fr:Ljava/lang/Object;
    .end local v14           #i:I
    .end local v15           #newDataFile:Ljava/lang/String;
    .end local v16           #newRecordList:Ljava/lang/String;
    .end local v17           #nextName:Ljava/lang/String;
    .end local v18           #nextRecord:Ljava/lang/String;
    .end local v19           #oldDataFile:Ljava/lang/String;
    .end local v22           #split:[Ljava/lang/String;
    .restart local v12       #fr:Ljava/io/FileReader;
    :cond_3
    :goto_3
    return-void

    .line 1245
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .local v4, br:Ljava/io/BufferedReader;
    .restart local v5       #currentName:Ljava/lang/String;
    .restart local v6       #currentRecord:Ljava/lang/String;
    .restart local v7       #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .restart local v8       #diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    .restart local v11       #file:Ljava/io/File;
    .local v13, fr:Ljava/io/FileReader;
    .restart local v15       #newDataFile:Ljava/lang/String;
    .restart local v17       #nextName:Ljava/lang/String;
    .restart local v18       #nextRecord:Ljava/lang/String;
    .restart local v19       #oldDataFile:Ljava/lang/String;
    .restart local v20       #p:[Ljava/lang/String;
    .restart local v21       #s:Ljava/lang/String;
    .restart local v22       #split:[Ljava/lang/String;
    :cond_4
    :try_start_7
    const-string v23, ","

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1246
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 1247
    new-instance v7, Lcom/isw/android/corp/bean/CompanyDiffBean;

    .end local v7           #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    invoke-direct {v7}, Lcom/isw/android/corp/bean/CompanyDiffBean;-><init>()V

    .line 1248
    .restart local v7       #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    const/16 v23, 0x0

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->name:Ljava/lang/String;

    .line 1249
    const/16 v23, 0x1

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->sAdd:Ljava/lang/String;

    .line 1250
    const/16 v23, 0x2

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->sDel:Ljava/lang/String;

    .line 1251
    const/16 v23, 0x3

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->info:Ljava/lang/String;

    .line 1252
    const/16 v23, 0x4

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    .line 1253
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_5

    .line 1254
    const/16 v23, 0x5

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    .line 1257
    :cond_5
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 1258
    const/16 v23, 0x6

    aget-object v23, v20, v23

    move-object/from16 v0, v23

    iput-object v0, v7, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    .line 1261
    :cond_6
    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1263
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 1274
    .end local v7           #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .end local v20           #p:[Ljava/lang/String;
    .end local v21           #s:Ljava/lang/String;
    .restart local v2       #bTsExist:Z
    .local v4, br:Ljava/lang/Object;
    .local v13, fr:Ljava/lang/Object;
    .restart local v14       #i:I
    :cond_8
    aget-object v23, v22, v14

    invoke-static/range {v23 .. v23}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 1275
    new-instance v23, Ljava/lang/StringBuilder;

    sget-object v24, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    aget-object v24, v22, v14

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1276
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "oldDataFile: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 1279
    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    :try_start_8
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 1281
    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 1282
    .restart local v12       #fr:Ljava/io/FileReader;
    :try_start_9
    new-instance v3, Ljava/io/BufferedReader;

    .end local v13           #fr:Ljava/lang/Object;
    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1284
    .restart local v3       #br:Ljava/io/BufferedReader;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4           #br:Ljava/lang/Object;
    move-result-object v6

    .line 1286
    if-nez v2, :cond_9

    .line 1287
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v15}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v2, 0x1

    .line 1291
    :cond_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 1293
    :goto_4
    if-nez v6, :cond_a

    .line 1321
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 1322
    const/4 v12, 0x0

    .line 1323
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 1324
    const/4 v3, 0x0

    .line 1273
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v12           #fr:Ljava/io/FileReader;
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object v11, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v11       #file:Ljava/io/File;
    move-object v4, v3

    .restart local v4       #br:Ljava/lang/Object;
    move-object v13, v12

    .restart local v13       #fr:Ljava/lang/Object;
    goto/16 :goto_1

    .line 1294
    .end local v4           #br:Ljava/lang/Object;
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fr:Ljava/lang/Object;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fr:Ljava/io/FileReader;
    :cond_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .line 1295
    invoke-static {v6}, Lcom/isw/android/corp/message/MiniCompanyData;->getNameFromRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1297
    if-eqz v18, :cond_c

    .line 1300
    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/message/MiniCompanyData;->getNameFromRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1301
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1303
    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/isw/android/corp/message/MiniCompanyData;->mergeOldSameNameRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1305
    goto :goto_4

    .line 1307
    :cond_b
    invoke-static {v6, v5, v8, v15}, Lcom/isw/android/corp/message/MiniCompanyData;->mergeNewReord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V

    .line 1310
    move-object/from16 v6, v18

    .line 1313
    goto :goto_4

    .line 1315
    :cond_c
    invoke-static {v6, v5, v8, v15}, Lcom/isw/android/corp/message/MiniCompanyData;->mergeNewReord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1317
    move-object/from16 v6, v18

    goto :goto_4

    .line 1332
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #fr:Ljava/lang/Object;
    .restart local v16       #newRecordList:Ljava/lang/String;
    :cond_d
    :try_start_b
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->sAdd:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1333
    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->info:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1334
    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1335
    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 1336
    invoke-virtual {v8, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/isw/android/corp/bean/CompanyDiffBean;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 1332
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v16

    .line 1331
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1343
    .end local v2           #bTsExist:Z
    .end local v4           #br:Ljava/lang/Object;
    .end local v5           #currentName:Ljava/lang/String;
    .end local v6           #currentRecord:Ljava/lang/String;
    .end local v8           #diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    .end local v11           #file:Ljava/io/File;
    .end local v13           #fr:Ljava/lang/Object;
    .end local v14           #i:I
    .end local v15           #newDataFile:Ljava/lang/String;
    .end local v16           #newRecordList:Ljava/lang/String;
    .end local v17           #nextName:Ljava/lang/String;
    .end local v18           #nextRecord:Ljava/lang/String;
    .end local v19           #oldDataFile:Ljava/lang/String;
    .end local v22           #split:[Ljava/lang/String;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v10       #file:Ljava/io/File;
    .restart local v12       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v9

    .line 1344
    .local v9, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_c
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ex: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1347
    if-eqz v12, :cond_e

    .line 1348
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 1350
    :cond_e
    if-eqz v3, :cond_3

    .line 1351
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_3

    .line 1353
    :catch_1
    move-exception v9

    .line 1354
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ex: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1345
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v23

    .line 1347
    :goto_7
    if-eqz v12, :cond_f

    .line 1348
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V

    .line 1350
    :cond_f
    if-eqz v3, :cond_10

    .line 1351
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 1356
    :cond_10
    :goto_8
    throw v23

    .line 1353
    :catch_2
    move-exception v9

    .line 1354
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v24, "MiniCompanyData"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "ex: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1353
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v9           #ex:Ljava/lang/Exception;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v2       #bTsExist:Z
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v5       #currentName:Ljava/lang/String;
    .restart local v6       #currentRecord:Ljava/lang/String;
    .restart local v8       #diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #fr:Ljava/lang/Object;
    .restart local v14       #i:I
    .restart local v15       #newDataFile:Ljava/lang/String;
    .restart local v16       #newRecordList:Ljava/lang/String;
    .restart local v17       #nextName:Ljava/lang/String;
    .restart local v18       #nextRecord:Ljava/lang/String;
    .restart local v19       #oldDataFile:Ljava/lang/String;
    .restart local v22       #split:[Ljava/lang/String;
    :catch_3
    move-exception v9

    .line 1354
    .restart local v9       #ex:Ljava/lang/Exception;
    const-string v23, "MiniCompanyData"

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "ex: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .end local v9           #ex:Ljava/lang/Exception;
    :cond_11
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .restart local v12       #fr:Ljava/io/FileReader;
    goto/16 :goto_3

    .line 1345
    .end local v2           #bTsExist:Z
    .end local v4           #br:Ljava/lang/Object;
    .end local v10           #file:Ljava/io/File;
    .end local v13           #fr:Ljava/lang/Object;
    .end local v14           #i:I
    .end local v16           #newRecordList:Ljava/lang/String;
    .restart local v11       #file:Ljava/io/File;
    :catchall_1
    move-exception v23

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto :goto_7

    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #file:Ljava/io/File;
    .local v13, fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v23

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v12, v13

    .end local v13           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #file:Ljava/io/File;
    :catchall_3
    move-exception v23

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .restart local v12       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .local v4, br:Ljava/io/BufferedReader;
    .restart local v7       #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .restart local v11       #file:Ljava/io/File;
    .restart local v20       #p:[Ljava/lang/String;
    .restart local v21       #s:Ljava/lang/String;
    :catchall_4
    move-exception v23

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .end local v12           #fr:Ljava/io/FileReader;
    .end local v20           #p:[Ljava/lang/String;
    .end local v21           #s:Ljava/lang/String;
    .restart local v2       #bTsExist:Z
    .local v4, br:Ljava/lang/Object;
    .local v13, fr:Ljava/lang/Object;
    .restart local v14       #i:I
    :catchall_5
    move-exception v23

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .restart local v12       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v13           #fr:Ljava/lang/Object;
    :catchall_6
    move-exception v23

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 1343
    .end local v2           #bTsExist:Z
    .end local v4           #br:Ljava/lang/Object;
    .end local v10           #file:Ljava/io/File;
    .end local v14           #i:I
    .restart local v11       #file:Ljava/io/File;
    :catch_4
    move-exception v9

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    goto/16 :goto_6

    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #file:Ljava/io/File;
    .local v13, fr:Ljava/io/FileReader;
    :catch_5
    move-exception v9

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v12, v13

    .end local v13           #fr:Ljava/io/FileReader;
    .restart local v12       #fr:Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v11       #file:Ljava/io/File;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .restart local v12       #fr:Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v10           #file:Ljava/io/File;
    .local v4, br:Ljava/io/BufferedReader;
    .restart local v7       #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .restart local v11       #file:Ljava/io/File;
    .restart local v20       #p:[Ljava/lang/String;
    .restart local v21       #s:Ljava/lang/String;
    :catch_7
    move-exception v9

    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/io/BufferedReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #diffBean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    .end local v12           #fr:Ljava/io/FileReader;
    .end local v20           #p:[Ljava/lang/String;
    .end local v21           #s:Ljava/lang/String;
    .restart local v2       #bTsExist:Z
    .local v4, br:Ljava/lang/Object;
    .local v13, fr:Ljava/lang/Object;
    .restart local v14       #i:I
    :catch_8
    move-exception v9

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v12, v13

    .restart local v12       #fr:Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v13           #fr:Ljava/lang/Object;
    :catch_9
    move-exception v9

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v12           #fr:Ljava/io/FileReader;
    .restart local v13       #fr:Ljava/lang/Object;
    :cond_12
    move-object v3, v4

    .end local v4           #br:Ljava/lang/Object;
    .local v3, br:Ljava/lang/Object;
    move-object v12, v13

    .end local v13           #fr:Ljava/lang/Object;
    .local v12, fr:Ljava/lang/Object;
    goto/16 :goto_5

    .end local v3           #br:Ljava/lang/Object;
    .end local v10           #file:Ljava/io/File;
    .end local v12           #fr:Ljava/lang/Object;
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v11       #file:Ljava/io/File;
    .restart local v13       #fr:Ljava/lang/Object;
    :cond_13
    move-object v10, v11

    .end local v11           #file:Ljava/io/File;
    .restart local v10       #file:Ljava/io/File;
    move-object v3, v4

    .end local v4           #br:Ljava/lang/Object;
    .restart local v3       #br:Ljava/lang/Object;
    move-object v12, v13

    .end local v13           #fr:Ljava/lang/Object;
    .restart local v12       #fr:Ljava/lang/Object;
    goto/16 :goto_5
.end method

.method private static mergeNewReord(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 15
    .parameter "currentRecord"
    .parameter "currentName"
    .parameter
    .parameter "newDataFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Lcom/isw/android/corp/bean/CompanyDiffBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1395
    .local p2, diffVector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyDiffBean;>;"
    const/4 v1, 0x0

    .line 1396
    .local v1, bean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v12

    if-lt v9, v12, :cond_a

    .line 1407
    :goto_1
    if-eqz v1, :cond_9

    .line 1409
    const-string v12, ","

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1411
    .local v6, currentSplit:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v5, v6, v12

    .line 1412
    .local v5, currentPhone:Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v4, v6, v12

    .line 1413
    .local v4, currentInfo:Ljava/lang/String;
    const/4 v12, 0x3

    aget-object v3, v6, v12

    .line 1415
    .local v3, currentIcon:Ljava/lang/String;
    const-string v12, ";"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1417
    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1420
    :cond_0
    const-string v7, ""

    .line 1421
    .local v7, currentVip:Ljava/lang/String;
    array-length v12, v6

    const/4 v13, 0x5

    if-lt v12, v13, :cond_c

    .line 1422
    const/4 v12, 0x4

    aget-object v7, v6, v12

    .line 1423
    const-string v12, ";"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1424
    const/4 v12, 0x0

    .line 1425
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1424
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1431
    :cond_1
    :goto_2
    const-string v2, ""

    .line 1432
    .local v2, currentDotservice:Ljava/lang/String;
    array-length v12, v6

    const/4 v13, 0x5

    if-lt v12, v13, :cond_d

    .line 1433
    const/4 v12, 0x5

    aget-object v2, v6, v12

    .line 1434
    const-string v12, ";"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1435
    const/4 v12, 0x0

    .line 1436
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1435
    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1442
    :cond_2
    :goto_3
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->info:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1443
    iget-object v4, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->info:Ljava/lang/String;

    .line 1446
    :cond_3
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, ";"

    iget-object v13, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1447
    iget-object v3, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->icon:Ljava/lang/String;

    .line 1451
    :cond_4
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string v12, ";"

    iget-object v13, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1452
    iget-object v7, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->vip:Ljava/lang/String;

    .line 1453
    const-string v12, ";"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1454
    const/4 v12, 0x0

    .line 1455
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1454
    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1459
    :cond_5
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1460
    const-string v12, ";"

    iget-object v13, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1461
    iget-object v2, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->dotservice:Ljava/lang/String;

    .line 1462
    const-string v12, ";"

    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1463
    const/4 v12, 0x0

    .line 1464
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 1463
    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1468
    :cond_6
    move-object v10, v5

    .line 1469
    .local v10, newPhone:Ljava/lang/String;
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->sAdd:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 1470
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->sAdd:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1473
    :cond_7
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->sDel:Ljava/lang/String;

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 1474
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->sDel:Ljava/lang/String;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1475
    .local v8, delList:[Ljava/lang/String;
    const/4 v9, 0x0

    :goto_4
    array-length v12, v8

    if-lt v9, v12, :cond_e

    .line 1482
    .end local v8           #delList:[Ljava/lang/String;
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1483
    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1484
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 1482
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1485
    .local v11, newRecord:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {v11, v0}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    .end local v2           #currentDotservice:Ljava/lang/String;
    .end local v3           #currentIcon:Ljava/lang/String;
    .end local v4           #currentInfo:Ljava/lang/String;
    .end local v5           #currentPhone:Ljava/lang/String;
    .end local v6           #currentSplit:[Ljava/lang/String;
    .end local v7           #currentVip:Ljava/lang/String;
    .end local v10           #newPhone:Ljava/lang/String;
    .end local v11           #newRecord:Ljava/lang/String;
    :cond_9
    return-void

    .line 1397
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    check-cast v1, Lcom/isw/android/corp/bean/CompanyDiffBean;

    .line 1398
    .restart local v1       #bean:Lcom/isw/android/corp/bean/CompanyDiffBean;
    iget-object v12, v1, Lcom/isw/android/corp/bean/CompanyDiffBean;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1401
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1404
    :cond_b
    const/4 v1, 0x0

    .line 1396
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1428
    .restart local v3       #currentIcon:Ljava/lang/String;
    .restart local v4       #currentInfo:Ljava/lang/String;
    .restart local v5       #currentPhone:Ljava/lang/String;
    .restart local v6       #currentSplit:[Ljava/lang/String;
    .restart local v7       #currentVip:Ljava/lang/String;
    :cond_c
    const-string v7, "1"

    goto/16 :goto_2

    .line 1439
    .restart local v2       #currentDotservice:Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_3

    .line 1476
    .restart local v8       #delList:[Ljava/lang/String;
    .restart local v10       #newPhone:Ljava/lang/String;
    :cond_e
    aget-object v12, v8, v9

    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 1477
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v13, v8, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1475
    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4
.end method

.method private static mergeOldSameNameRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "currentRecord"
    .parameter "nextRecord"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1372
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, currentSplit:[Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, nextSplit:[Ljava/lang/String;
    const-string v1, ""

    .line 1376
    .local v1, merge:Ljava/lang/String;
    array-length v3, v0

    if-lt v3, v7, :cond_0

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    aget-object v4, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1378
    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1379
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1380
    array-length v3, v0

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1384
    :cond_0
    return-object v1
.end method

.method private static parseCompanyData(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;)Lcom/isw/android/corp/bean/CompanyItemBean;
    .locals 17
    .parameter "phone"
    .parameter "itemBean"

    .prologue
    .line 853
    const-string v13, "MiniCompanyData"

    const-string v14, "parseCompanyData"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v7, 0x0

    .line 855
    .local v7, fr:Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 856
    .local v3, br:Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 857
    .local v2, bCompanyExist:Z
    const-string v10, ""

    .line 861
    .local v10, oneCompanyFile:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    move-object v4, v3

    .local v4, br:Ljava/lang/Object;
    move-object v8, v7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/lang/Object;
    :goto_0
    :try_start_0
    sget-object v13, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    array-length v13, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v9, v13, :cond_3

    move-object v3, v4

    .end local v4           #br:Ljava/lang/Object;
    .local v3, br:Ljava/lang/Object;
    move-object v7, v8

    .line 909
    .end local v3           #br:Ljava/lang/Object;
    .end local v8           #fr:Ljava/lang/Object;
    :cond_0
    if-eqz v7, :cond_1

    .line 910
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 912
    :cond_1
    if-eqz v3, :cond_2

    .line 913
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 920
    :cond_2
    :goto_1
    if-nez v2, :cond_c

    .line 923
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyPreItem(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object p1

    .line 924
    if-nez p1, :cond_b

    .line 925
    new-instance p1, Lcom/isw/android/corp/bean/CompanyItemBean;

    .end local p1
    invoke-direct/range {p1 .. p1}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V

    .line 926
    .restart local p1
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Fail get info from predata of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    :goto_2
    return-object p1

    .line 862
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v8       #fr:Ljava/lang/Object;
    :cond_3
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    sget-object v14, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 863
    sget-object v14, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v14, v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 862
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 865
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Begin search company data for "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_d

    sget-object v13, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v13, v13, v9

    const-string v14, "dat"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 872
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 873
    .restart local v7       #fr:Ljava/io/FileReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    .end local v8           #fr:Ljava/lang/Object;
    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 874
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4           #br:Ljava/lang/Object;
    move-result-object v11

    .line 876
    .local v11, s:Ljava/lang/String;
    :goto_3
    if-nez v11, :cond_4

    .line 894
    :goto_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 895
    const/4 v7, 0x0

    .line 896
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 897
    const/4 v3, 0x0

    .line 900
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #s:Ljava/lang/String;
    :goto_5
    if-nez v2, :cond_0

    .line 861
    add-int/lit8 v9, v9, 0x1

    move-object v4, v3

    .restart local v4       #br:Ljava/lang/Object;
    move-object v8, v7

    .restart local v8       #fr:Ljava/lang/Object;
    goto/16 :goto_0

    .line 878
    .end local v4           #br:Ljava/lang/Object;
    .end local v8           #fr:Ljava/lang/Object;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    .restart local v11       #s:Ljava/lang/String;
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 879
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 880
    .local v12, split:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12}, Lcom/isw/android/corp/message/MiniCompanyData;->readCompanyItem(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;[Ljava/lang/String;)V

    .line 882
    const-string v13, ":i:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 883
    const-string v13, "i"

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 887
    :cond_5
    :goto_6
    const/4 v2, 0x1

    .line 888
    goto :goto_4

    .line 884
    :cond_6
    const-string v13, ":o:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 885
    const-string v13, "o"

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 904
    .end local v11           #s:Ljava/lang/String;
    .end local v12           #split:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 905
    .end local v6           #file:Ljava/io/File;
    .local v5, ex:Ljava/lang/Exception;
    :goto_7
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 906
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 909
    if-eqz v7, :cond_7

    .line 910
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 912
    :cond_7
    if-eqz v3, :cond_2

    .line 913
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 915
    :catch_1
    move-exception v5

    .line 916
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 891
    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v6       #file:Ljava/io/File;
    .restart local v11       #s:Ljava/lang/String;
    :cond_8
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    goto/16 :goto_3

    .line 907
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v6           #file:Ljava/io/File;
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v11           #s:Ljava/lang/String;
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v8       #fr:Ljava/lang/Object;
    :catchall_0
    move-exception v13

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .line 909
    .end local v4           #br:Ljava/lang/Object;
    .end local v8           #fr:Ljava/lang/Object;
    .restart local v7       #fr:Ljava/io/FileReader;
    :goto_8
    if-eqz v7, :cond_9

    .line 910
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 912
    :cond_9
    if-eqz v3, :cond_a

    .line 913
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 919
    :cond_a
    :goto_9
    throw v13

    .line 915
    :catch_2
    move-exception v5

    .line 916
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    const-string v14, "MiniCompanyData"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "ex: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 915
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v7           #fr:Ljava/io/FileReader;
    :catch_3
    move-exception v5

    .line 916
    .restart local v5       #ex:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 917
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 928
    .end local v5           #ex:Ljava/lang/Exception;
    :cond_b
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Finish get info from predata of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 934
    :cond_c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconraw:Ljava/lang/String;

    .line 935
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-static {v13}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 936
    const-string v13, "MiniCompanyData"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Finish get info from companydata of "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 907
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v6       #file:Ljava/io/File;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v13

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_8

    .end local v4           #br:Ljava/lang/Object;
    .end local v6           #file:Ljava/io/File;
    :catchall_2
    move-exception v13

    goto/16 :goto_8

    .line 904
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v4       #br:Ljava/lang/Object;
    .restart local v8       #fr:Ljava/lang/Object;
    :catch_4
    move-exception v5

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    move-object v7, v8

    .restart local v7       #fr:Ljava/io/FileReader;
    goto/16 :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v8           #fr:Ljava/lang/Object;
    .restart local v6       #file:Ljava/io/File;
    :catch_5
    move-exception v5

    move-object v3, v4

    .restart local v3       #br:Ljava/io/BufferedReader;
    goto/16 :goto_7

    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/lang/Object;
    :cond_d
    move-object v3, v4

    .end local v4           #br:Ljava/lang/Object;
    .local v3, br:Ljava/lang/Object;
    move-object v7, v8

    .end local v8           #fr:Ljava/lang/Object;
    .local v7, fr:Ljava/lang/Object;
    goto/16 :goto_5
.end method

.method private static parser(Ljava/lang/String;)Ljava/util/Vector;
    .locals 76
    .parameter "xmlMessage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/isw/android/corp/bean/CompanyConfigBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v70, Ljava/util/Vector;

    invoke-direct/range {v70 .. v70}, Ljava/util/Vector;-><init>()V

    .line 216
    .local v70, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    const-string v68, ""

    .line 217
    .local v68, tsValue:Ljava/lang/String;
    const-string v42, ""

    .line 218
    .local v42, lengthValue:Ljava/lang/String;
    const-string v44, ""

    .line 219
    .local v44, oneUrlValue:Ljava/lang/String;
    const-string v63, ""

    .line 220
    .local v63, showccValue:Ljava/lang/String;
    const-string v61, ""

    .line 221
    .local v61, selfctlValue:Ljava/lang/String;
    const-string v14, ""

    .line 222
    .local v14, ccoverlayValue:Ljava/lang/String;
    const-string v16, ""

    .line 223
    .local v16, chuploadValue:Ljava/lang/String;
    const-string v26, ""

    .line 224
    .local v26, dotmatchValue:Ljava/lang/String;
    const-string v58, ""

    .line 225
    .local v58, pushenableValue:Ljava/lang/String;
    const-string v23, ""

    .line 226
    .local v23, dotEnableValue:Ljava/lang/String;
    const-string v12, ""

    .line 227
    .local v12, ccModeValue:Ljava/lang/String;
    const-string v27, ""

    .line 230
    .local v27, dotmodelValue:Ljava/lang/String;
    const-string v46, ""

    .line 231
    .local v46, partDurationValue:Ljava/lang/String;
    const-string v7, ""

    .line 232
    .local v7, blackuserValue:Ljava/lang/String;
    const-string v72, ""

    .line 233
    .local v72, zoneValue:Ljava/lang/String;
    const-string v48, ""

    .line 234
    .local v48, phonepreValue:Ljava/lang/String;
    const-string v54, ""

    .line 235
    .local v54, pushTextValue:Ljava/lang/String;
    const-string v56, ""

    .line 236
    .local v56, pushUrlValue:Ljava/lang/String;
    const-string v20, ""

    .line 237
    .local v20, displayUrlValue:Ljava/lang/String;
    const-string v4, ""

    .line 244
    .local v4, bchuploadValue:Ljava/lang/String;
    const-string v29, ""

    .line 245
    .local v29, downModeValue:Ljava/lang/String;
    const-string v65, ""

    .line 246
    .local v65, switchDownModePeroidValue:Ljava/lang/String;
    const-string v37, ""

    .line 247
    .local v37, imageCountPerDayValue:Ljava/lang/String;
    const-string v41, ""

    .line 249
    .local v41, lengthPerMonthValue:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    .line 250
    .local v18, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v17, 0x0

    .line 252
    .local v17, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v17

    .line 254
    const/16 v21, 0x0

    .line 255
    .local v21, doc:Lorg/w3c/dom/Document;
    new-instance v73, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v74

    invoke-direct/range {v73 .. v74}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v21

    .line 257
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v59

    .line 259
    .local v59, root:Lorg/w3c/dom/Element;
    const-string v73, "zone"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v71

    .line 260
    .local v71, zone:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v71 .. v71}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_0

    .line 261
    const/16 v73, 0x0

    move-object/from16 v0, v71

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 262
    .local v31, e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 263
    .local v66, t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_0

    .line 264
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v72

    .line 265
    invoke-static/range {v72 .. v72}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_0

    .line 266
    const-string v73, "zone"

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v73, "blackuser"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 272
    .local v6, blackuser:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_1

    .line 273
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 274
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 275
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_1

    .line 276
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 277
    const-string v73, "false"

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_1d

    .line 278
    const-string v73, "blackuser"

    const-string v74, "false"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_1
    :goto_0
    const-string v73, "showcc"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v62

    .line 286
    .local v62, showcc:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v62 .. v62}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_2

    .line 287
    const/16 v73, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 288
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 289
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_2

    .line 290
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v63

    .line 291
    const-string v73, "false"

    move-object/from16 v0, v73

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_1e

    .line 292
    const-string v73, "showcc"

    const-string v74, "false"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_2
    :goto_1
    const-string v73, "selfctl"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v60

    .line 300
    .local v60, selfctl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_3

    .line 301
    const/16 v73, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 302
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 303
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_3

    .line 304
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v61

    .line 305
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "selfctlValue: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v74

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v73, "false"

    move-object/from16 v0, v73

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_1f

    .line 308
    const-string v73, "selfctl"

    const-string v74, "false"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_3
    :goto_2
    const-string v73, "ccoverlay"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 316
    .local v13, ccoverlay:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_4

    .line 317
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 318
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 319
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_4

    .line 320
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 321
    const-string v73, "ccoverlay"

    move-object/from16 v0, v73

    invoke-static {v0, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_4
    const-string v73, "dotmatch"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 326
    .local v25, dotmatch:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_5

    .line 327
    const/16 v73, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 328
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 329
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_5

    .line 330
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v26

    .line 331
    invoke-static/range {v26 .. v26}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_5

    .line 332
    const-string v73, "dotmatch"

    move-object/from16 v0, v73

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_5
    const-string v73, "pushenable"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v57

    .line 338
    .local v57, pushenable:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v57 .. v57}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_6

    .line 339
    const/16 v73, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 340
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 341
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_6

    .line 342
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v58

    .line 343
    invoke-static/range {v58 .. v58}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_6

    .line 344
    const-string v73, "pushenable"

    move-object/from16 v0, v73

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v58

    move-object/from16 v1, v73

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushenable:Ljava/lang/String;

    .line 350
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_6
    const-string v73, "dotEnable"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 351
    .local v22, dotEnable:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_7

    .line 352
    const/16 v73, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 353
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 354
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_7

    .line 355
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    .line 356
    invoke-static/range {v23 .. v23}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_7

    .line 357
    const-string v73, "dotEnable"

    move-object/from16 v0, v73

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v23

    move-object/from16 v1, v73

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 363
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_7
    const-string v73, "chupload"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 364
    .local v15, chupload:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_8

    .line 365
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 366
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 367
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_8

    .line 368
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 369
    const-string v73, "chupload"

    move-object/from16 v0, v73

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_8
    const-string v73, "bchupload"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 379
    .local v3, bchupload:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_9

    .line 380
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 381
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 382
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_9

    .line 383
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 384
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "bchuploadValue: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v73, "bchupload"

    move-object/from16 v0, v73

    invoke-static {v0, v4}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_9
    const-string v73, "dottips"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 390
    .local v28, dottips:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_a

    .line 391
    const/16 v73, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 392
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 393
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_a

    .line 394
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_a

    .line 395
    const-string v73, "dottips"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_a
    const-string v73, "callcenterEnable"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 402
    .local v8, callcenterEnable:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_b

    .line 403
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 404
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 405
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_b

    .line 406
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_b

    .line 407
    const-string v73, "callcenterEnable"

    .line 408
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    .line 407
    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_b
    const-string v73, "callcentertips"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 415
    .local v10, callcentertips:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_c

    .line 416
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 417
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 418
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_c

    .line 419
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_c

    .line 420
    const-string v73, "callcentertips"

    .line 421
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    .line 420
    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_c
    const-string v73, "embedShow"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 427
    .local v33, embedShow:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_d

    .line 428
    const/16 v73, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 429
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 430
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_d

    .line 431
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_d

    .line 432
    const-string v73, "embedShow"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v73, "false"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {v73 .. v74}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_20

    .line 434
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    const/16 v74, 0x0

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    .line 442
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_d
    :goto_3
    const-string v73, "phonepre"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v47

    .line 443
    .local v47, phonepre:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_e

    .line 444
    const/16 v73, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 445
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 446
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_e

    .line 447
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v48

    .line 448
    invoke-static/range {v48 .. v48}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_e

    .line 449
    const-string v73, "phonepre"

    move-object/from16 v0, v73

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v48

    move-object/from16 v1, v73

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    .line 456
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_e
    const-string v73, "mne"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v43

    .line 457
    .local v43, mne:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_f

    .line 458
    const/16 v73, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 459
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 460
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_f

    .line 461
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_f

    .line 462
    const-string v73, "mne"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_f
    const-string v73, "enableLog"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 468
    .local v34, enableLog:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_10

    .line 469
    const/16 v73, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 470
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 471
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_10

    .line 472
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_10

    .line 473
    const-string v73, "enableLog"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v73, "true"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {v73 .. v74}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_21

    .line 475
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    .line 484
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_10
    :goto_4
    const-string v73, "callcenternumber"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 485
    .local v9, callcenternumber:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_11

    .line 486
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v9, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 487
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 488
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_11

    .line 489
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v73

    invoke-static/range {v73 .. v73}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v73

    if-nez v73, :cond_11

    .line 490
    const-string v73, "callcenternumber"

    .line 491
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    .line 490
    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_11
    const-string v73, "pushDuration"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v49

    .line 497
    .local v49, pushDuration:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v49 .. v49}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_12

    .line 498
    const/16 v73, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 499
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 500
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_12

    .line 501
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v50

    .line 502
    .local v50, pushDurationValue:Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_12

    .line 503
    const-string v73, "pushDuration"

    move-object/from16 v0, v73

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v50           #pushDurationValue:Ljava/lang/String;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_12
    const-string v73, "pushPeriod"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v51

    .line 509
    .local v51, pushPeriod:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v51 .. v51}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_13

    .line 510
    const/16 v73, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 511
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 512
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_13

    .line 513
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v52

    .line 514
    .local v52, pushPeriodValue:Ljava/lang/String;
    invoke-static/range {v52 .. v52}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_13

    .line 515
    const-string v73, "pushPeriod"

    move-object/from16 v0, v73

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v52           #pushPeriodValue:Ljava/lang/String;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_13
    const-string v73, "ccMode"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 521
    .local v11, ccMode:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_14

    .line 522
    const/16 v73, 0x0

    move/from16 v0, v73

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 523
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 524
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_14

    .line 525
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 526
    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_14

    .line 527
    const-string v73, "ccMode"

    move-object/from16 v0, v73

    invoke-static {v0, v12}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_14
    const-string v73, "dotModel"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 533
    .local v24, dotModel:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_15

    .line 534
    const/16 v73, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 535
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 536
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_15

    .line 537
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v27

    .line 538
    invoke-static/range {v27 .. v27}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_15

    .line 539
    const-string v73, "dotModel"

    move-object/from16 v0, v73

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_15
    const-string v73, "partDuration"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v45

    .line 545
    .local v45, partDuration:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_16

    .line 546
    const/16 v73, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 547
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 548
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_16

    .line 549
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v46

    .line 550
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "partDurationValue: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v74

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static/range {v46 .. v46}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_16

    .line 554
    const-string v73, "partDuration"

    move-object/from16 v0, v73

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_16
    const-string v73, "downmode"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 560
    .local v30, downmode:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_17

    .line 561
    const/16 v73, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 562
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 563
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_17

    .line 564
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v29

    .line 565
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "downModeValue: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v74

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static/range {v29 .. v29}, Lcom/isw/android/corp/util/WinksTools;->isNumeric(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v73

    if-eqz v73, :cond_17

    .line 568
    :try_start_1
    const-string v73, "downmode"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_17
    :goto_5
    :try_start_2
    const-string v73, "pushText"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v53

    .line 577
    .local v53, pushText:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_18

    .line 578
    const/16 v73, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 579
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 580
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_18

    .line 581
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v54

    .line 585
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_18
    const-string v73, "pushUrl"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v55

    .line 586
    .local v55, pushUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v55 .. v55}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_19

    .line 587
    const/16 v73, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 588
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 589
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_19

    .line 590
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v56

    .line 594
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_19
    const-string v73, "displayUrl"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 595
    .local v19, displayUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_1a

    .line 596
    const/16 v73, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 597
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 598
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_1a

    .line 599
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 603
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_1a
    move-object/from16 v0, v54

    move-object/from16 v1, v56

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/isw/android/corp/telephony/CallUtil;->displayPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v73, "ts"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v67

    .line 606
    .local v67, ts:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v67 .. v67}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_1b

    .line 607
    const/16 v73, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 608
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 609
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_1b

    .line 610
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v68

    .line 614
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_1b
    const-string v73, "length"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 615
    .local v40, length:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    if-lez v73, :cond_1c

    .line 616
    const/16 v73, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 617
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 618
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_1c

    .line 619
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v42

    .line 623
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    :cond_1c
    const-string v73, ","

    move-object/from16 v0, v42

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v64

    .line 624
    .local v64, split:[Ljava/lang/String;
    const/16 v39, 0x0

    .line 625
    .local v39, lenItem:[Ljava/lang/String;
    const-string v73, "url"

    move-object/from16 v0, v59

    move-object/from16 v1, v73

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v69

    .line 626
    .local v69, url:Lorg/w3c/dom/NodeList;
    const/16 v36, 0x0

    .local v36, i:I
    :goto_6
    invoke-interface/range {v69 .. v69}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v73

    move/from16 v0, v36

    move/from16 v1, v73

    if-lt v0, v1, :cond_22

    .line 657
    .end local v3           #bchupload:Lorg/w3c/dom/NodeList;
    .end local v6           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v8           #callcenterEnable:Lorg/w3c/dom/NodeList;
    .end local v9           #callcenternumber:Lorg/w3c/dom/NodeList;
    .end local v10           #callcentertips:Lorg/w3c/dom/NodeList;
    .end local v11           #ccMode:Lorg/w3c/dom/NodeList;
    .end local v13           #ccoverlay:Lorg/w3c/dom/NodeList;
    .end local v15           #chupload:Lorg/w3c/dom/NodeList;
    .end local v17           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v18           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v19           #displayUrl:Lorg/w3c/dom/NodeList;
    .end local v21           #doc:Lorg/w3c/dom/Document;
    .end local v22           #dotEnable:Lorg/w3c/dom/NodeList;
    .end local v24           #dotModel:Lorg/w3c/dom/NodeList;
    .end local v25           #dotmatch:Lorg/w3c/dom/NodeList;
    .end local v28           #dottips:Lorg/w3c/dom/NodeList;
    .end local v30           #downmode:Lorg/w3c/dom/NodeList;
    .end local v33           #embedShow:Lorg/w3c/dom/NodeList;
    .end local v34           #enableLog:Lorg/w3c/dom/NodeList;
    .end local v36           #i:I
    .end local v39           #lenItem:[Ljava/lang/String;
    .end local v40           #length:Lorg/w3c/dom/NodeList;
    .end local v43           #mne:Lorg/w3c/dom/NodeList;
    .end local v45           #partDuration:Lorg/w3c/dom/NodeList;
    .end local v47           #phonepre:Lorg/w3c/dom/NodeList;
    .end local v49           #pushDuration:Lorg/w3c/dom/NodeList;
    .end local v51           #pushPeriod:Lorg/w3c/dom/NodeList;
    .end local v53           #pushText:Lorg/w3c/dom/NodeList;
    .end local v55           #pushUrl:Lorg/w3c/dom/NodeList;
    .end local v57           #pushenable:Lorg/w3c/dom/NodeList;
    .end local v59           #root:Lorg/w3c/dom/Element;
    .end local v60           #selfctl:Lorg/w3c/dom/NodeList;
    .end local v62           #showcc:Lorg/w3c/dom/NodeList;
    .end local v64           #split:[Ljava/lang/String;
    .end local v67           #ts:Lorg/w3c/dom/NodeList;
    .end local v69           #url:Lorg/w3c/dom/NodeList;
    .end local v71           #zone:Lorg/w3c/dom/NodeList;
    :goto_7
    return-object v70

    .line 279
    .restart local v6       #blackuser:Lorg/w3c/dom/NodeList;
    .restart local v17       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v21       #doc:Lorg/w3c/dom/Document;
    .restart local v31       #e:Lorg/w3c/dom/Element;
    .restart local v59       #root:Lorg/w3c/dom/Element;
    .restart local v66       #t:Lorg/w3c/dom/Text;
    .restart local v71       #zone:Lorg/w3c/dom/NodeList;
    :cond_1d
    const-string v73, "true"

    move-object/from16 v0, v73

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_1

    .line 280
    const-string v73, "blackuser"

    const-string v74, "true"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 653
    .end local v6           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v17           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v18           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21           #doc:Lorg/w3c/dom/Document;
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v59           #root:Lorg/w3c/dom/Element;
    .end local v66           #t:Lorg/w3c/dom/Text;
    .end local v71           #zone:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v35

    .line 654
    .local v35, ex:Ljava/lang/Exception;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->printStackTrace()V

    .line 655
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "ex: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 293
    .end local v35           #ex:Ljava/lang/Exception;
    .restart local v6       #blackuser:Lorg/w3c/dom/NodeList;
    .restart local v17       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v18       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v21       #doc:Lorg/w3c/dom/Document;
    .restart local v31       #e:Lorg/w3c/dom/Element;
    .restart local v59       #root:Lorg/w3c/dom/Element;
    .restart local v62       #showcc:Lorg/w3c/dom/NodeList;
    .restart local v66       #t:Lorg/w3c/dom/Text;
    .restart local v71       #zone:Lorg/w3c/dom/NodeList;
    :cond_1e
    :try_start_3
    const-string v73, "true"

    move-object/from16 v0, v73

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_2

    .line 294
    const-string v73, "showcc"

    const-string v74, "true"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    .restart local v60       #selfctl:Lorg/w3c/dom/NodeList;
    :cond_1f
    const-string v73, "true"

    move-object/from16 v0, v73

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_3

    .line 310
    const-string v73, "selfctl"

    const-string v74, "true"

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 436
    .restart local v3       #bchupload:Lorg/w3c/dom/NodeList;
    .restart local v8       #callcenterEnable:Lorg/w3c/dom/NodeList;
    .restart local v10       #callcentertips:Lorg/w3c/dom/NodeList;
    .restart local v13       #ccoverlay:Lorg/w3c/dom/NodeList;
    .restart local v15       #chupload:Lorg/w3c/dom/NodeList;
    .restart local v22       #dotEnable:Lorg/w3c/dom/NodeList;
    .restart local v25       #dotmatch:Lorg/w3c/dom/NodeList;
    .restart local v28       #dottips:Lorg/w3c/dom/NodeList;
    .restart local v33       #embedShow:Lorg/w3c/dom/NodeList;
    .restart local v57       #pushenable:Lorg/w3c/dom/NodeList;
    :cond_20
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    const/16 v74, 0x1

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    goto/16 :goto_3

    .line 476
    .restart local v34       #enableLog:Lorg/w3c/dom/NodeList;
    .restart local v43       #mne:Lorg/w3c/dom/NodeList;
    .restart local v47       #phonepre:Lorg/w3c/dom/NodeList;
    :cond_21
    const-string v73, "false"

    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v74

    invoke-virtual/range {v73 .. v74}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v73

    if-eqz v73, :cond_10

    .line 477
    sget-object v73, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    const/16 v74, 0x0

    move/from16 v0, v74

    move-object/from16 v1, v73

    iput-boolean v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    goto/16 :goto_4

    .line 569
    .restart local v9       #callcenternumber:Lorg/w3c/dom/NodeList;
    .restart local v11       #ccMode:Lorg/w3c/dom/NodeList;
    .restart local v24       #dotModel:Lorg/w3c/dom/NodeList;
    .restart local v30       #downmode:Lorg/w3c/dom/NodeList;
    .restart local v45       #partDuration:Lorg/w3c/dom/NodeList;
    .restart local v49       #pushDuration:Lorg/w3c/dom/NodeList;
    .restart local v51       #pushPeriod:Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v32

    .line 570
    .local v32, e2:Ljava/lang/Exception;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 627
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v32           #e2:Ljava/lang/Exception;
    .end local v66           #t:Lorg/w3c/dom/Text;
    .restart local v19       #displayUrl:Lorg/w3c/dom/NodeList;
    .restart local v36       #i:I
    .restart local v39       #lenItem:[Ljava/lang/String;
    .restart local v40       #length:Lorg/w3c/dom/NodeList;
    .restart local v53       #pushText:Lorg/w3c/dom/NodeList;
    .restart local v55       #pushUrl:Lorg/w3c/dom/NodeList;
    .restart local v64       #split:[Ljava/lang/String;
    .restart local v67       #ts:Lorg/w3c/dom/NodeList;
    .restart local v69       #url:Lorg/w3c/dom/NodeList;
    :cond_22
    move-object/from16 v0, v69

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 628
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v66

    check-cast v66, Lorg/w3c/dom/Text;

    .line 629
    .restart local v66       #t:Lorg/w3c/dom/Text;
    if-eqz v66, :cond_23

    .line 630
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v44

    .line 631
    const/16 v38, 0x0

    .local v38, j:I
    :goto_8
    move-object/from16 v0, v64

    array-length v0, v0

    move/from16 v73, v0

    move/from16 v0, v38

    move/from16 v1, v73

    if-lt v0, v1, :cond_24

    .line 626
    .end local v38           #j:I
    :cond_23
    :goto_9
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_6

    .line 632
    .restart local v38       #j:I
    :cond_24
    aget-object v73, v64, v38

    const-string v74, ":"

    invoke-virtual/range {v73 .. v74}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v39

    .line 633
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v73, v0

    const/16 v74, 0x2

    move/from16 v0, v73

    move/from16 v1, v74

    if-lt v0, v1, :cond_25

    .line 634
    const/16 v73, 0x0

    aget-object v73, v39, v73

    move-object/from16 v0, v44

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v73

    if-eqz v73, :cond_25

    .line 636
    new-instance v5, Lcom/isw/android/corp/bean/CompanyConfigBean;

    invoke-direct {v5}, Lcom/isw/android/corp/bean/CompanyConfigBean;-><init>()V

    .line 637
    .local v5, bean:Lcom/isw/android/corp/bean/CompanyConfigBean;
    move-object/from16 v0, v68

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->ts:Ljava/lang/String;

    .line 638
    move-object/from16 v0, v44

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 641
    const/16 v73, 0x1

    :try_start_4
    aget-object v73, v39, v73

    invoke-static/range {v73 .. v73}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v73

    move-wide/from16 v0, v73

    iput-wide v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->length:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 645
    :goto_a
    :try_start_5
    move-object/from16 v0, v70

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 642
    :catch_2
    move-exception v35

    .line 643
    .restart local v35       #ex:Ljava/lang/Exception;
    const-string v73, "MiniCompanyData"

    new-instance v74, Ljava/lang/StringBuilder;

    const-string v75, "ex: "

    invoke-direct/range {v74 .. v75}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v75

    invoke-virtual/range {v74 .. v75}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v74

    invoke-virtual/range {v74 .. v74}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v74

    invoke-static/range {v73 .. v74}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    .line 631
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyConfigBean;
    .end local v35           #ex:Ljava/lang/Exception;
    :cond_25
    add-int/lit8 v38, v38, 0x1

    goto :goto_8
.end method

.method private static process()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 99
    sget-boolean v8, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    if-eqz v8, :cond_0

    .line 100
    const-string v8, "MiniCompanyData"

    const-string v9, "Warning! bConnecting is true!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .local v5, url:Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    .end local v5           #url:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v8, Lcom/isw/android/corp/message/MiniCompanyData;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 106
    const/4 v8, 0x1

    sput-boolean v8, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v9, v9, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    const-string v9, "/companydata"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 109
    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pkgname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 110
    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 111
    const-string v9, "uid"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5       #url:Ljava/lang/String;
    const-string v8, "zipCompanyData"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "zip="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    :cond_1
    const-string v8, "dataDiff"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "diff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 123
    :cond_2
    const-string v8, "stopRefresh"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "stopRefresh="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    :cond_3
    const-string v8, "diskSpace"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "datafs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readDataStorage()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sdfs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->readSDStorage()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    :cond_4
    sget-object v8, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 139
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyDataExist()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    :cond_5
    const-string v8, "zone"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, zone:Ljava/lang/String;
    invoke-static {v7}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 147
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "zone="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    :cond_6
    const-string v8, "mne"

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, mne:Ljava/lang/String;
    invoke-static {v3}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mne="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    :cond_7
    const-string v8, "cdup"

    const-string v9, "true"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, cdup:Ljava/lang/String;
    invoke-static {v0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 163
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "cdup="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 170
    :cond_8
    const-string v8, "showcc"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "showcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 174
    :cond_9
    const-string v8, "selfctl"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_a

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "selfctl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    :cond_a
    invoke-static {v5}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, response:Ljava/lang/String;
    const-string v8, "MiniCompanyData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "response: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 182
    const-string v8, "MiniCompanyData"

    const-string v9, "Warning! companydata is empty!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v8, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_b

    .line 184
    const-string v8, "MiniCompanyData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reconnectTimes: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v10, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v8, "MiniCompanyData"

    const-string v9, "Try reconnect to get companydata!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget v8, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 187
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    .line 188
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :cond_b
    :goto_1
    sput v13, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 209
    sput-boolean v12, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    goto/16 :goto_0

    .line 192
    :cond_c
    :try_start_1
    invoke-static {v4}, Lcom/isw/android/corp/message/MiniCompanyData;->parser(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v6

    .line 194
    .local v6, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 195
    invoke-static {v6}, Lcom/isw/android/corp/message/MiniCompanyData;->processData(Ljava/util/Vector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 203
    .end local v0           #cdup:Ljava/lang/String;
    .end local v3           #mne:Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v6           #vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    .end local v7           #zone:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 204
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v8, "MiniCompanyData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    sput v13, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 209
    sput-boolean v12, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    goto/16 :goto_0

    .line 197
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #cdup:Ljava/lang/String;
    .restart local v3       #mne:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v6       #vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    .restart local v7       #zone:Ljava/lang/String;
    :cond_d
    :try_start_3
    const-string v8, "lastCompanyDataUpdate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 197
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v8, "MiniCompanyData"

    const-string v9, "Company data online is empty."

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 205
    .end local v0           #cdup:Ljava/lang/String;
    .end local v3           #mne:Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v6           #vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    .end local v7           #zone:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 206
    .local v1, err:Ljava/lang/Error;
    :try_start_4
    const-string v8, "MiniCompanyData"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "err: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    sput v13, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 209
    sput-boolean v12, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    goto/16 :goto_0

    .line 207
    .end local v1           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v8

    .line 208
    sput v13, Lcom/isw/android/corp/message/MiniCompanyData;->reconnectTimes:I

    .line 209
    sput-boolean v12, Lcom/isw/android/corp/message/MiniCompanyData;->bConnecting:Z

    .line 210
    throw v8
.end method

.method private static processData(Ljava/util/Vector;)V
    .locals 22
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/isw/android/corp/bean/CompanyConfigBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1513
    .local p0, vector:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyConfigBean;>;"
    sget-object v18, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1727
    :goto_0
    return-void

    .line 1516
    :cond_0
    const-string v18, "MiniCompanyData"

    const-string v19, "MiniCompanyData processData..."

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/isw/android/corp/bean/CompanyConfigBean;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/isw/android/corp/bean/CompanyConfigBean;->ts:Ljava/lang/String;

    .line 1525
    .local v15, onlineCompanyTs:Ljava/lang/String;
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "localCompanyTs: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "onlineCompanyTs: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/4 v4, 0x1

    .line 1528
    .local v4, bDownloadResult:Z
    const/4 v12, 0x0

    .line 1530
    .local v12, localFile:Ljava/io/File;
    sget-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_13

    .line 1536
    const/4 v3, 0x1

    .line 1537
    .local v3, bCheckFinished:Z
    const-string v13, ""

    .line 1538
    .local v13, newLocalCompanyFile:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v9, v0, :cond_3

    .line 1681
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "bCheckFinished: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1682
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1681
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    if-eqz v3, :cond_12

    .line 1685
    sget-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1686
    const-string v18, "MiniCompanyData"

    .line 1687
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Warning! localCompanyTs is empty! new localCompanyTs: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1688
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1687
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1686
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    sput-object v15, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    .line 1690
    const-string v18, "localCompanyTs"

    sget-object v19, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_1
    const-string v18, "localCompanyFile"

    const-string v19, ""

    .line 1694
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    .line 1695
    if-eqz v18, :cond_2

    .line 1696
    const-string v18, "MiniCompanyData"

    .line 1697
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Warning! localCompanyFile is empty! new localCompanyFile: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1698
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1697
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1696
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v18, "localCompanyFile"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    .line 1707
    :cond_2
    const-string v18, "lastCompanyDataUpdate"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1708
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1707
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :goto_2
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyIcon;->update()V

    goto/16 :goto_0

    .line 1539
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isw/android/corp/bean/CompanyConfigBean;

    .line 1545
    .local v5, bean:Lcom/isw/android/corp/bean/CompanyConfigBean;
    if-nez v9, :cond_5

    .line 1546
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1552
    :goto_3
    const-string v14, ""

    .line 1553
    .local v14, oneLocalCompanyFile:Ljava/lang/String;
    const-string v8, ""

    .line 1554
    .local v8, dataName:Ljava/lang/String;
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1555
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x2f

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    if-ltz v18, :cond_4

    .line 1556
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1557
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x2f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1558
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1559
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1558
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1564
    :cond_4
    new-instance v12, Ljava/io/File;

    .end local v12           #localFile:Ljava/io/File;
    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1566
    .restart local v12       #localFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v18

    iget-wide v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->length:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_6

    .line 1570
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Notice! The file "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1571
    const-string v20, " already exists and completes!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1570
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1548
    .end local v8           #dataName:Ljava/lang/String;
    .end local v14           #oneLocalCompanyFile:Ljava/lang/String;
    :cond_5
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_3

    .line 1576
    .restart local v8       #dataName:Ljava/lang/String;
    .restart local v14       #oneLocalCompanyFile:Ljava/lang/String;
    :cond_6
    invoke-static {v15}, Lcom/isw/android/corp/message/MiniCompanyData;->checkDiffDataExist(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1577
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Notice! The file "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1578
    const-string v20, " dizz-diff"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is existing and integrated!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1577
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1582
    :cond_7
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1583
    iget-wide v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->length:J

    move-wide/from16 v19, v0

    .line 1582
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v0, v14, v1, v2}, Lcom/isw/android/corp/http/WinksHttp;->downloadOffsetDataURL(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 1584
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "url: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->url:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", length: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v5, Lcom/isw/android/corp/bean/CompanyConfigBean;->length:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 1585
    const-string v20, ", downloadResult: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1584
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    if-eqz v4, :cond_11

    .line 1590
    const-string v18, "localCompanyFile"

    const-string v19, ""

    .line 1589
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1593
    .local v6, currentLocalCompanyList:Ljava/lang/String;
    const-string v18, "zip"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1595
    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 1594
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/isw/android/corp/util/ZipFiles;->upZipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v18, "zip"

    const-string v19, "dat"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1601
    :cond_8
    const-string v18, "dizz"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1603
    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    .line 1602
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/isw/android/corp/util/ZipFiles;->upZipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v18, "dizz"

    const-string v19, "diff"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1609
    :cond_9
    const-string v18, "diff"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1611
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v15, v6}, Lcom/isw/android/corp/message/MiniCompanyData;->mergeDiffData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1617
    :cond_a
    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1618
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1633
    :cond_b
    :goto_5
    const-string v18, "localCompanyFile"

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    .line 1639
    const-string v7, ""

    .line 1640
    .local v7, dataFileIndex:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_6
    sget-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_f

    .line 1649
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "dataFileIndex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->indexFile:Ljava/lang/String;

    .line 1650
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    sput-object v15, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    .line 1654
    const-string v18, "localCompanyTs"

    sget-object v19, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyTs:Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->refreshCompanyItemCache()V

    .line 1660
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->updateAppInfo()V

    .line 1665
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyData;->updateNumberFile()V

    .line 1670
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1671
    const-string v19, "localCompanyFile"

    const-string v20, ""

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1670
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1672
    .local v11, localCompanyPath:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/pinyincompany.dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1673
    .local v16, pinyinLocalCompanyPath:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/isw/android/corp/message/MiniCompanyData;->updatePinYinFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1621
    .end local v7           #dataFileIndex:Ljava/lang/String;
    .end local v10           #j:I
    .end local v11           #localCompanyPath:Ljava/lang/String;
    .end local v16           #pinyinLocalCompanyPath:Ljava/lang/String;
    :cond_c
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1622
    .local v17, split:[Ljava/lang/String;
    const-string v6, ""

    .line 1623
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v10, v0, :cond_d

    .line 1629
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1630
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 1624
    :cond_d
    aget-object v18, v17, v10

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1625
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v19, v17, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1623
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1641
    .end local v17           #split:[Ljava/lang/String;
    .restart local v7       #dataFileIndex:Ljava/lang/String;
    :cond_f
    sget-object v18, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 1642
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1643
    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1642
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 1643
    if-nez v18, :cond_10

    .line 1644
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->companyDir:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1645
    sget-object v19, Lcom/isw/android/corp/message/MiniCompanyData;->localCompanyArr:[Ljava/lang/String;

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ","

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1644
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1640
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 1677
    .end local v6           #currentLocalCompanyList:Ljava/lang/String;
    .end local v7           #dataFileIndex:Ljava/lang/String;
    .end local v10           #j:I
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1714
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyConfigBean;
    .end local v8           #dataName:Ljava/lang/String;
    .end local v14           #oneLocalCompanyFile:Ljava/lang/String;
    :cond_12
    const-string v18, "lastCompanyDataUpdate"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1722
    .end local v3           #bCheckFinished:Z
    .end local v9           #i:I
    .end local v13           #newLocalCompanyFile:Ljava/lang/String;
    :cond_13
    const-string v18, "lastCompanyDataUpdate"

    .line 1723
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1722
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v18, "MiniCompanyData"

    .line 1725
    const-string v19, "Current local company is not old, and do not update."

    .line 1724
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static readCompanyItem(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;[Ljava/lang/String;)V
    .locals 7
    .parameter "phoneNumber"
    .parameter "itemBean"
    .parameter "split"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x3b

    .line 959
    array-length v0, p2

    if-ne v0, v6, :cond_2

    .line 960
    iput-object p0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 961
    aget-object v0, p2, v4

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 962
    aget-object v0, p2, v5

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 973
    :cond_0
    :goto_0
    array-length v0, p2

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    .line 974
    const/4 v0, 0x5

    aget-object v0, p2, v0

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 975
    iget-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 976
    iget-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 977
    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 976
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 980
    :cond_1
    return-void

    .line 963
    :cond_2
    array-length v0, p2

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 964
    iput-object p0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 965
    aget-object v0, p2, v4

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 966
    aget-object v0, p2, v5

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 967
    aget-object v0, p2, v6

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 968
    iget-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 969
    iget-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    goto :goto_0
.end method

.method public static refreshCompanyItemCache()V
    .locals 6

    .prologue
    .line 1731
    const-string v3, "MiniCompanyData"

    const-string v4, "refreshCompanyItemCache..."

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    invoke-static {}, Lcom/isw/android/corp/util/LocalConfig;->getCurrentCallRecord()Ljava/lang/String;

    move-result-object v1

    .line 1733
    .local v1, content:Ljava/lang/String;
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1734
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1735
    .local v0, cachephone:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 1742
    .end local v0           #cachephone:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_0
    return-void

    .line 1736
    .restart local v0       #cachephone:[Ljava/lang/String;
    .restart local v2       #i:I
    :cond_1
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1737
    const-string v3, "MiniCompanyData"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cachephone["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 1735
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static setCompanyMapByName(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 21
    .parameter "keyWords"
    .parameter
    .parameter
    .parameter "searchFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2015
    .local p1, companyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .local p2, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->pinyinCompanyDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/pinyincompany.dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2016
    .local v16, pinyinCompanyFile:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2017
    .local v4, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    const/4 v8, 0x0

    .line 2018
    .local v8, fr:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 2019
    .local v2, br:Ljava/io/BufferedReader;
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "search file: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2022
    .local v17, searchFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_1

    .line 2023
    new-instance v9, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2024
    .end local v8           #fr:Ljava/io/FileReader;
    .local v9, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2026
    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_2
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2027
    .local v6, defloc:Ljava/util/Locale;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v10

    .local v10, itemContents:Ljava/lang/String;
    if-nez v10, :cond_4

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .line 2064
    .end local v6           #defloc:Ljava/util/Locale;
    .end local v9           #fr:Ljava/io/FileReader;
    .end local v10           #itemContents:Ljava/lang/String;
    .restart local v8       #fr:Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 2065
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2067
    :cond_2
    if-eqz v8, :cond_3

    .line 2068
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2074
    .end local v17           #searchFile:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 2028
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v6       #defloc:Ljava/util/Locale;
    .restart local v9       #fr:Ljava/io/FileReader;
    .restart local v10       #itemContents:Ljava/lang/String;
    .restart local v17       #searchFile:Ljava/io/File;
    :cond_4
    :try_start_4
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2032
    invoke-virtual {v10, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 2033
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2034
    .local v11, items:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    const/16 v18, 0x5

    aget-object v18, v11, v18

    const-string v19, "s"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 2038
    :cond_5
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 2037
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 2039
    .local v14, phoneNumberContent:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v15

    .line 2040
    .local v15, phoneNumbers:[Ljava/lang/String;
    move-object v13, v14

    .line 2041
    .local v13, phoneNumber:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, j:I
    move-object v5, v4

    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .local v5, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :goto_3
    :try_start_5
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_6

    move-object v4, v5

    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_0

    .line 2042
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_6
    aget-object v13, v15, v12

    .line 2043
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2044
    new-instance v4, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v4}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 2045
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_start_6
    invoke-static {v13, v4, v11}, Lcom/isw/android/corp/message/MiniCompanyData;->readCompanyItem(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;[Ljava/lang/String;)V

    .line 2046
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 2047
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 2048
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2050
    const/16 v18, 0x190

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .line 2052
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    goto/16 :goto_1

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v9       #fr:Ljava/io/FileReader;
    :cond_8
    move-object v4, v5

    .line 2041
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    move-object v5, v4

    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_3

    .line 2060
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v6           #defloc:Ljava/util/Locale;
    .end local v9           #fr:Ljava/io/FileReader;
    .end local v10           #itemContents:Ljava/lang/String;
    .end local v11           #items:[Ljava/lang/String;
    .end local v12           #j:I
    .end local v13           #phoneNumber:Ljava/lang/String;
    .end local v14           #phoneNumberContent:Ljava/lang/String;
    .end local v15           #phoneNumbers:[Ljava/lang/String;
    .end local v17           #searchFile:Ljava/io/File;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v7

    .line 2061
    .local v7, ex:Ljava/lang/Exception;
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2064
    if-eqz v2, :cond_a

    .line 2065
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2067
    :cond_a
    if-eqz v8, :cond_3

    .line 2068
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 2070
    :catch_1
    move-exception v7

    .line 2071
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2062
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 2064
    :goto_5
    if-eqz v2, :cond_b

    .line 2065
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 2067
    :cond_b
    if-eqz v8, :cond_c

    .line 2068
    invoke-virtual {v8}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2073
    :cond_c
    :goto_6
    throw v18

    .line 2070
    :catch_2
    move-exception v7

    .line 2071
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 2070
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v17       #searchFile:Ljava/io/File;
    :catch_3
    move-exception v7

    .line 2071
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 2062
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v18

    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v18

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #defloc:Ljava/util/Locale;
    .restart local v9       #fr:Ljava/io/FileReader;
    .restart local v10       #itemContents:Ljava/lang/String;
    .restart local v11       #items:[Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v13       #phoneNumber:Ljava/lang/String;
    .restart local v14       #phoneNumberContent:Ljava/lang/String;
    .restart local v15       #phoneNumbers:[Ljava/lang/String;
    :catchall_3
    move-exception v18

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_5

    .line 2060
    .end local v6           #defloc:Ljava/util/Locale;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v10           #itemContents:Ljava/lang/String;
    .end local v11           #items:[Ljava/lang/String;
    .end local v12           #j:I
    .end local v13           #phoneNumber:Ljava/lang/String;
    .end local v14           #phoneNumberContent:Ljava/lang/String;
    .end local v15           #phoneNumbers:[Ljava/lang/String;
    .restart local v9       #fr:Ljava/io/FileReader;
    :catch_4
    move-exception v7

    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v7

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #defloc:Ljava/util/Locale;
    .restart local v9       #fr:Ljava/io/FileReader;
    .restart local v10       #itemContents:Ljava/lang/String;
    .restart local v11       #items:[Ljava/lang/String;
    .restart local v12       #j:I
    .restart local v13       #phoneNumber:Ljava/lang/String;
    .restart local v14       #phoneNumberContent:Ljava/lang/String;
    .restart local v15       #phoneNumbers:[Ljava/lang/String;
    :catch_6
    move-exception v7

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v8, v9

    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_4
.end method

.method private static setCompanyMapByNumber(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 21
    .parameter "keyWords"
    .parameter
    .parameter
    .parameter "searchFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1919
    .local p1, companyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .local p2, companyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    const/4 v4, 0x0

    .line 1920
    .local v4, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    const/4 v9, 0x0

    .line 1921
    .local v9, fr:Ljava/io/FileReader;
    const/4 v2, 0x0

    .line 1922
    .local v2, br:Ljava/io/BufferedReader;
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "search file: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    :try_start_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1925
    .local v17, searchFile:Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1926
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 1927
    .local v7, fileLength:J
    const-string v18, "MiniCompanyData"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "search file length: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    const-wide/32 v18, 0x30d40

    cmp-long v18, v7, v18

    if-lez v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1970
    if-eqz v2, :cond_0

    .line 1971
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1972
    const/4 v2, 0x0

    .line 1974
    :cond_0
    if-eqz v9, :cond_1

    .line 1975
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1976
    const/4 v9, 0x0

    .line 1982
    .end local v7           #fileLength:J
    .end local v17           #searchFile:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1978
    .restart local v7       #fileLength:J
    .restart local v17       #searchFile:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1979
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1931
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v10, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1932
    .end local v9           #fr:Ljava/io/FileReader;
    .local v10, fr:Ljava/io/FileReader;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    move-object v5, v4

    .line 1934
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .local v5, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v12

    .local v12, itemContents:Ljava/lang/String;
    if-nez v12, :cond_6

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    move-object v4, v5

    .line 1970
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v7           #fileLength:J
    .end local v12           #itemContents:Ljava/lang/String;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_4
    if-eqz v2, :cond_5

    .line 1971
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1972
    const/4 v2, 0x0

    .line 1974
    :cond_5
    if-eqz v9, :cond_1

    .line 1975
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1976
    const/4 v9, 0x0

    goto :goto_0

    .line 1935
    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v7       #fileLength:J
    .restart local v10       #fr:Ljava/io/FileReader;
    .restart local v12       #itemContents:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1938
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1939
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1940
    .local v13, items:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    const/16 v18, 0x5

    aget-object v18, v13, v18

    const-string v19, "s"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1944
    :cond_7
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    .line 1943
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1945
    .local v15, phoneNumberContent:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1946
    .local v16, phoneNumbers:[Ljava/lang/String;
    move-object v14, v15

    .line 1947
    .local v14, phoneNumber:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v11, v0, :cond_a

    .line 1954
    :goto_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1955
    new-instance v4, Lcom/isw/android/corp/bean/CompanyItemBean;

    invoke-direct {v4}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 1956
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    :try_start_7
    invoke-static {v14, v4, v13}, Lcom/isw/android/corp/message/MiniCompanyData;->readCompanyItem(Ljava/lang/String;Lcom/isw/android/corp/bean/CompanyItemBean;[Ljava/lang/String;)V

    .line 1957
    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->preDataFile:Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1958
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 1959
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1960
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :cond_9
    move-object v5, v4

    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto/16 :goto_1

    .line 1948
    :cond_a
    :try_start_8
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1949
    aget-object v14, v16, v11

    .line 1950
    goto :goto_3

    .line 1952
    :cond_b
    const-string v14, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1947
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1966
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v7           #fileLength:J
    .end local v10           #fr:Ljava/io/FileReader;
    .end local v11           #i:I
    .end local v12           #itemContents:Ljava/lang/String;
    .end local v13           #items:[Ljava/lang/String;
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #phoneNumberContent:Ljava/lang/String;
    .end local v16           #phoneNumbers:[Ljava/lang/String;
    .end local v17           #searchFile:Ljava/io/File;
    .restart local v2       #br:Ljava/io/BufferedReader;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v9       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v6

    .line 1967
    .restart local v6       #ex:Ljava/lang/Exception;
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1970
    if-eqz v2, :cond_c

    .line 1971
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1972
    const/4 v2, 0x0

    .line 1974
    :cond_c
    if-eqz v9, :cond_1

    .line 1975
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1976
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1978
    :catch_2
    move-exception v6

    .line 1979
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1968
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    .line 1970
    :goto_5
    if-eqz v2, :cond_d

    .line 1971
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 1972
    const/4 v2, 0x0

    .line 1974
    :cond_d
    if-eqz v9, :cond_e

    .line 1975
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 1976
    const/4 v9, 0x0

    .line 1981
    :cond_e
    :goto_6
    throw v18

    .line 1978
    :catch_3
    move-exception v6

    .line 1979
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1978
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v17       #searchFile:Ljava/io/File;
    :catch_4
    move-exception v6

    .line 1979
    .restart local v6       #ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1968
    .end local v6           #ex:Ljava/lang/Exception;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v7       #fileLength:J
    .restart local v10       #fr:Ljava/io/FileReader;
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v10       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v18

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_5

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v10       #fr:Ljava/io/FileReader;
    .restart local v11       #i:I
    .restart local v12       #itemContents:Ljava/lang/String;
    .restart local v13       #items:[Ljava/lang/String;
    .restart local v14       #phoneNumber:Ljava/lang/String;
    .restart local v15       #phoneNumberContent:Ljava/lang/String;
    .restart local v16       #phoneNumbers:[Ljava/lang/String;
    :catchall_3
    move-exception v18

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    goto :goto_5

    .line 1966
    .end local v9           #fr:Ljava/io/FileReader;
    .end local v11           #i:I
    .end local v12           #itemContents:Ljava/lang/String;
    .end local v13           #items:[Ljava/lang/String;
    .end local v14           #phoneNumber:Ljava/lang/String;
    .end local v15           #phoneNumberContent:Ljava/lang/String;
    .end local v16           #phoneNumbers:[Ljava/lang/String;
    .restart local v10       #fr:Ljava/io/FileReader;
    :catch_5
    move-exception v6

    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v4           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v5       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v10       #fr:Ljava/io/FileReader;
    :catch_6
    move-exception v6

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    move-object v4, v5

    .end local v5           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v4       #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    goto :goto_4

    .end local v2           #br:Ljava/io/BufferedReader;
    .end local v9           #fr:Ljava/io/FileReader;
    .restart local v3       #br:Ljava/io/BufferedReader;
    .restart local v10       #fr:Ljava/io/FileReader;
    .restart local v11       #i:I
    .restart local v12       #itemContents:Ljava/lang/String;
    .restart local v13       #items:[Ljava/lang/String;
    .restart local v14       #phoneNumber:Ljava/lang/String;
    .restart local v15       #phoneNumberContent:Ljava/lang/String;
    .restart local v16       #phoneNumbers:[Ljava/lang/String;
    :catch_7
    move-exception v6

    move-object v2, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local v2       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #fr:Ljava/io/FileReader;
    .restart local v9       #fr:Ljava/io/FileReader;
    goto :goto_4
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/isw/android/corp/message/MiniCompanyData$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCompanyData$1;-><init>()V

    .line 86
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCompanyData$1;->start()V

    .line 88
    return-void
.end method

.method private static updateNumberFile()V
    .locals 1

    .prologue
    .line 1749
    new-instance v0, Lcom/isw/android/corp/message/MiniCompanyData$3;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCompanyData$3;-><init>()V

    .line 1806
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCompanyData$3;->start()V

    .line 1807
    return-void
.end method

.method public static updatePinYinFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "inputPath"
    .parameter "outputPinYinPath"

    .prologue
    .line 1814
    new-instance v0, Lcom/isw/android/corp/message/MiniCompanyData$4;

    invoke-direct {v0, p0, p1}, Lcom/isw/android/corp/message/MiniCompanyData$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCompanyData$4;->start()V

    .line 1891
    return-void
.end method
