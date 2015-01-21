.class public final Ltmsdk/common/module/antitheft/AntitheftProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROPERTY_HELPER:Ljava/lang/String; = "helper"

.field public static final PROPERTY_PASSWORD:Ljava/lang/String; = "password"

.field public static final PROPERTY_QQ_NUM:Ljava/lang/String; = "qq_num"

.field public static final PROPERTY_SERVER_NUM:Ljava/lang/String; = "server_num"


# instance fields
.field public mProperty:Ltmsdkobf/kf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ltmsdkobf/kf;

    const-string v1, "AntitheftProperty"

    invoke-direct {v0, v1}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    .line 20
    return-void
.end method

.method public static final encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-object v1

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Ltmsdk/common/tcc/TccCryptor;->encrypt([B[B)[B

    move-result-object v0

    .line 70
    .local v0, encryPswd:[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltmsdk/common/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getBindQQNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "qq_num"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHelperNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword(Z)Ljava/lang/String;
    .locals 5
    .parameter "encrypt"

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v3, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v4, "password"

    invoke-virtual {v3, v4, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, password:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 38
    :goto_0
    return-object v2

    .line 34
    :cond_0
    if-nez p1, :cond_1

    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ltmsdk/common/utils/Base64;->decode([BI)[B

    move-result-object v0

    .line 36
    .local v0, data:[B
    new-instance v1, Ljava/lang/String;

    .end local v1           #password:Ljava/lang/String;
    invoke-static {v0, v2}, Ltmsdk/common/tcc/TccCryptor;->decrypt([B[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .end local v0           #data:[B
    .restart local v1       #password:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 38
    goto :goto_0
.end method

.method public getWebServerNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "server_num"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBindQQNum(Ljava/lang/String;)V
    .locals 3
    .parameter "qqNum"

    .prologue
    .line 58
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "qq_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public setHelperNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "helperNum"

    .prologue
    .line 42
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "helper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 43
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 4
    .parameter "password"

    .prologue
    .line 23
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "password"

    invoke-static {p1}, Ltmsdk/common/module/antitheft/AntitheftProperty;->encryptPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWebServerNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "serverNum"

    .prologue
    .line 50
    iget-object v0, p0, Ltmsdk/common/module/antitheft/AntitheftProperty;->mProperty:Ltmsdkobf/kf;

    const-string v1, "server_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Ltmsdkobf/kf;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method
