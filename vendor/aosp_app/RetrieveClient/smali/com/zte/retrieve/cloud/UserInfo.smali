.class public Lcom/zte/retrieve/cloud/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private IMEI:Ljava/lang/String;

.field private securityNumber:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->securityNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/retrieve/cloud/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isUsernameValid(Ljava/lang/String;)Z
    .locals 2
    .parameter "username"

    .prologue
    const/4 v0, 0x1

    .line 66
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isEmail(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {p1}, Lcom/zte/retrieve/utils/TextHelper;->isPhoneNum(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .parameter "iMEI"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->IMEI:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSecurityNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "securityNumber"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->securityNumber:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->token:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->uid:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->userAgent:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/retrieve/cloud/UserInfo;->username:Ljava/lang/String;

    .line 35
    return-void
.end method
