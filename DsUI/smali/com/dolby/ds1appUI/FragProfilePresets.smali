.class public Lcom/dolby/ds1appUI/FragProfilePresets;
.super Landroid/app/Fragment;
.source "FragProfilePresets.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private mDolbyClientConnected:Z

.field private mDsClient:Landroid/dolby/DsClient;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field private mMobileLayout:Z

.field private mNativeRootContainer:Landroid/view/ViewGroup;

.field private mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 50
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 58
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mMobileLayout:Z

    return-void
.end method

.method static synthetic access$200(Lcom/dolby/ds1appUI/FragProfilePresets;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 382
    iget-boolean v6, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDolbyClientConnected:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v6}, Lcom/dolby/ds1appUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    const/4 v0, 0x0

    .line 388
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 389
    .local v1, bModified_Custom2:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v2

    .line 390
    .local v2, cmf:I
    const/4 v6, 0x1

    and-int/lit8 v7, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 391
    const/4 v0, 0x1

    .line 394
    :cond_2
    const/4 v6, 0x2

    and-int/lit8 v7, v2, 0x2

    if-ne v6, v7, :cond_3

    .line 395
    const/4 v1, 0x1

    .line 400
    :cond_3
    :try_start_0
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v5

    .line 403
    .local v5, selectedProfile:I
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 404
    const/4 v0, 0x0

    .line 408
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0, v1}, Lcom/dolby/ds1appCoreUI/DS1Application;->saveCustomNameModifiedStatus(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 417
    .local v4, id:I
    const v6, 0x7f0a0032

    if-ne v6, v4, :cond_0

    .line 422
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    invoke-interface {v6, v5}, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;->profileReset(I)V

    goto :goto_0

    .line 405
    .end local v4           #id:I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 406
    const/4 v1, 0x0

    goto :goto_1

    .line 409
    .end local v5           #selectedProfile:I
    :catch_0
    move-exception v3

    .line 410
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 411
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v6}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultProfileName(I)Ljava/lang/String;
    .locals 2
    .parameter "profile"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getDefaultProfileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 2
    .parameter "profile"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getSelection()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 73
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mMobileLayout:Z

    .line 89
    return-void

    .line 74
    :catch_0
    move-exception v1

    .line 75
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

    .line 80
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 81
    .restart local v1       #e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragProfilePresetsObserver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragProfilePresets;->onDolbyClientUseClick(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public onClientConnected()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 147
    iput-boolean v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 148
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mMobileLayout:Z

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    .line 151
    :cond_0
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDolbyClientConnected:Z

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 109
    .local v0, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/ListAdapter;>;"
    new-instance v3, Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/dolby/ds1appUI/MainActivity;

    const v4, 0x7f03000a

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-direct {v3, v2, v4, v5, p0}, Lcom/dolby/ds1appUI/ProfilesAdapter;-><init>(Lcom/dolby/ds1appUI/MainActivity;ILandroid/dolby/DsClient;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    .line 110
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/dolby/ds1appUI/ViewTools;->determineNativeViewContainer(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    .line 117
    return-object v1
.end method

.method public onDsOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 162
    return-void
.end method

.method public onEqSettingsChanged(II)V
    .locals 5
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 191
    .local v2, settings:Landroid/dolby/DsClientSettings;
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, p1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 192
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 199
    .local v1, selectedProfile:I
    if-ne p1, v1, :cond_0

    .line 201
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 203
    .end local v1           #selectedProfile:I
    .end local v2           #settings:Landroid/dolby/DsClientSettings;
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 235
    if-nez p3, :cond_1

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dolby.LAUNCH_DS1_INSTOREDEMO_APP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-boolean v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mMobileLayout:Z

    if-ne v1, v3, :cond_2

    .line 241
    :try_start_0
    sget-object v1, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v1

    add-int/lit8 v2, p3, -0x1

    if-ne v1, v2, :cond_2

    .line 244
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    invoke-interface {v1}, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;->editProfile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v1, v3}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v1}, Lcom/dolby/ds1appUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;->chooseProfile(I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a0013

    if-ne v2, v3, :cond_1

    .line 217
    :try_start_0
    sget-object v2, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2, v3}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v2

    add-int/lit8 v3, p3, -0x1

    if-eq v2, v3, :cond_0

    .line 218
    invoke-virtual/range {p0 .. p5}, Lcom/dolby/ds1appUI/FragProfilePresets;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v2, p3}, Lcom/dolby/ds1appUI/ProfilesAdapter;->startEditingProfileName(I)V

    .line 228
    :goto_0
    return v1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 141
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 142
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 182
    :cond_0
    return-void
.end method

.method public onProfileNameEditStarted()V
    .locals 3

    .prologue
    .line 311
    const-string v1, "DsUI::MainActivity"

    const-string v2, "Main.onProfileNameEditStarted()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/dolby/ds1appCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    new-instance v0, Lcom/dolby/ds1appUI/FragProfilePresets$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/FragProfilePresets$1;-><init>(Lcom/dolby/ds1appUI/FragProfilePresets;)V

    .line 378
    .local v0, preDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mNativeRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 168
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 174
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 129
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragProfilePresetsObserver;->profilePresetsAreAlive()V

    .line 132
    :cond_0
    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 304
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 287
    .local v1, theFragV:Landroid/view/View;
    if-nez p1, :cond_0

    .line 288
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 293
    :cond_0
    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, listView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 298
    .end local v0           #listView:Landroid/view/View;
    .end local v1           #theFragV:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets;->mProfilesAdapter:Lcom/dolby/ds1appUI/ProfilesAdapter;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->setSelection(I)V

    .line 265
    :cond_0
    return-void
.end method
