.class public Lcom/dolby/ds1appUI/FragGraphicVisualizer;
.super Landroid/app/Fragment;
.source "FragGraphicVisualizer.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;
.implements Landroid/dolby/IDsVisualizerEvents;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolby/ds1appUI/IEqualizerChangeListener;


# static fields
.field private static final CUSTOM_EQ:I = 0x4

.field private static final CUSTOM_EQ_MOBILE:I = 0x3

.field private static final EQUALIZER_SETTING_CUSTOM:I = -0x1


# instance fields
.field mContainer:Landroid/view/ViewGroup;

.field private mDolbyClientConnected:Z

.field private mDsClient:Landroid/dolby/DsClient;

.field private mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field private mFrame:Landroid/widget/ImageView;

.field private mIEqPresets:Landroid/widget/GridView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMobileLayout:Z

.field private mPreset:I

.field private mQmIntEq:Landroid/view/View;

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

.field private mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 71
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    .line 73
    iput-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    iput-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcom/dolby/ds1appUI/FragGraphicVisualizer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)Lcom/dolby/ds1appUI/EqualizerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    return-object v0
.end method

.method private chooseEqualizerSetting(I)V
    .locals 5
    .parameter "preset"

    .prologue
    .line 617
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v3, :cond_0

    .line 650
    :goto_0
    return-void

    .line 621
    :cond_0
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 622
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 623
    const/4 p1, -0x1

    .line 627
    :cond_1
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 630
    :try_start_0
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 639
    .local v1, selectedProfile:I
    :try_start_1
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, v1}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 646
    .local v2, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;->setUserProfilePopulated()V

    .line 648
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 649
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v3, v1, v2}, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0

    .line 631
    .end local v1           #selectedProfile:I
    .end local v2           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 633
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 640
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #selectedProfile:I
    :catch_1
    move-exception v0

    .line 641
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 642
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method private chooseEqualizerSettinginUI(I)V
    .locals 7
    .parameter "preset"

    .prologue
    .line 562
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chooseEqualizerSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 565
    const/4 v4, 0x3

    if-ne p1, v4, :cond_0

    .line 566
    const/4 p1, -0x1

    .line 570
    :cond_0
    iget-boolean v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-nez v4, :cond_1

    .line 602
    :goto_0
    return-void

    .line 576
    :cond_1
    :try_start_0
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 583
    .local v2, selectedProfile:I
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDsClient.setIeqPreset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_1
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/dolby/DsClient;->setIeqPreset(II)V

    .line 586
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v2}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v3

    .line 587
    .local v3, updated:Landroid/dolby/DsClientSettings;
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5, v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 594
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 596
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v4}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v1

    .line 597
    .local v1, eq:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;->useDsApiOnUiEvent()Z

    move-result v4

    invoke-virtual {v1, v2, p1, v4}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    .line 599
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 601
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->chooseEqualizerSetting(I)V

    goto :goto_0

    .line 577
    .end local v1           #eq:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    .end local v2           #selectedProfile:I
    .end local v3           #updated:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 579
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 588
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #selectedProfile:I
    :catch_1
    move-exception v0

    .line 589
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 590
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 653
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;->useDsApiOnUiEvent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 661
    .local v3, selectedProfile:I
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 668
    .local v4, selectedProfileSettings:Landroid/dolby/DsClientSettings;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 670
    .local v2, id:I
    const v5, 0x7f0a000d

    if-ne v5, v2, :cond_2

    .line 671
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->chooseEqualizerSettinginUI(I)V

    .line 672
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0004

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 673
    .local v1, eqText:Landroid/widget/TextView;
    const v5, 0x7f06001b

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 662
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v2           #id:I
    .end local v3           #selectedProfile:I
    .end local v4           #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 664
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 674
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #id:I
    .restart local v3       #selectedProfile:I
    .restart local v4       #selectedProfileSettings:Landroid/dolby/DsClientSettings;
    :cond_2
    const v5, 0x7f0a0006

    if-ne v5, v2, :cond_0

    .line 675
    invoke-direct {p0, v3, v4}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->resetGEqOnUserClick(ILandroid/dolby/DsClientSettings;)V

    goto :goto_0
.end method

.method private resetGEqOnUserClick(ILandroid/dolby/DsClientSettings;)V
    .locals 2
    .parameter "selectedProfile"
    .parameter "selectedProfileSettings"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 682
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0, p1, p2}, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;->onProfileSettingsChanged(ILandroid/dolby/DsClientSettings;)V

    .line 683
    return-void
.end method


# virtual methods
.method public hideEqualizer()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->hide()V

    .line 377
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    .line 103
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
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

    .line 96
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 97
    .restart local v1       #e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragGraphicVisualizerObserver"

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
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    const v2, 0x7f060026

    const v3, 0x7f060027

    invoke-interface {v1, p1, v2, v3}, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;->displayTooltip(Landroid/view/View;II)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->onDolbyClientUseClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 247
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDolbyClientConnected:Z

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 117
    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 118
    .local v7, v:Landroid/view/View;
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    iput-object p2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    .line 122
    const/4 v8, 0x2

    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 123
    .local v4, textIds:[I
    move-object v0, v4

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 124
    .local v2, id:I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 125
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 126
    sget-object v8, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v2           #id:I
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_1
    const v8, 0x7f0a000c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFrame:Landroid/widget/ImageView;

    .line 131
    const v8, 0x7f0a0007

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/GridView;

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    .line 132
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v8, :cond_2

    .line 133
    new-instance v8, Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f030001

    new-instance v11, Lcom/dolby/ds1appUI/FragGraphicVisualizer$1;

    invoke-direct {v11, p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer$1;-><init>(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/dolby/ds1appUI/EqualizerAdapter;-><init>(Landroid/content/Context;ILcom/dolby/ds1appUI/EqualizerAdapter$IPresetListener;)V

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    .line 141
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    iget-object v9, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    new-instance v9, Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;

    invoke-direct {v9, p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer$2;-><init>(Lcom/dolby/ds1appUI/FragGraphicVisualizer;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    :cond_2
    const v8, 0x7f0a000d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 157
    .local v5, theV:Landroid/view/View;
    if-eqz v5, :cond_3

    .line 158
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 162
    :cond_3
    const v8, 0x7f0a0006

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 163
    if-eqz v5, :cond_4

    .line 164
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 169
    :cond_4
    const v8, 0x7f0a000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    .line 170
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 171
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 176
    :cond_5
    const v8, 0x7f0a0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/dolby/ds1appUI/GraphicVisualiser;

    iput-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    .line 177
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-virtual {v9, v8}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->setActivity(Lcom/dolby/ds1appUI/IDsActivityCommonTemp;)V

    .line 178
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v8

    iget-object v9, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v8, v9}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->setDsClient(Landroid/dolby/DsClient;)V

    .line 179
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v8}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->setEqualizerListener(Lcom/dolby/ds1appUI/IEqualizerChangeListener;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    .line 183
    iget-boolean v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-eqz v8, :cond_6

    .line 184
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 187
    :cond_6
    return-object v7

    .line 122
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
    .line 258
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 5
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 284
    :try_start_0
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 285
    .local v2, settings:Landroid/dolby/DsClientSettings;
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, p1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 286
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    .local v1, selectedProfile:I
    if-ne p1, v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 296
    add-int/lit8 v3, p2, -0x1

    invoke-virtual {p0, v3}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->selectIEqPresetInUI(I)V

    .line 298
    .end local v1           #selectedProfile:I
    .end local v2           #settings:Landroid/dolby/DsClientSettings;
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 289
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public onEqualizerEditStart()V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 213
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragGraphicVisualizerObserver;->onEqualizerEditStart()V

    .line 214
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 555
    const-string v0, "DsUI::MainActivity"

    const-string v1, "GraphicVisualiser fragment onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->setActiveStatus(Z)V

    .line 559
    :cond_0
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 0
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 276
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 264
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 270
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 542
    const-string v0, "DsUI::MainActivity"

    const-string v1, "GraphicVisualiser fragment onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030003

    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 545
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->setActiveStatus(Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 3
    .parameter "suspended"

    .prologue
    .line 238
    const-string v0, "DsUI::MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity.onVisualizerSuspended ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->setSuspended(Z)V

    .line 240
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 241
    return-void
.end method

.method public onVisualizerUpdate([F[F)V
    .locals 1
    .parameter "excitations"
    .parameter "gains"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    if-eqz p1, :cond_2

    .line 224
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0, p1}, Lcom/dolby/ds1appUI/GraphicVisualiser;->setExcitations([F)V

    .line 227
    :cond_2
    if-eqz p2, :cond_3

    .line 228
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0, p2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->onVisualizerUpdate([F)V

    .line 231
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint()V

    goto :goto_0
.end method

.method public registerVisualizer(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->setSuspended(Z)V

    .line 354
    if-eqz p1, :cond_0

    .line 357
    const-string v1, "DsUI::MainActivity"

    const-string v2, "registerVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1, p0}, Landroid/dolby/DsClient;->registerVisualizer(Landroid/dolby/IDsVisualizerEvents;)V

    .line 373
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v1, "DsUI::MainActivity"

    const-string v2, "unregisterVisualizer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1}, Landroid/dolby/DsClient;->unregisterVisualizer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 370
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public resetUserGains()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 398
    return-void
.end method

.method public resetUserGains(I)V
    .locals 4
    .parameter "selectedProfile"

    .prologue
    .line 382
    :try_start_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->resetUserGains(Z)V

    .line 383
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2, p1}, Landroid/dolby/DsClient;->resetProfile(I)V

    .line 384
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v1

    .line 385
    .local v1, updated:Landroid/dolby/DsClientSettings;
    sget-object v2, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v3, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2, v3, p1, v1}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 386
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v1           #updated:Landroid/dolby/DsClientSettings;
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public selectIEqPresetInUI(I)V
    .locals 14
    .parameter "preset"

    .prologue
    const/4 v7, 0x1

    const v13, 0x7f0a0004

    const v12, 0x7f06001b

    const v11, 0x7f060005

    const/4 v10, -0x1

    .line 402
    iget-boolean v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-ne v8, v7, :cond_0

    .line 403
    if-ne p1, v10, :cond_0

    .line 404
    const/4 p1, 0x3

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    .line 410
    .local v6, v:Landroid/view/View;
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v8, :cond_5

    .line 411
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v8, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->setSelection(I)V

    .line 416
    :goto_0
    iget-boolean v8, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-nez v8, :cond_a

    .line 420
    :try_start_0
    sget-object v8, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v9, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v8, v9}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 428
    .local v2, p:I
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 429
    .local v3, theTV:Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 430
    const/4 v8, 0x4

    if-eq v2, v8, :cond_6

    .line 431
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(I)V

    .line 437
    :cond_1
    :goto_1
    const v8, 0x7f0a000d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 438
    .local v4, theV:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 439
    if-ne p1, v10, :cond_7

    :goto_2
    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 442
    :cond_2
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 443
    .local v1, eqText:Landroid/widget/TextView;
    if-eqz v1, :cond_3

    .line 444
    if-ne p1, v10, :cond_8

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_3
    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 448
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v7, :cond_4

    .line 449
    if-ne p1, v10, :cond_9

    const v7, 0x7f060015

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    .end local v2           #p:I
    .end local v3           #theTV:Landroid/widget/TextView;
    .end local v4           #theV:Landroid/view/View;
    :cond_4
    :goto_5
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->updateGraphicEqInUI()V

    .line 464
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v5           #tv:Landroid/widget/TextView;
    :goto_6
    return-void

    .line 413
    :cond_5
    iput p1, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mPreset:I

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 423
    iget-object v7, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v7}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_6

    .line 433
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #p:I
    .restart local v3       #theTV:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 439
    .restart local v4       #theV:Landroid/view/View;
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 444
    .restart local v1       #eqText:Landroid/widget/TextView;
    :cond_8
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 449
    .restart local v5       #tv:Landroid/widget/TextView;
    :cond_9
    iget-object v7, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v7, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->getItem(I)Lcom/dolby/ds1appUI/EqualizerSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolby/ds1appUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 452
    .end local v1           #eqText:Landroid/widget/TextView;
    .end local v2           #p:I
    .end local v3           #theTV:Landroid/widget/TextView;
    .end local v4           #theV:Landroid/view/View;
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_a
    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 453
    .restart local v1       #eqText:Landroid/widget/TextView;
    if-eqz v1, :cond_b

    .line 454
    const/4 v7, 0x3

    if-ne p1, v7, :cond_c

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_b
    const v7, 0x7f0a0005

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 458
    .restart local v5       #tv:Landroid/widget/TextView;
    if-eqz v5, :cond_4

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v7, :cond_4

    .line 459
    iget-object v7, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v7, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->getItem(I)Lcom/dolby/ds1appUI/EqualizerSetting;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolby/ds1appUI/EqualizerSetting;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 454
    .end local v5           #tv:Landroid/widget/TextView;
    :cond_c
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7
.end method

.method setEnableEditGraphic(Z)V
    .locals 1
    .parameter "evalue"

    .prologue
    .line 686
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    iput-boolean p1, v0, Lcom/dolby/ds1appUI/GraphicVisualiser;->mEnableEditTouch:Z

    .line 687
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 302
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    if-eqz v2, :cond_0

    .line 303
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mIEqPresets:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v2, p1}, Lcom/dolby/ds1appUI/EqualizerAdapter;->setDolbyOnOff(Z)V

    .line 305
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/EqualizerAdapter;->scheduleNotifyDataSetChanged()V

    .line 308
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, theFragV:Landroid/view/View;
    const v2, 0x7f0a0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 311
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 312
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 315
    :cond_1
    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 320
    :cond_2
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 321
    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 323
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 326
    :cond_3
    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_4

    .line 328
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 332
    :cond_4
    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 335
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 338
    :cond_5
    const v2, 0x7f0a000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_6

    .line 340
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 341
    invoke-virtual {v1, v3}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 344
    :cond_6
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 345
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mQmIntEq:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 348
    :cond_7
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    .line 349
    return-void
.end method

.method public setResetEqButtonVisibility()V
    .locals 7

    .prologue
    .line 467
    const/4 v2, 0x0

    .line 468
    .local v2, profile:Landroid/dolby/DsClientSettings;
    const/4 v4, 0x4

    .line 470
    .local v4, vis:I
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/DsClientCache;->isDsOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 471
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v1

    .line 472
    .local v1, n:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 473
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v1}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 475
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/dolby/DsClientSettings;->getGeqOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 476
    const/4 v4, 0x0

    .line 484
    .end local v1           #n:I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a0006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 485
    .local v3, theV:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 486
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    .end local v3           #theV:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 481
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public updateGraphicEqInUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 492
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    if-nez v5, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    :try_start_0
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 499
    .local v3, selectedProfile:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 503
    sget-object v5, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v5, v6, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getProfileSettings(Landroid/dolby/DsClient;I)Landroid/dolby/DsClientSettings;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 504
    .local v2, profile:Landroid/dolby/DsClientSettings;
    if-eqz v2, :cond_0

    .line 514
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/GraphicVisualiser;->getEqualizer()Lcom/dolby/ds1appUI/GraphicEqualizerPainter;

    move-result-object v1

    .line 518
    .local v1, eq:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    if-eqz v5, :cond_3

    .line 519
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mEqualizerAdapter:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/EqualizerAdapter;->getSelection()I

    move-result v4

    .line 524
    .local v4, temp:I
    :goto_1
    iget-boolean v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mMobileLayout:Z

    if-ne v5, v7, :cond_2

    .line 525
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 526
    const/4 v4, -0x1

    .line 530
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsActivityCommonTemp;->useDsApiOnUiEvent()Z

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/dolby/ds1appUI/GraphicEqualizerPainter;->switchPreset(IIZ)V

    .line 531
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mVisualiser:Lcom/dolby/ds1appUI/GraphicVisualiser;

    invoke-virtual {v5, v7}, Lcom/dolby/ds1appUI/GraphicVisualiser;->repaint(Z)V

    .line 534
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->setResetEqButtonVisibility()V

    goto :goto_0

    .line 508
    .end local v1           #eq:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    .end local v2           #profile:Landroid/dolby/DsClientSettings;
    .end local v3           #selectedProfile:I
    .end local v4           #temp:I
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 510
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 521
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #eq:Lcom/dolby/ds1appUI/GraphicEqualizerPainter;
    .restart local v2       #profile:Landroid/dolby/DsClientSettings;
    .restart local v3       #selectedProfile:I
    :cond_3
    iget v4, p0, Lcom/dolby/ds1appUI/FragGraphicVisualizer;->mPreset:I

    .restart local v4       #temp:I
    goto :goto_1
.end method
