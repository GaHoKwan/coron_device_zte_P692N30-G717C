.class public final Ltmsdk/common/module/ipdial/IpDialProvinceCity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field zx:Ljava/lang/String;

.field zy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "province"
    .parameter "city"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    .line 29
    if-eqz p2, :cond_1

    .end local p2
    :goto_1
    iput-object p2, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    .line 30
    return-void

    .line 28
    .restart local p1
    .restart local p2
    :cond_0
    const-string p1, ""

    goto :goto_0

    .line 29
    .end local p1
    :cond_1
    const-string p2, ""

    goto :goto_1
.end method

.method public constructor <init>(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V
    .locals 2
    .parameter "provinceCity"

    .prologue
    .line 33
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    iget-object v1, p1, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .parameter "city"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .parameter "province"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    .line 59
    :cond_0
    return-void
.end method

.method public setProvinceCity(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V
    .locals 1
    .parameter "provinceCity"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zx:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    .line 78
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->zy:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setCity(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
