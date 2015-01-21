.class public Lcom/zte/retrieve/cloud/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# static fields
.field private static final JSON_KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final JSON_KEY_MOBILE:Ljava/lang/String; = "mobile"

.field private static final JSON_KEY_UID:Ljava/lang/String; = "uid"

.field public static final LOGIN_CONNECTION_ERROR:I = -0x1

.field public static final LOGIN_FAILED:I = 0x1f4

.field public static final LOGIN_NAME_ERR:I = 0x14

.field public static final LOGIN_PWD_ERR:I = 0x15

.field public static final LOGIN_SUCCESS:I = 0xc8

.field public static final REGISTER_RESULT_CONNECTION_ERROR:I = 0x2

.field public static final REGISTER_RESULT_EMAIL_ALREADY_EXIST:I = 0xb

.field public static final REGISTER_RESULT_FAIL:I = 0x1

.field public static final REGISTER_RESULT_PARAMETER_ERROR:I = 0x3

.field public static final REGISTER_RESULT_SUCCESS:I = 0x0

.field public static final REGISTER_RESULT_USER_ALREADY_EXIST:I = 0xa

.field private static mAppContext:Landroid/content/Context;

.field private static mIsServiceConnected:Z

.field private static myService:Lorg/zx/AuthComp/IMyService;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    .line 32
    sput-object v1, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    .line 33
    sput-object v1, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/zte/retrieve/cloud/account/AccountManager$1;

    invoke-direct {v0}, Lcom/zte/retrieve/cloud/account/AccountManager$1;-><init>()V

    sput-object v0, Lcom/zte/retrieve/cloud/account/AccountManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 31
    sput-boolean p0, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    return-void
.end method

.method static synthetic access$1(Lorg/zx/AuthComp/IMyService;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    sput-object p0, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    return-void
.end method

.method static synthetic access$2()V
    .locals 0

    .prologue
    .line 100
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->setAuthUrl()V

    return-void
.end method

.method private static bindRegisterService()V
    .locals 5

    .prologue
    .line 76
    const-string v1, "bindRegisterService start"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 77
    sget-object v1, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.zx.AuthComp.IMyService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/retrieve/cloud/account/AccountManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 78
    const/4 v4, 0x1

    .line 77
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 79
    .local v0, apkBindRes:Z
    if-nez v0, :cond_0

    .line 80
    const-string v1, "bind apk service fail"

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bindRegisterService context="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMyService()Lorg/zx/AuthComp/IMyService;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    return-object v0
.end method

.method public static getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 158
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getMyService()Lorg/zx/AuthComp/IMyService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 159
    const/4 v1, 0x0

    .line 169
    .local v1, token:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 161
    .end local v1           #token:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 163
    .restart local v1       #token:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v2}, Lorg/zx/AuthComp/IMyService;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account mgr get token info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getUserAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, username:Ljava/lang/String;
    const-string v3, "email"

    invoke-static {v2, v3}, Lcom/zte/retrieve/cloud/account/AccountManager;->parseUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 143
    .end local v0           #email:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 138
    .restart local v0       #email:Ljava/lang/String;
    :cond_0
    const-string v3, "mobile"

    invoke-static {v2, v3}, Lcom/zte/retrieve/cloud/account/AccountManager;->parseUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, mobile:Ljava/lang/String;
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, username:Ljava/lang/String;
    const-string v1, "uid"

    invoke-static {v0, v1}, Lcom/zte/retrieve/cloud/account/AccountManager;->parseUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, username:Ljava/lang/String;
    sget-object v2, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    if-nez v2, :cond_0

    .line 116
    const/4 v1, 0x0

    .line 124
    :goto_0
    return-object v1

    .line 119
    :cond_0
    :try_start_0
    sget-object v2, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v2}, Lorg/zx/AuthComp/IMyService;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account mgr get token info = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountManager init mIsServiceConnected = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lcom/zte/retrieve/cloud/account/AccountManager;->setAppContext2Register(Landroid/content/Context;)V

    .line 59
    sget-boolean v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    if-nez v0, :cond_0

    .line 60
    const-string v0, "mIsServiceConnected return"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/zte/retrieve/cloud/account/AccountManager;->bindRegisterService()V

    .line 64
    :cond_0
    return-void
.end method

.method public static isRegisterServiceConnected()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    return v0
.end method

.method private static parseUserInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "username"
    .parameter "type"

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 153
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const/4 v3, 0x0

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private static setAppContext2Register(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    sget-object v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 68
    sput-object p0, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    .line 69
    :cond_0
    return-void
.end method

.method private static setAuthUrl()V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getDefaultLoginURL()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, defaultLoginURL:Ljava/lang/String;
    sget-object v2, Lcom/zte/retrieve/cloud/account/AccountManager;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v2, v0}, Lorg/zx/AuthComp/IMyService;->setServerAddr(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDefaultLoginURL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unBindRegisterService(Z)V
    .locals 2
    .parameter "mIsServiceBinded"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    sget-object v0, Lcom/zte/retrieve/cloud/account/AccountManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mAppContext:Landroid/content/Context;

    sget-object v1, Lcom/zte/retrieve/cloud/account/AccountManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 92
    const/4 p0, 0x0

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/retrieve/cloud/account/AccountManager;->mIsServiceConnected:Z

    goto :goto_0
.end method
