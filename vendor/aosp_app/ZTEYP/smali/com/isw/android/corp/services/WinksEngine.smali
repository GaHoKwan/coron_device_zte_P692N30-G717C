.class public Lcom/isw/android/corp/services/WinksEngine;
.super Ljava/lang/Object;
.source "WinksEngine.java"

# interfaces
.implements Lcom/isw/android/corp/services/IWinksEngine;


# static fields
.field private static final CTNET_CONNECT:I = 0x1

.field private static final CTWAP_CONNECT:I = 0x2

.field private static final PREFERRED_APN_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MiniWinksEngine"

.field private static busLoop:I

.field private static final instance:Lcom/isw/android/corp/services/WinksEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/isw/android/corp/services/WinksEngine;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 58
    new-instance v0, Lcom/isw/android/corp/services/WinksEngine;

    invoke-direct {v0}, Lcom/isw/android/corp/services/WinksEngine;-><init>()V

    sput-object v0, Lcom/isw/android/corp/services/WinksEngine;->instance:Lcom/isw/android/corp/services/WinksEngine;

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/isw/android/corp/services/WinksEngine;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/isw/android/corp/services/WinksEngine;->instance:Lcom/isw/android/corp/services/WinksEngine;

    return-object v0
.end method


# virtual methods
.method public AddCallRecord(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .parameter "number"
    .parameter "timestamp"
    .parameter "duration"
    .parameter "calltype"
    .parameter "ccshowDurationTime"

    .prologue
    .line 152
    invoke-static {p1, p2, p3, p4, p5}, Lcom/isw/android/corp/util/LocalConfig;->appendCallHistoryFile(Ljava/lang/String;Ljava/lang/String;III)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public EngineInit()I
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public GetShowElement(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"
    .parameter "flag"
    .parameter "etag"

    .prologue
    .line 89
    const-string v0, ""

    .line 91
    .local v0, ccshowImage:Ljava/lang/String;
    :try_start_0
    const-string v5, "bus"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, companyBgDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 100
    .local v4, list:[Ljava/io/File;
    if-eqz v4, :cond_0

    array-length v5, v4

    if-nez v5, :cond_1

    .line 101
    :cond_0
    const-string v5, "MiniWinksEngine"

    const-string v6, "Warning! list is null!"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 122
    .end local v0           #ccshowImage:Ljava/lang/String;
    .end local v2           #companyBgDir:Ljava/io/File;
    .end local v4           #list:[Ljava/io/File;
    .local v1, ccshowImage:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 105
    .end local v1           #ccshowImage:Ljava/lang/String;
    .restart local v0       #ccshowImage:Ljava/lang/String;
    .restart local v2       #companyBgDir:Ljava/io/File;
    .restart local v4       #list:[Ljava/io/File;
    :cond_1
    sget v5, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    array-length v6, v4

    if-le v5, v6, :cond_2

    .line 106
    const/4 v5, 0x1

    sput v5, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    .line 109
    :cond_2
    const-string v5, "MiniWinksEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "busLoop: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v5, "MiniWinksEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "list.length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 113
    sget v6, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v5, "MiniWinksEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ccshowImage: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget v5, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/isw/android/corp/services/WinksEngine;->busLoop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #companyBgDir:Ljava/io/File;
    .end local v4           #list:[Ljava/io/File;
    :cond_3
    :goto_1
    move-object v1, v0

    .line 122
    .end local v0           #ccshowImage:Ljava/lang/String;
    .restart local v1       #ccshowImage:Ljava/lang/String;
    goto :goto_0

    .line 119
    .end local v1           #ccshowImage:Ljava/lang/String;
    .restart local v0       #ccshowImage:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 120
    .local v3, ex:Ljava/lang/Exception;
    const-string v5, "MiniWinksEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[GetShowElement]ex: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public NetworkAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "ctx"

    .prologue
    .line 159
    .line 160
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    .line 167
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WinksApiGetImsi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/isw/android/corp/util/InitFuncs;->initIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sput-object v0, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    .line 136
    :cond_1
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public checkIsChinaTelecom()Z
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, res:Z
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    const-string v2, "46003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 178
    sget-object v1, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    const-string v2, "99903"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    const-string v1, "MiniWinksEngine"

    const-string v2, "The user is china telecom imsi"

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, 0x1

    .line 183
    :cond_1
    return v0
.end method

.method public getCurrentApnInUse()I
    .locals 14

    .prologue
    .line 230
    const/4 v8, 0x0

    .line 232
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    sget-object v1, Lcom/isw/android/corp/services/WinksEngine;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 232
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    if-eqz v8, :cond_0

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_0
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0

    .line 237
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 238
    .local v10, id:Ljava/lang/String;
    const-string v0, "apn"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, apn:Ljava/lang/String;
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, type:Ljava/lang/String;
    const-string v0, "current"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 242
    .local v7, current:Ljava/lang/String;
    const-string v0, "proxy"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 243
    .local v12, proxy:Ljava/lang/String;
    const-string v0, "port"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 245
    .local v11, port:Ljava/lang/String;
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "MiniWinksEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "port: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "10.0.0.200"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    const-string v0, "MiniWinksEngine"

    const-string v1, "current connection is ct wap."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    if-eqz v8, :cond_2

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_2
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 255
    :cond_3
    if-eqz v7, :cond_4

    :try_start_2
    const-string v0, "null"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 256
    :cond_4
    const-string v0, "MiniWinksEngine"

    const-string v1, "current connection is ct net."

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    if-eqz v8, :cond_5

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 259
    :cond_6
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 261
    .end local v6           #apn:Ljava/lang/String;
    .end local v7           #current:Ljava/lang/String;
    .end local v10           #id:Ljava/lang/String;
    .end local v11           #port:Ljava/lang/String;
    .end local v12           #proxy:Ljava/lang/String;
    .end local v13           #type:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 263
    .local v9, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 265
    if-eqz v8, :cond_0

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 264
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 265
    if-eqz v8, :cond_7

    .line 266
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_7
    throw v0
.end method

.method public getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 273
    const-string v2, ""

    .line 275
    .local v2, name:Ljava/lang/String;
    :try_start_0
    const-string v3, "MiniWinksEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getNameByNumber] number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {p1}, Lcom/isw/android/corp/util/PhonebookUtil;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 282
    :goto_0
    return-object v2

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "MiniWinksEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 280
    .local v0, error:Ljava/lang/Error;
    const-string v3, "MiniWinksEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isCTWap()Z
    .locals 6

    .prologue
    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, res:Z
    sget-object v3, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    .line 195
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 196
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 198
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 199
    const-string v3, "WIFI"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const-string v3, "MiniWinksEngine"

    const-string v4, "[isCTWap]CurrentType WIFI"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 225
    :cond_0
    :goto_0
    return v2

    .line 202
    :cond_1
    const-string v3, "MOBILE"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const-string v3, "MiniWinksEngine"

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " current net connection type is  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/isw/android/corp/services/WinksEngine;->getCurrentApnInUse()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 218
    const-string v3, "MiniWinksEngine"

    .line 219
    const-string v4, "could not get current net connection type. default as NET"

    .line 218
    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    :pswitch_0
    const-string v3, "MiniWinksEngine"

    const-string v4, "[isCTWap]CurrentType CTWAP"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x1

    .line 211
    goto :goto_0

    .line 214
    :pswitch_1
    const-string v3, "MiniWinksEngine"

    const-string v4, "[isCTWap]CurrentType CTNET"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v2, 0x0

    .line 216
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
