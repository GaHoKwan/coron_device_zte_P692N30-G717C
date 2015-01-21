.class public Lcom/zte/statistics/sdk/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EXCHANGE_TYPE:Ljava/lang/String; = "org.zx.authenticator.ztecloud"

.field public static PSEUDO_ISO8601_DATE_FORMAT:Ljava/lang/String;

.field public static PSEUDO_ISO8601_DATE_FORMAT_MILLIS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "yyyy-MM-dd HH:mm:ssZ"

    sput-object v0, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT:Ljava/lang/String;

    .line 27
    const-string v0, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sput-object v0, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT_MILLIS:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containSubs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 182
    return v0

    .line 178
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static dateToIso8601String(J)Ljava/lang/String;
    .locals 2
    .parameter "when"

    .prologue
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT_MILLIS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0, p1}, Lcom/zte/statistics/sdk/util/Util;->dateToString(Ljava/text/DateFormat;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateToIso8601String(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "date"

    .prologue
    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT_MILLIS:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/zte/statistics/sdk/util/Util;->dateToString(Ljava/text/DateFormat;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dateToString(Ljava/text/DateFormat;J)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "when"

    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;
    .locals 3
    .parameter "accountManager"

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, account:Landroid/accounts/Account;
    :try_start_0
    const-string v2, "org.zx.authenticator.ztecloud"

    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 161
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 162
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1           #accounts:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v0

    .line 164
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 143
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/zte/statistics/sdk/util/Util;->getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 144
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-object v2

    .line 147
    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 119
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/zte/statistics/sdk/util/Util;->getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 120
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProxyStatus(Landroid/content/Context;)Z
    .locals 6
    .parameter "ctt"

    .prologue
    .line 186
    const/4 v3, 0x0

    .line 188
    .local v3, useProxy:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 189
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/zte/statistics/sdk/comm/ConstantDefine;->proxyPackage:Ljava/lang/String;

    .line 190
    const/16 v5, 0x8

    .line 189
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .local v2, pckgInfo:Landroid/content/pm/PackageInfo;
    const/4 v3, 0x1

    .line 195
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #pckgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method

.method public static getUserEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 132
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Lcom/zte/statistics/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/zte/statistics/sdk/util/Util;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    .end local v0           #email:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getUserPhone(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 108
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Lcom/zte/statistics/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p0}, Lcom/zte/statistics/sdk/util/Util;->getPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, phone:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    .end local v0           #phone:Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static isNetworkConnectionPresent(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 171
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 172
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static offsetTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 199
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 200
    .local v0, current:J
    sget-wide v4, Lcom/zte/statistics/sdk/GlobalInfo;->criterion:J

    sub-long v2, v0, v4

    .line 201
    .local v2, offsetTime:J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static packageHasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "permission"

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, packageName:Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/zte/statistics/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static packageHasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "permission"

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-static {p0}, Lcom/zte/statistics/sdk/util/Util;->getPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 95
    .local v1, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 96
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 97
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v6, v4

    .line 98
    .local v2, permissionName:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 99
    const/4 v3, 0x1

    goto :goto_0

    .line 97
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 13
    .parameter "iso8601DateString"

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Z"

    const-string v10, "+00:00"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "T"

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, s:Ljava/lang/String;
    :try_start_0
    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, lastColonIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    const/16 v8, 0x2e

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 57
    .local v4, milliStart:I
    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-eq v8, v12, :cond_1

    const/16 v8, 0x2b

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 58
    .local v3, milliEnd:I
    :goto_0
    if-eq v4, v12, :cond_0

    .line 59
    const/4 v8, 0x0

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, start:Ljava/lang/String;
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, millis:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, end:Ljava/lang/String;
    const-string v8, "%-3s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 71
    .end local v1           #end:Ljava/lang/String;
    .end local v5           #millis:Ljava/lang/String;
    .end local v7           #start:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 72
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT_MILLIS:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 81
    .end local v2           #lastColonIndex:I
    .end local v3           #milliEnd:I
    .end local v4           #milliStart:I
    :goto_1
    return-object v8

    .line 57
    .restart local v2       #lastColonIndex:I
    .restart local v4       #milliStart:I
    :cond_1
    const/16 v8, 0x2d

    :try_start_2
    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    goto :goto_0

    .line 65
    .end local v2           #lastColonIndex:I
    .end local v4           #milliStart:I
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error parsing date: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v0, v9}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    goto :goto_1

    .line 74
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #lastColonIndex:I
    .restart local v3       #milliEnd:I
    .restart local v4       #milliStart:I
    :cond_2
    :try_start_3
    new-instance v8, Ljava/text/SimpleDateFormat;

    sget-object v9, Lcom/zte/statistics/sdk/util/Util;->PSEUDO_ISO8601_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    .local v0, e:Ljava/text/ParseException;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Exception parsing date: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v8, v0, v9}, Lcom/zte/statistics/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static transferDid(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "in_id"

    .prologue
    const-wide v8, 0xde0b6b3a7640000L

    const/16 v7, 0x10

    const/16 v6, 0xf

    .line 208
    move-object v1, p0

    .line 210
    .local v1, out_id:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 212
    .local v2, pref:C
    const/16 v5, 0x41

    if-lt v2, v5, :cond_0

    const/16 v5, 0x46

    if-le v2, v5, :cond_1

    :cond_0
    const/16 v5, 0x61

    if-lt v2, v5, :cond_3

    const/16 v5, 0x66

    if-gt v2, v5, :cond_3

    .line 213
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 214
    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 216
    :cond_2
    const/16 v5, 0x10

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 217
    .local v3, value:J
    const-wide v5, 0x1bc16d674ec80000L

    add-long/2addr v3, v5

    .line 218
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 238
    .end local v2           #pref:C
    :goto_0
    return-object v1

    .line 224
    .end local v3           #value:J
    .restart local v2       #pref:C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_4

    .line 225
    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 227
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 228
    .restart local v3       #value:J
    add-long/2addr v3, v8

    .line 229
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 234
    .end local v2           #pref:C
    .end local v3           #value:J
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 236
    .restart local v3       #value:J
    add-long v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
