.class public Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.super Landroid/app/Activity;
.source "WiFiTestActivity.java"


# static fields
.field static final ATPARAM_INDEX_ANTENNA:I = 0x5

.field static final ATPARAM_INDEX_BANDWIDTH:I = 0xf

.field static final ATPARAM_INDEX_COMMAND:I = 0x1

.field static final ATPARAM_INDEX_CWMODE:I = 0x41

.field static final ATPARAM_INDEX_GI:I = 0x10

.field static final ATPARAM_INDEX_PACKCONTENT:I = 0xc

.field static final ATPARAM_INDEX_PACKCOUNT:I = 0x7

.field static final ATPARAM_INDEX_PACKINTERVAL:I = 0x8

.field static final ATPARAM_INDEX_PACKLENGTH:I = 0x6

.field static final ATPARAM_INDEX_POWER:I = 0x2

.field static final ATPARAM_INDEX_PREAMBLE:I = 0x4

.field static final ATPARAM_INDEX_QOS_QUEUE:I = 0xe

.field static final ATPARAM_INDEX_RATE:I = 0x3

.field static final ATPARAM_INDEX_RETRY_LIMIT:I = 0xd

.field static final ATPARAM_INDEX_TEMP_COMPENSATION:I = 0x9

.field static final ATPARAM_INDEX_TRANSMITCOUNT:I = 0x20

.field static final ATPARAM_INDEX_TXOP_LIMIT:I = 0xa

.field static final CHANNEL_0:I = 0x0

.field static final CHANNEL_1:I = 0x1

.field static final CHANNEL_11:I = 0xb

.field static final CHANNEL_12:I = 0xc

.field static final CHANNEL_13:I = 0xd

.field static final CHANNEL_14:I = 0xe

.field static final DIALOG_WIFI_ERROR:I = 0x3

.field static final DIALOG_WIFI_FAIL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/WiFiTest"


# instance fields
.field private mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    return-object v0
.end method


# virtual methods
.method protected checkWiFiChipState()V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, result:I
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    invoke-virtual {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->checkState(Landroid/content/Context;)I

    move-result v0

    .line 117
    sparse-switch v0, :sswitch_data_0

    .line 132
    :goto_0
    :sswitch_0
    return-void

    .line 119
    :sswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 123
    :sswitch_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x5920 -> :sswitch_0
        0x6620 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f0801df

    const/4 v3, 0x0

    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 138
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 168
    const-string v2, "EM/WiFiTest"

    const-string v3, "error dialog ID"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-object v1

    .line 140
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 141
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801d8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 142
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 143
    const v2, 0x7f0801d9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v2, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801da

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 156
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 157
    const v2, 0x7f0801db

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 158
    new-instance v2, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$2;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 166
    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->checkWiFiChipState()V

    .line 82
    return-void
.end method

.method protected updateWifiChannel(Lcom/mediatek/engineermode/wifi/ChannelInfo;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;)V
    .locals 5
    .parameter "channel"
    .parameter
    .parameter "channelSpinner"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/engineermode/wifi/ChannelInfo;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/Spinner;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, channelAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 93
    const-string v1, "EM/WiFiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter updateWifiChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-boolean v1, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p3, v4}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 98
    :cond_0
    invoke-virtual {p2, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mChannelSelect:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v0

    .line 100
    .local v0, number:I
    int-to-long v1, v0

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 101
    const-string v1, "EM/WiFiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The channel freq ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v0           #number:I
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v1, "EM/WiFiTest"

    const-string v2, "Wifi is not initialized"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
