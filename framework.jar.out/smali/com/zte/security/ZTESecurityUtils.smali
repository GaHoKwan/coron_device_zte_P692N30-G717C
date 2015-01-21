.class public Lcom/zte/security/ZTESecurityUtils;
.super Ljava/lang/Object;
.source "ZTESecurityUtils.java"


# static fields
.field private static final SERVICE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ZTESecurityUtils"

.field private static ZTEPrivacyClass:Ljava/lang/String;

.field private static ZTESecurityClass:Ljava/lang/String;

.field private static ZTESecurityJar:Ljava/lang/String;

.field private static final controlledService:[Ljava/lang/String;

.field private static mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 37
    const-string v0, "/system/framework/IZTESecurity.jar:/system/framework/com.zte.ZTESecurity.jar"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    .line 38
    const-string v0, "com.zte.ZTESecurity.ZTESecurity"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    .line 39
    const-string v0, "com.zte.privacy.ZTEPrivacyManagerService"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "isms2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_manager"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "connectivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZTECheckCallingPermission(Ljava/lang/String;I)I
    .locals 10
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, res:I
    if-nez p0, :cond_0

    move v5, v4

    .line 100
    .end local v4           #res:I
    .local v5, res:I
    :goto_0
    return v5

    .line 89
    .end local v5           #res:I
    .restart local v4       #res:I
    :cond_0
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 90
    .local v3, loader:Ljava/lang/ClassLoader;
    if-nez v3, :cond_1

    move v5, v4

    .line 91
    .end local v4           #res:I
    .restart local v5       #res:I
    goto :goto_0

    .line 94
    .end local v5           #res:I
    .restart local v4       #res:I
    :cond_1
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "checkCallingPermission"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    .local v0, checkCallingPermission:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .end local v0           #checkCallingPermission:Ljava/lang/reflect/Method;
    .end local v1           #cl:Ljava/lang/Class;
    :goto_1
    move v5, v4

    .line 100
    .end local v4           #res:I
    .restart local v5       #res:I
    goto :goto_0

    .line 97
    .end local v5           #res:I
    .restart local v4       #res:I
    :catch_0
    move-exception v2

    .line 98
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, "catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static ZTECheckMTKMsimNetPermission(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .parameter "mContext"
    .parameter "intent"

    .prologue
    .line 175
    const/4 v5, 0x1

    .line 177
    .local v5, res:Z
    const-string/jumbo v8, "simid"

    const-wide/16 v9, -0x5

    invoke-virtual {p1, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 178
    .local v6, simId:Ljava/lang/Long;
    const/4 v7, -0x1

    .line 179
    .local v7, slotId:I
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x5

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 181
    :cond_0
    const/4 v7, -0x1

    .line 187
    :goto_0
    const/4 v2, 0x0

    .line 188
    .local v2, enable:Z
    if-eqz v7, :cond_1

    const/4 v8, 0x1

    if-ne v8, v7, :cond_4

    .line 189
    :cond_1
    const/4 v2, 0x1

    .line 195
    :cond_2
    :goto_1
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 196
    .local v4, loader:Ljava/lang/ClassLoader;
    if-nez v4, :cond_5

    .line 197
    const/4 v8, 0x1

    .line 206
    :goto_2
    return v8

    .line 184
    .end local v2           #enable:Z
    .end local v4           #loader:Ljava/lang/ClassLoader;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v7

    goto :goto_0

    .line 191
    .restart local v2       #enable:Z
    :cond_4
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 192
    const/4 v2, 0x0

    goto :goto_1

    .line 200
    .restart local v4       #loader:Ljava/lang/ClassLoader;
    :cond_5
    :try_start_0
    sget-object v8, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 201
    .local v1, cl:Ljava/lang/Class;
    const-string v8, "checkChangeNetworkPermission"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 202
    .local v0, checkChangeNetworkPermission:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v0           #checkChangeNetworkPermission:Ljava/lang/reflect/Method;
    .end local v1           #cl:Ljava/lang/Class;
    :goto_3
    move v8, v5

    .line 206
    goto :goto_2

    .line 203
    :catch_0
    move-exception v3

    .line 204
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "ZTESecurityUtils"

    const-string v9, "catch Exception: "

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 76
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    const-string v2, "/system/framework/"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 80
    :cond_0
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 10
    .parameter "mZTETransport"

    .prologue
    const/4 v6, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, origTransport:Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 106
    .local v3, loader:Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 116
    :goto_0
    return-object v6

    .line 110
    :cond_0
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 111
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "getOrigTransport"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/IContentProvider;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 112
    .local v4, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/IContentProvider;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cl:Ljava/lang/Class;
    .end local v4           #m:Ljava/lang/reflect/Method;
    :goto_1
    move-object v6, v5

    .line 116
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, " catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getZTEProxyService(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 10
    .parameter "serviceName"
    .parameter "service"

    .prologue
    const/4 v6, 0x0

    .line 139
    const/4 v5, 0x0

    .line 141
    .local v5, proxyService:Landroid/os/IBinder;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isControlledService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-object v6

    .line 147
    :cond_1
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 148
    sget-object v7, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #proxyService:Landroid/os/IBinder;
    check-cast v5, Landroid/os/IBinder;

    .line 151
    .restart local v5       #proxyService:Landroid/os/IBinder;
    :cond_2
    if-nez v5, :cond_4

    .line 152
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 153
    .local v4, loader:Ljava/lang/ClassLoader;
    if-eqz v4, :cond_0

    .line 157
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 158
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 159
    .local v3, getProxyService:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/os/IBinder;

    move-object v5, v0

    .line 160
    if-eqz v5, :cond_4

    .line 161
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 162
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v6, v5

    .line 163
    goto :goto_0

    .line 165
    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #getProxyService:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 166
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, "Catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #loader:Ljava/lang/ClassLoader;
    :cond_4
    move-object v6, v5

    .line 170
    goto :goto_0
.end method

.method public static getZTETransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 10
    .parameter "provider"
    .parameter "mTransport"

    .prologue
    const/4 v6, 0x0

    .line 120
    const/4 v5, 0x0

    .line 122
    .local v5, targetTransport:Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 123
    .local v3, loader:Ljava/lang/ClassLoader;
    if-nez v3, :cond_0

    .line 135
    :goto_0
    return-object v6

    .line 128
    :cond_0
    :try_start_0
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 129
    .local v1, cl:Ljava/lang/Class;
    const-string v6, "getTransport"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/ContentProvider;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 130
    .local v4, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/IContentProvider;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cl:Ljava/lang/Class;
    .end local v4           #m:Ljava/lang/reflect/Method;
    :goto_1
    move-object v6, v5

    .line 135
    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "ZTESecurityUtils"

    const-string v7, " catch Exception: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static initZTEPrivacyService(Landroid/content/Context;)V
    .locals 8
    .parameter "mContext"

    .prologue
    .line 211
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 212
    .local v2, loader:Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v5, "ZTESecurityUtils"

    const-string v6, "init Privacy Manager Service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 219
    .local v0, cl:Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 220
    .local v3, mConstructor:Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 221
    .local v4, privacy:Landroid/os/IBinder;
    const-string/jumbo v5, "privacy"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    .end local v0           #cl:Ljava/lang/Class;
    .end local v3           #mConstructor:Ljava/lang/reflect/Constructor;
    .end local v4           #privacy:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 223
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "ZTESecurityUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught exception in initZTEPrivacyService "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isControlledService(Ljava/lang/String;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 67
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 68
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    .line 72
    :goto_1
    return v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isPhoneService(Ljava/lang/String;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 57
    const-string v0, "iphonesubinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isms2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
