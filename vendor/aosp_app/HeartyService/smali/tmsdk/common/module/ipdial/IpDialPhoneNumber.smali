.class public final Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mName:Ljava/lang/String;

.field zw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "phoneNumber"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 29
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    iget-object v1, p1, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 53
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setNamePhoneNumber(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)V
    .locals 1
    .parameter "nameNumber"

    .prologue
    .line 69
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->mName:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 61
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;->zw:Ljava/lang/String;

    .line 62
    return-void
.end method
