.class public Lcom/dolby/ds1appUI/FragSwitches;
.super Landroid/app/Fragment;
.source "FragSwitches.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mA2dpConnectionState:I

.field private mActivity:Landroid/app/Activity;

.field private mDsClient:Landroid/dolby/DsClient;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field mHeadset_plug:I

.field private mMobileLayout:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

.field private mdeButton:Landroid/widget/ToggleButton;

.field private mdeText:Landroid/widget/TextView;

.field private mqm_de:Landroid/widget/ImageView;

.field private mqm_sv:Landroid/widget/ImageView;

.field private mqm_vl:Landroid/widget/ImageView;

.field private msvButton:Landroid/widget/ToggleButton;

.field private msvText:Landroid/widget/TextView;

.field private mvlButton:Landroid/widget/ToggleButton;

.field private mvlText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    .line 60
    iput v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    .line 61
    iput v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    .line 63
    new-instance v0, Lcom/dolby/ds1appUI/FragSwitches$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/FragSwitches$1;-><init>(Lcom/dolby/ds1appUI/FragSwitches;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/dolby/DsClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/FragSwitches;Landroid/dolby/DsClientSettings;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragSwitches;->getVirtualizer(Landroid/dolby/DsClientSettings;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dolby/ds1appUI/FragSwitches;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/dolby/ds1appUI/FragSwitches;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    return p1
.end method

.method private getVirtualizer(Landroid/dolby/DsClientSettings;)Z
    .locals 2
    .parameter "selectedProfileSettings"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getSpeakerVirtualizerOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/MainActivity;->isMonoSpeaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V

    .line 311
    :cond_0
    iget v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 312
    :cond_1
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getHeadphoneVirtualizerOn()Z

    move-result v0

    .line 314
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getSpeakerVirtualizerOn()Z

    move-result v0

    goto :goto_0
.end method

.method private setVirtualizer(Landroid/dolby/DsClientSettings;Z)V
    .locals 4
    .parameter "selectedProfileSettings"
    .parameter "on"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 280
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v1}, Lcom/dolby/ds1appUI/MainActivity;->isMonoSpeaker()Z

    move-result v0

    .line 281
    .local v0, isMonoSpeaker:Z
    iget v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 294
    :cond_1
    iget v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    if-ne v1, v3, :cond_3

    .line 296
    :cond_2
    invoke-virtual {p1, p2}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V

    .line 305
    :goto_0
    return-void

    .line 300
    :cond_3
    if-eqz v0, :cond_4

    .line 301
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V

    goto :goto_0

    .line 303
    :cond_4
    invoke-virtual {p1, p2}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 7
    .parameter "activity"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 106
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    .line 115
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    move-object v4, v0

    iput-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v4

    iput-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    .line 130
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 131
    .local v1, am:Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    :goto_0
    iput v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    .line 133
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v3, headsetFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void

    .line 116
    .end local v1           #am:Landroid/media/AudioManager;
    .end local v3           #headsetFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 117
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement IDsFragObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 123
    .restart local v2       #e:Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement IDsFragSwitchesObserver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #am:Landroid/media/AudioManager;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 229
    .local v1, id:I
    :try_start_0
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v2

    .line 230
    .local v2, selectedProfile:I
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7, v2}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 232
    .local v3, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    packed-switch v1, :pswitch_data_0

    .line 275
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4, v2, v3}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    .line 276
    .end local v2           #selectedProfile:I
    .end local v3           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :goto_1
    return-void

    .line 234
    .restart local v2       #selectedProfile:I
    .restart local v3       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :pswitch_1
    :try_start_1
    iget v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v4}, Lcom/dolby/ds1appUI/MainActivity;->isMonoSpeaker()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 270
    .end local v2           #selectedProfile:I
    .end local v3           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_1

    .line 238
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #selectedProfile:I
    .restart local v3       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/TextView;->cancelLongPress()V

    .line 239
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/dolby/ds1appUI/FragSwitches;->setVirtualizer(Landroid/dolby/DsClientSettings;Z)V

    .line 240
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    .line 241
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5, v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 242
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4, v2, v3}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/TextView;->cancelLongPress()V

    .line 246
    invoke-virtual {v3}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    .line 247
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    .line 248
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5, v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 249
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4, v2, v3}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 246
    goto :goto_2

    .line 252
    :pswitch_3
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/TextView;->cancelLongPress()V

    .line 253
    invoke-virtual {v3}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_3
    invoke-virtual {v3, v4}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    .line 254
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->setUserProfilePopulated()V

    .line 255
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5, v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->setProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    goto/16 :goto_0

    :cond_2
    move v4, v5

    .line 253
    goto :goto_3

    .line 258
    :pswitch_4
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    const v5, 0x7f060028

    const v6, 0x7f060029

    invoke-interface {v4, p1, v5, v6}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 261
    :pswitch_5
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    const v5, 0x7f06002a

    const v6, 0x7f06002b

    invoke-interface {v4, p1, v5, v6}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 264
    :pswitch_6
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    const v5, 0x7f06002c

    const v6, 0x7f06002d

    invoke-interface {v4, p1, v5, v6}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->displayTooltip(Landroid/view/View;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x7f0a0015
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 19
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 157
    const v17, 0x7f030007

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 159
    .local v14, v:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f08

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    .line 160
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    .line 161
    .local v12, textIds:[I
    move-object v4, v12

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v10, :cond_2

    aget v8, v4, v7

    .line 162
    .local v8, id:I
    invoke-virtual {v14, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 163
    .local v13, tv:Landroid/widget/TextView;
    if-eqz v13, :cond_0

    .line 164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 165
    sget-object v17, Lcom/dolby/ds1appUI/Assets$FontType;->LIGHT:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 167
    :cond_1
    sget-object v17, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static/range {v17 .. v17}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 172
    .end local v8           #id:I
    .end local v13           #tv:Landroid/widget/TextView;
    :cond_2
    new-instance v11, Lcom/dolby/ds1appUI/ToggleSlideListener;

    invoke-direct {v11}, Lcom/dolby/ds1appUI/ToggleSlideListener;-><init>()V

    .line 174
    .local v11, slideListener:Lcom/dolby/ds1appUI/ToggleSlideListener;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 176
    .local v6, buttonids:[I
    move-object v4, v6

    array-length v10, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_4

    aget v5, v4, v7

    .line 177
    .local v5, bid:I
    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 178
    .local v15, v2:Landroid/view/View;
    if-eqz v15, :cond_3

    .line 179
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 181
    invoke-virtual {v15, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 183
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 188
    .end local v5           #bid:I
    .end local v15           #v2:Landroid/view/View;
    :cond_4
    const v17, 0x7f0a001a

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    .line 189
    const v17, 0x7f0a001c

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    .line 190
    const v17, 0x7f0a001e

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    .line 191
    const v17, 0x7f0a0019

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    .line 192
    const v17, 0x7f0a0017

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    .line 193
    const v17, 0x7f0a0015

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    .line 194
    const v17, 0x7f0a0018

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->msvText:Landroid/widget/TextView;

    .line 195
    const v17, 0x7f0a0016

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    .line 196
    const v17, 0x7f0a0014

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dolby/ds1appUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    .line 198
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    .line 199
    .local v16, viewobj:[Landroid/view/View;
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/view/View;
    array-length v10, v4

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v10, :cond_6

    aget-object v9, v4, v7

    .line 200
    .local v9, iv:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 199
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 206
    .end local v9           #iv:Landroid/view/View;
    :cond_6
    return-object v14

    .line 160
    :array_0
    .array-data 0x4
        0x18t 0x0t 0xat 0x7ft
        0x16t 0x0t 0xat 0x7ft
        0x14t 0x0t 0xat 0x7ft
    .end array-data

    .line 174
    :array_1
    .array-data 0x4
        0x19t 0x0t 0xat 0x7ft
        0x17t 0x0t 0xat 0x7ft
        0x15t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    .line 350
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    if-nez v1, :cond_0

    .line 351
    const/4 v1, 0x0

    .line 365
    :goto_0
    return v1

    .line 353
    :cond_0
    const/4 v0, 0x0

    .line 354
    .local v0, diag:Landroid/app/DialogFragment;
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_1

    .line 355
    const v1, 0x7f06002c

    const v2, 0x7f06002d

    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/TooltipDialog;->newInstance(II)Lcom/dolby/ds1appUI/TooltipDialog;

    move-result-object v0

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_2

    .line 358
    const v1, 0x7f06002a

    const v2, 0x7f06002b

    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/TooltipDialog;->newInstance(II)Lcom/dolby/ds1appUI/TooltipDialog;

    move-result-object v0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-ne p1, v1, :cond_3

    .line 361
    const v1, 0x7f060028

    const v2, 0x7f060029

    invoke-static {v1, v2}, Lcom/dolby/ds1appUI/TooltipDialog;->newInstance(II)Lcom/dolby/ds1appUI/TooltipDialog;

    move-result-object v0

    .line 363
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "TooltipDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 365
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onProfileSettingsChanged(Landroid/dolby/DsClientSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragSwitches;->getVirtualizer(Landroid/dolby/DsClientSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 328
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 218
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragSwitches;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragSwitchesObserver;->switchesAreAlive()V

    .line 221
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 331
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    if-eqz v5, :cond_0

    .line 332
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 333
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 334
    iget v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mHeadset_plug:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mA2dpConnectionState:I

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/MainActivity;->isMonoSpeaker()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 336
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->msvText:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    :cond_0
    const/4 v5, 0x7

    new-array v4, v5, [Landroid/view/View;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeButton:Landroid/widget/ToggleButton;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlButton:Landroid/widget/ToggleButton;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragSwitches;->mdeText:Landroid/widget/TextView;

    aput-object v5, v4, v7

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mvlText:Landroid/widget/TextView;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_sv:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_de:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragSwitches;->mqm_vl:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    .line 341
    .local v4, viewobj:[Landroid/view/View;
    move-object v0, v4

    .local v0, arr$:[Landroid/view/View;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 342
    .local v2, iv:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 343
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v2           #iv:Landroid/view/View;
    :cond_2
    return-void
.end method
