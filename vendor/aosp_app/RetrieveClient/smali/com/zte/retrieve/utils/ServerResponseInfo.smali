.class public Lcom/zte/retrieve/utils/ServerResponseInfo;
.super Ljava/lang/Object;
.source "ServerResponseInfo.java"


# static fields
.field public static final AUTH_CODE:Ljava/lang/String; = "authcode"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static final NICKNAME:Ljava/lang/String; = "nickname"

.field public static final RESCODE:Ljava/lang/String; = "rescode"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final UID:Ljava/lang/String; = "uid"


# instance fields
.field private authcode:I

.field private email:Ljava/lang/String;

.field private mobile:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private resCode:I

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthcode()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->authcode:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getResCode()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->resCode:I

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthcode(I)V
    .locals 0
    .parameter "authcode"

    .prologue
    .line 40
    iput p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->authcode:I

    .line 41
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->email:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .parameter "mobile"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->mobile:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .parameter "nickname"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->nickname:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setResCode(I)V
    .locals 0
    .parameter "resCode"

    .prologue
    .line 32
    iput p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->resCode:I

    .line 33
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->token:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/zte/retrieve/utils/ServerResponseInfo;->uid:Ljava/lang/String;

    .line 49
    return-void
.end method
