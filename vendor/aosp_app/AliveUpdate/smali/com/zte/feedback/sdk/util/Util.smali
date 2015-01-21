.class public Lcom/zte/feedback/sdk/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final EXCHANGE_TYPE:Ljava/lang/String; = "org.zx.authenticator.ztecloud"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containSubs(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "str"
    .parameter "sub"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 118
    return v0

    .line 114
    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 113
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;
    .locals 3
    .parameter "accountManager"

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, account:Landroid/accounts/Account;
    :try_start_0
    const-string v2, "org.zx.authenticator.ztecloud"

    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 97
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 98
    const/4 v2, 0x0

    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1           #accounts:[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 79
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/zte/feedback/sdk/util/Util;->getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 80
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-object v2

    .line 83
    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
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
    .line 21
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

    .line 54
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 55
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static {v1}, Lcom/zte/feedback/sdk/util/Util;->getAccount(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    .line 56
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v2

    .line 59
    :cond_1
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Lcom/zte/feedback/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p0}, Lcom/zte/feedback/sdk/util/Util;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 74
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
    .line 44
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v1}, Lcom/zte/feedback/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {p0}, Lcom/zte/feedback/sdk/util/Util;->getPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, phone:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 50
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
    .line 107
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 108
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
    .line 123
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 124
    .local v0, current:J
    sget-wide v4, Lcom/zte/feedback/sdk/GlobalInfo;->criterion:J

    sub-long v2, v0, v4

    .line 125
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
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, packageName:Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/zte/feedback/sdk/util/Util;->packageHasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

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

    .line 30
    invoke-static {p0}, Lcom/zte/feedback/sdk/util/Util;->getPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 31
    .local v1, packageInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    :goto_0
    return v3

    .line 31
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 32
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 33
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_0

    aget-object v2, v6, v4

    .line 34
    .local v2, permissionName:Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 35
    const/4 v3, 0x1

    goto :goto_0

    .line 33
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static transferDid(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "in_id"

    .prologue
    const-wide v8, 0xde0b6b3a7640000L

    const/16 v7, 0x10

    const/16 v6, 0xf

    .line 132
    move-object v1, p0

    .line 134
    .local v1, out_id:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 136
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

    .line 137
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_2

    .line 138
    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_2
    const/16 v5, 0x10

    invoke-static {p0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    .line 141
    .local v3, value:J
    const-wide v5, 0x1bc16d674ec80000L

    add-long/2addr v3, v5

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 162
    .end local v2           #pref:C
    :goto_0
    return-object v1

    .line 148
    .end local v3           #value:J
    .restart local v2       #pref:C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v7, :cond_4

    .line 149
    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 151
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 152
    .restart local v3       #value:J
    add-long/2addr v3, v8

    .line 153
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 158
    .end local v2           #pref:C
    .end local v3           #value:J
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Lcom/zte/feedback/sdk/comm/ConstantDefine;->defualtIMEI:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 160
    .restart local v3       #value:J
    add-long v5, v3, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
