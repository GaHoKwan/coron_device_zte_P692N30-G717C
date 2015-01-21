.class public final Ltmsdk/common/module/ipdial/IpDialManagerSetting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field zr:I

.field zs:Ljava/lang/String;

.field zt:Ltmsdk/common/module/ipdial/IpDialProvinceCity;

.field zu:Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

.field zv:Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zr:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zs:Ljava/lang/String;

    .line 41
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-direct {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zt:Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    .line 42
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    invoke-direct {v0}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zu:Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    .line 43
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    invoke-direct {v0}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zv:Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    .line 44
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/ipdial/IpDialManagerSetting;)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 47
    invoke-direct {p0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->copyFrom(Ltmsdk/common/module/ipdial/IpDialManagerSetting;)V

    .line 49
    return-void
.end method


# virtual methods
.method public copyFrom(Ltmsdk/common/module/ipdial/IpDialManagerSetting;)V
    .locals 1
    .parameter "setting"

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget v0, p1, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zr:I

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->setIpDialMode(I)V

    .line 58
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zs:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->setIpHeader(Ljava/lang/String;)V

    .line 59
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zt:Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->setLocalPhoneLocation(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V

    .line 60
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zu:Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->setExcludedAreaList(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V

    .line 61
    iget-object v0, p1, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zv:Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->setExcludedPhoneNumberList(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V

    .line 63
    :cond_0
    return-void
.end method

.method public getExcludedAreaList()Ltmsdk/common/module/ipdial/IpDialProvinceCityList;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zu:Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    return-object v0
.end method

.method public getExcludedPhoneNumberList()Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zv:Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    return-object v0
.end method

.method public getIpDialMode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zr:I

    return v0
.end method

.method public getIpHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zs:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPhoneLocation()Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zt:Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    return-object v0
.end method

.method public setExcludedAreaList(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 98
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zu:Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->copyFrom(Ltmsdk/common/module/ipdial/IpDialProvinceCityList;)V

    .line 99
    return-void
.end method

.method public setExcludedPhoneNumberList(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V
    .locals 1
    .parameter "list"

    .prologue
    .line 106
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zv:Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->copyFrom(Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;)V

    .line 107
    return-void
.end method

.method public setIpDialMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 71
    iput p1, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zr:I

    .line 72
    return-void
.end method

.method public setIpHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "ipHeader"

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zs:Ljava/lang/String;

    .line 83
    :cond_0
    return-void
.end method

.method public setLocalPhoneLocation(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V
    .locals 1
    .parameter "provinceCity"

    .prologue
    .line 90
    iget-object v0, p0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->zt:Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setProvinceCity(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)V

    .line 91
    return-void
.end method
