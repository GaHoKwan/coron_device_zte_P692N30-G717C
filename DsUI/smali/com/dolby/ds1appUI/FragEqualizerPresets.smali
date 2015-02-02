.class public Lcom/dolby/ds1appUI/FragEqualizerPresets;
.super Landroid/app/Fragment;
.source "FragEqualizerPresets.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/dolby/ds1appUI/IEqualizerChangeListener;


# static fields
.field private static final CUSTOM_EQ:I = 0x4

.field private static final CUSTOM_EQ_MOBILE:I = 0x3

.field private static final EQUALIZER_SETTING_CUSTOM:I = -0x1


# instance fields
.field private mDolbyClientConnected:Z

.field private mDsClient:Landroid/dolby/DsClient;

.field private mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field private mIEqPresets:Landroid/widget/GridView;

.field private mMobileLayout:Z

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    .line 64
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/FragEqualizerPresets;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/FragEqualizerPresets;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/FragEqualizerPresets;)Lcom/dolby/ds1appUI/EqualizerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    return-object v0
.end method

.method private chooseEqualizerSetting(I)V
    .locals 5
    .parameter "preset"

    .prologue
    .line 463
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v3, :cond_0

    .line 496
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 468
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 469
    const/4 p1, -0x1

    .line 473
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 476
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 485
    .local v1, selectedProfile:I
    :try_start_1
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, v1}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 492
    .local v2, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->setUserProfilePopulated()V

    .line 494
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 495
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v3, v1, v2}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0

    .line 477
    .end local v1           #selectedProfile:I
    .end local v2           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 486
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #selectedProfile:I
    :catch_1
    move-exception v0

    .line 487
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 6
    .parameter "preset"

    .prologue
    .line 411
    const-string v3, "DsUI::MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chooseEqualizerSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 414
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 415
    const/4 p1, -0x1

    .line 419
    :cond_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-nez v3, :cond_1

    .line 448
    :goto_0
    return-void

    .line 425
    :cond_1
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 432
    .local v1, selectedProfile:I
    const-string v3, "DsUI::MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDsClient.setIeqPreset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :try_start_1
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/dolby/DsClient;->setIeqPreset(II)V

    .line 435
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 436
    .local v2, updated:Landroid/dolby/DsClientSettings;
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, v1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 443
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 445
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 447
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->chooseEqualizerSetting(I)V

    goto :goto_0

    .line 426
    .end local v1           #selectedProfile:I
    .end local v2           #updated:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 428
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 437
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #selectedProfile:I
    :catch_1
    move-exception v0

    .line 438
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 439
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 499
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;->useDsApiOnUiEvent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 507
    .local v3, selectedProfile:I
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 514
    .local v4, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 516
    .local v2, id:I
    const v5, 0x7f0a000d

    if-ne v5, v2, :cond_2

    .line 517
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->chooseEqualizerSettinginUI(I)V

    .line 518
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 519
    .local v1, eqText:Landroid/widget/TextView;
    const v5, 0x7f06001b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 508
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v2           #id:I
    .end local v3           #selectedProfile:I
    .end local v4           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 520
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #id:I
    .restart local v3       #selectedProfile:I
    .restart local v4       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :cond_2
    const v5, 0x7f0a0006

    if-ne v5, v2, :cond_0

    .line 521
    invoke-direct {p0, v3, v4}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->resetGEqOnUserClick(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0
.end method

.method private resetGEqOnUserClick(ILandroid/dolby/DsClientSettings;)V
    .locals 1
    .parameter "selectedProfile"
    .parameter "selectedProfileSettings"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->resetEqUserGains()V

    .line 528
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0, p1, p2}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    .line 529
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 79
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    .line 93
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 87
    .restart local v1       #e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragEqualizerPresetsObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 200
    .local v0, id:I
    const v1, 0x7f0a000b

    if-ne v1, v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    const v2, 0x7f060026

    const v3, 0x7f060027

    invoke-interface {v1, p1, v2, v3}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->displayTooltip(Landroid/view/View;II)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    .line 220
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDolbyClientConnected:Z

    .line 225
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 107
    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 109
    .local v7, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    .line 111
    const/4 v8, 0x2

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 112
    .local v4, textIds:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget v2, v0, v1

    .line 113
    .local v2, id:I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 114
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 115
    iget-boolean v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v8, :cond_1

    .line 116
    sget-object v8, Lcom/dolby/ds1appUI/Assets$FontType;->LIGHT:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 112
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    sget-object v8, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    .line 122
    .end local v2           #id:I
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_2
    iget-boolean v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v8, :cond_4

    .line 123
    const v8, 0x7f0a0005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 124
    .restart local v6       #tv:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 125
    sget-object v8, Lcom/dolby/ds1appUI/Assets$FontType;->MEDIUM:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 127
    :cond_3
    const v8, 0x7f0a0004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 128
    .restart local v6       #tv:Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 129
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_4
    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    .line 135
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v8, :cond_5

    .line 136
    new-instance v8, Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030001

    new-instance v11, Lcom/dolby/ds1appUI/FragEqualizerPresets$1;

    invoke-direct {v11, p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets$1;-><init>(Lcom/dolby/ds1appUI/FragEqualizerPresets;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/dolby/ds1appUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/dolby/ds1appUI/EqualizerAdapter$IPresetListener;)V

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    .line 144
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    new-instance v9, Lcom/dolby/ds1appUI/FragEqualizerPresets$2;

    invoke-direct {v9, p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets$2;-><init>(Lcom/dolby/ds1appUI/FragEqualizerPresets;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    :cond_5
    const v8, 0x7f0a000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 160
    .local v5, theV:Landroid/view/View;
    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 165
    :cond_6
    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 166
    if-eqz v5, :cond_7

    .line 167
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 172
    :cond_7
    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    .line 173
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v8, :cond_8

    .line 174
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 178
    :cond_8
    return-object v7

    .line 111
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0xat 0x7ft
        0x5t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public onDsOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 231
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 5
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 258
    .local v2, settings:Landroid/dolby/DsClientSettings;
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, p1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 259
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 266
    .local v1, selectedProfile:I
    if-ne p1, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 269
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v3}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->selectIEqPresetInUI(I)V

    .line 271
    .end local v1           #selectedProfile:I
    .end local v2           #settings:Landroid/dolby/DsClientSettings;
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public onEqualizerEditStart()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 213
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->onEqualizerEditStart()V

    .line 214
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 533
    iget-boolean v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    if-eqz v2, :cond_0

    .line 534
    const v2, 0x7f060026

    const v3, 0x7f060027

    invoke-static {v2, v3}, Lcom/dolby/ds1appUI/TooltipDialog;->newInstance(II)Lcom/dolby/ds1appUI/TooltipDialog;

    move-result-object v0

    .line 535
    .local v0, diag:Landroid/app/DialogFragment;
    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 536
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TooltipDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 539
    .end local v0           #diag:Landroid/app/DialogFragment;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 249
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 237
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 243
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 190
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragEqualizerPresetsObserver;->equalizerPresetsAreAlive()V

    .line 193
    :cond_0
    return-void
.end method

.method public selectIEqPresetInUI(I)V
    .locals 13
    .parameter "preset"

    .prologue
    const v12, 0x7f0a0004

    const v11, 0x7f06001b

    const v10, 0x7f060005

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 314
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    if-ne v7, v6, :cond_0

    .line 315
    if-ne p1, v9, :cond_0

    .line 316
    const/4 p1, 0x3

    .line 320
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    .line 322
    .local v5, v:Landroid/view/View;
    iget-object v7, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v7, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->setSelection(I)V

    .line 324
    iget-boolean v7, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mMobileLayout:Z

    if-nez v7, :cond_7

    .line 328
    :try_start_0
    sget-object v7, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v8, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v7, v8}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 335
    .local v2, p:I
    const v7, 0x7f0a000d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 336
    .local v3, theV:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 337
    if-ne p1, v9, :cond_4

    :goto_0
    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    .line 340
    :cond_1
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 341
    .local v1, eqText:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 342
    if-ne p1, v9, :cond_5

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_2
    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 346
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v6, :cond_3

    .line 347
    if-ne p1, v9, :cond_6

    const v6, 0x7f060015

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .end local v2           #p:I
    .end local v3           #theV:Landroid/view/View;
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->updateGraphicEqInUI()V

    .line 362
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_4
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v6}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_4

    .line 337
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #p:I
    .restart local v3       #theV:Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 342
    .restart local v1       #eqText:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 347
    .restart local v4       #tv:Landroid/widget/TextView;
    :cond_6
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->getItem(I)Lcom/dolby/ds1appUI/EqualizerSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/ds1appUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 350
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v2           #p:I
    .end local v3           #theV:Landroid/view/View;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_7
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    .restart local v1       #eqText:Landroid/widget/TextView;
    if-eqz v1, :cond_8

    .line 352
    const/4 v6, 0x3

    if-ne p1, v6, :cond_9

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    :cond_8
    const v6, 0x7f0a0005

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 356
    .restart local v4       #tv:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v6, :cond_3

    .line 357
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v6, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->getItem(I)Lcom/dolby/ds1appUI/EqualizerSetting;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dolby/ds1appUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 352
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_9
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 277
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    .line 278
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 283
    .local v0, theFragV:Landroid/view/View;
    const v2, 0x7f0a0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 284
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 285
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 288
    :cond_1
    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 289
    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 293
    :cond_2
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 299
    :cond_3
    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 300
    if-eqz v1, :cond_4

    .line 301
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 302
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 306
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 309
    :cond_5
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    .line 310
    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 7

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 366
    .local v2, profile:Landroid/dolby/DsClientSettings;
    const/4 v4, 0x4

    .line 368
    .local v4, vis:I
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 369
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v1

    .line 370
    .local v1, n:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 371
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v1}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 373
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/dolby/DsClientSettings;->getGeqOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    const/4 v4, 0x0

    .line 382
    .end local v1           #n:I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 383
    .local v3, theV:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 384
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 386
    .end local v3           #theV:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public updateGraphicEqInUI()V
    .locals 5

    .prologue
    .line 391
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v2

    .line 392
    .local v2, selectedProfile:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 407
    .end local v2           #selectedProfile:I
    :cond_0
    :goto_0
    return-void

    .line 395
    .restart local v2       #selectedProfile:I
    :cond_1
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, v2}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    .local v1, profile:Landroid/dolby/DsClientSettings;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragEqualizerPresets;->setResetEqButtonVisibility()V

    goto :goto_0

    .line 399
    .end local v1           #profile:Landroid/dolby/DsClientSettings;
    .end local v2           #selectedProfile:I
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 401
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragEqualizerPresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method
