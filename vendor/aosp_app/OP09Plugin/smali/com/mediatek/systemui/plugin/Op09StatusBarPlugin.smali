.class public Lcom/mediatek/systemui/plugin/Op09StatusBarPlugin;
.super Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;
.source "Op09StatusBarPlugin.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/mediatek/systemui/ext/DefaultStatusBarPlugin;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getDataActivityIconList(IZ)[I
    .locals 1
    .parameter "simColor"
    .parameter "showSimIndicator"

    .prologue
    .line 44
    if-ltz p1, :cond_0

    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_ACTIVITY:[[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 45
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA_ACTIVITY:[[I

    aget-object v0, v0, p1

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataNetworkTypeIconGemini(Lcom/mediatek/systemui/ext/NetworkType;I)I
    .locals 2
    .parameter "networkType"
    .parameter "simColorId"

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/mediatek/systemui/ext/NetworkType;->getTypeId()I

    move-result v0

    .line 37
    .local v0, typeId:I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 38
    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->NETWORK_TYPE:[[I

    aget-object v1, v1, v0

    aget v1, v1, p2

    .line 40
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDataTypeIconListGemini(ZLcom/mediatek/systemui/ext/DataType;)[I
    .locals 3
    .parameter "roaming"
    .parameter "dataType"

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, iconList:[I
    sget-object v1, Lcom/mediatek/systemui/plugin/TelephonyIcons;->DATA:[[I

    invoke-virtual {p2}, Lcom/mediatek/systemui/ext/DataType;->getTypeId()I

    move-result v2

    aget-object v0, v1, v2

    .line 32
    return-object v0
.end method

.method public getMobileGroupVisible()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public getPluginResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/mediatek/systemui/plugin/Op09StatusBarPlugin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthNullIconGemini(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 26
    const v0, 0x7f020114

    return v0
.end method

.method public getWifiInOutIconList()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->WIFI_INOUT_ICON:[I

    return-object v0
.end method

.method public getWifiSignalStrengthIconList()[I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/mediatek/systemui/plugin/TelephonyIcons;->WIFI_STRENGTH_ICON:[I

    return-object v0
.end method

.method public hideAlwaysAskView()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public supportDataConnectInTheFront()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
