.class public Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;
.super Landroid/preference/Preference;
.source "PrxmDevicePreference.java"


# static fields
.field private static final PATH_LOSS_LEVEL:I = 0x4


# instance fields
.field private deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

.field private deviceName:Landroid/widget/TextView;

.field private devicePathLoss:Landroid/widget/ImageView;

.field private deviceSetting:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V
    .locals 1
    .parameter "context"
    .parameter "deviceInfo"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 80
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 81
    return-void
.end method


# virtual methods
.method public getDeviceInfo()Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 90
    const v6, 0x7f09001a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceName:Landroid/widget/TextView;

    .line 91
    const v6, 0x7f09001b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceSetting:Landroid/widget/TextView;

    .line 92
    const v6, 0x7f09001c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->devicePathLoss:Landroid/widget/ImageView;

    .line 95
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, displayName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrxmDevicePreference.onBindView(): name is null, use address instead ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceName:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v7}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getLinkLossLevel()B

    move-result v7

    invoke-static {v6, v7}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getAlertLevelString(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, linkLossLevel:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v7}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getPathLossLevel()B

    move-result v7

    invoke-static {v6, v7}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getAlertLevelString(Landroid/content/Context;B)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, pathLossLevel:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceSetting:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070129

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v1

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentRssi()B

    move-result v6

    iget-object v7, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v7}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getRemoteTxPower()B

    move-result v7

    invoke-static {v6, v7}, Lcom/mediatek/bluetooth/prx/monitor/PrxmUtils;->getPathLoss(BB)B

    move-result v5

    .line 109
    .local v5, pathloss:B
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    invoke-virtual {v6}, Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;->getCurrentState()B

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    .line 111
    .local v1, level:I
    :goto_0
    const/4 v6, 0x4

    if-le v1, v6, :cond_2

    const/4 v1, 0x4

    move v2, v1

    .line 112
    :goto_1
    iget-object v6, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->devicePathLoss:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 113
    return-void

    .line 109
    .end local v1           #level:I
    :cond_1
    mul-int/lit8 v6, v5, 0x4

    div-int/lit8 v6, v6, 0x64

    rsub-int/lit8 v1, v6, 0x4

    goto :goto_0

    .restart local v1       #level:I
    :cond_2
    move v2, v1

    .line 111
    .end local v1           #level:I
    .local v2, level:I
    goto :goto_1
.end method

.method public onDeviceAttributesChanged(Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;)V
    .locals 0
    .parameter "deviceInfo"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mediatek/bluetooth/prx/monitor/PrxmDevicePreference;->deviceInfo:Lcom/mediatek/bluetooth/service/BluetoothPrxmDevice;

    .line 126
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 127
    return-void
.end method
