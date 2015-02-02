.class public Lcom/dolby/ds1appUI/ProfilesAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProfilesAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final mActivity:Lcom/dolby/ds1appUI/MainActivity;

.field private mCurrentlyEditName:Ljava/lang/String;

.field private mCurrentlyEditedProfile:I

.field private final mDefaultProfileNames:[Ljava/lang/String;

.field private final mDsClient:Landroid/dolby/DsClient;

.field private mEditable:Z

.field private final mLayout:I

.field private mNewLayout:Z

.field private final mNotifyDataSetChanged:Ljava/lang/Runnable;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mProfiles:[Lcom/dolby/ds1appUI/Profile;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>(Lcom/dolby/ds1appUI/MainActivity;ILandroid/dolby/DsClient;Landroid/view/View$OnClickListener;)V
    .locals 7
    .parameter "context"
    .parameter "layout"
    .parameter "dsClient"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, -0x1

    const v4, 0x7f02004f

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mSelectedPosition:I

    .line 49
    iput v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 53
    iput-boolean v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNewLayout:Z

    .line 54
    iput-boolean v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mEditable:Z

    .line 465
    new-instance v0, Lcom/dolby/ds1appUI/ProfilesAdapter$1;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appUI/ProfilesAdapter$1;-><init>(Lcom/dolby/ds1appUI/ProfilesAdapter;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    .line 61
    iput p2, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mLayout:I

    .line 62
    iput-object p3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDsClient:Landroid/dolby/DsClient;

    .line 63
    iput-object p4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f08

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNewLayout:Z

    .line 66
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f060021

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 68
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 69
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const v1, 0x7f06000b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 70
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x3

    const v2, 0x7f06000c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 71
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const v2, 0x7f06000d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const v2, 0x7f06000e

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    const/4 v1, 0x6

    const v2, 0x7f06000f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dolby/ds1appUI/Profile;

    iput-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    .line 77
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    new-instance v1, Lcom/dolby/ds1appUI/Profile;

    invoke-direct {v1, v4, v4, v4}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v1, v0, v3

    .line 78
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    new-instance v1, Lcom/dolby/ds1appUI/Profile;

    const v2, 0x7f02003c

    const v3, 0x7f02003b

    const v4, 0x7f02003a

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v1, v0, v5

    .line 79
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    new-instance v1, Lcom/dolby/ds1appUI/Profile;

    const v2, 0x7f02003f

    const v3, 0x7f02003e

    const v4, 0x7f02003d

    invoke-direct {v1, v2, v3, v4}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v1, v0, v6

    .line 80
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    const/4 v1, 0x3

    new-instance v2, Lcom/dolby/ds1appUI/Profile;

    const v3, 0x7f02002f

    const v4, 0x7f02002e

    const v5, 0x7f02002d

    invoke-direct {v2, v3, v4, v5}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 81
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    const/4 v1, 0x4

    new-instance v2, Lcom/dolby/ds1appUI/Profile;

    const v3, 0x7f020076

    const v4, 0x7f020075

    const v5, 0x7f020074

    invoke-direct {v2, v3, v4, v5}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 82
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    const/4 v1, 0x5

    new-instance v2, Lcom/dolby/ds1appUI/Profile;

    const v3, 0x7f020047

    const v4, 0x7f020046

    const v5, 0x7f020045

    invoke-direct {v2, v3, v4, v5}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    const/4 v1, 0x6

    new-instance v2, Lcom/dolby/ds1appUI/Profile;

    const v3, 0x7f02004a

    const v4, 0x7f020049

    const v5, 0x7f020048

    invoke-direct {v2, v3, v4, v5}, Lcom/dolby/ds1appUI/Profile;-><init>(III)V

    aput-object v2, v0, v1

    .line 84
    return-void
.end method

.method private getProfileName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v2}, Lcom/dolby/ds1appUI/MainActivity;->isDolbyClientConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    :goto_0
    return-object v1

    .line 348
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v2}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 441
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 446
    return-void
.end method

.method public endEditingProfileName(Z)V
    .locals 10
    .parameter "accept"

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v7, -0x1

    .line 356
    const-string v4, "DsUI::MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endEditingProfileName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    if-ne v4, v7, :cond_0

    .line 411
    :goto_0
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    .line 361
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 365
    .local v1, bModified_Custom2:Z
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-static {v4}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v2

    .line 366
    .local v2, cmf:I
    const/4 v4, 0x1

    and-int/lit8 v5, v2, 0x1

    if-ne v4, v5, :cond_1

    .line 367
    const/4 v0, 0x1

    .line 370
    :cond_1
    const/4 v4, 0x2

    and-int/lit8 v5, v2, 0x2

    if-ne v4, v5, :cond_2

    .line 371
    const/4 v1, 0x1

    .line 375
    :cond_2
    if-eqz p1, :cond_5

    .line 376
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 377
    const-string v4, ""

    iput-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 381
    :goto_1
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 383
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    iget v6, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 384
    iget v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_7

    .line 385
    const/4 v0, 0x1

    .line 398
    :cond_3
    :goto_2
    :try_start_0
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDsClient:Landroid/dolby/DsClient;

    iget v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    iget-object v6, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/dolby/DsClient;->setProfileName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_4
    :goto_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 405
    :cond_5
    iput v7, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 406
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 407
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-static {v4}, Lcom/dolby/ds1appCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    .line 408
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v4}, Lcom/dolby/ds1appUI/MainActivity;->onProfileNameEditEnded()V

    .line 410
    invoke-virtual {p0, v0, v1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->saveCustomNameModifiedStatus(ZZ)V

    goto :goto_0

    .line 379
    :cond_6
    iget-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    goto :goto_1

    .line 386
    :cond_7
    iget v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v9, :cond_3

    .line 387
    const/4 v1, 0x1

    goto :goto_2

    .line 390
    :cond_8
    iget v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_9

    .line 391
    const/4 v0, 0x0

    goto :goto_2

    .line 392
    :cond_9
    iget v4, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v9, :cond_3

    .line 393
    const/4 v1, 0x0

    goto :goto_2

    .line 399
    :catch_0
    move-exception v3

    .line 400
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    array-length v0, v0

    return v0
.end method

.method public getCurrentlyEditedProfile()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    return v0
.end method

.method public getDefaultProfileName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(I)Lcom/dolby/ds1appUI/Profile;
    .locals 1
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getItem(I)Lcom/dolby/ds1appUI/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemName(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    .line 99
    const/4 v5, 0x4

    if-gt p1, v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v4, v5, p1

    .line 132
    :cond_0
    :goto_0
    return-object v4

    .line 102
    :cond_1
    const/4 v4, 0x0

    .line 103
    .local v4, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v5}, Lcom/dolby/ds1appUI/MainActivity;->isDolbyClientConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    add-int/lit8 v5, p1, -0x1

    :try_start_0
    invoke-direct {p0, v5}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getProfileName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 114
    .local v1, bModified_Custom2:Z
    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-static {v5}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v2

    .line 115
    .local v2, cmf:I
    const/4 v5, 0x1

    and-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_3

    .line 116
    const/4 v0, 0x1

    .line 119
    :cond_3
    const/4 v5, 0x2

    and-int/lit8 v6, v2, 0x2

    if-ne v5, v6, :cond_4

    .line 120
    const/4 v1, 0x1

    .line 122
    :cond_4
    const-string v5, "DsUI::MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ProfilesAdapter.java] name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bModified_Custom1 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bModified_Custom2 = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    if-nez v0, :cond_6

    const/4 v5, 0x5

    if-ne p1, v5, :cond_6

    .line 126
    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v4, v5, p1

    .line 132
    .end local v0           #bModified_Custom1:Z
    .end local v1           #bModified_Custom2:Z
    .end local v2           #cmf:I
    :cond_5
    :goto_2
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v4, v5, p1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v3

    .line 107
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bModified_Custom1:Z
    .restart local v1       #bModified_Custom2:Z
    .restart local v2       #cmf:I
    :cond_6
    if-nez v1, :cond_5

    const/4 v5, 0x6

    if-ne p1, v5, :cond_5

    .line 128
    iget-object v5, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    aget-object v4, v5, p1

    goto :goto_2
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mSelectedPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/dolby/ds1appUI/MainActivity;->isDolbyClientConnected()Z

    move-result v5

    .line 144
    .local v5, dsConnected:Z
    move-object/from16 v17, p2

    .line 145
    .local v17, row:Landroid/view/View;
    if-nez v17, :cond_0

    .line 146
    if-nez p1, :cond_b

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f03000b

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 153
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mProfiles:[Lcom/dolby/ds1appUI/Profile;

    move-object/from16 v20, v0

    aget-object v10, v20, p1

    .line 155
    .local v10, item:Lcom/dolby/ds1appUI/Profile;
    const/4 v14, 0x0

    .line 156
    .local v14, profileModified:Z
    const/4 v15, 0x0

    .line 157
    .local v15, profileSettingsModified:Z
    if-lez p1, :cond_1

    .line 159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDsClient:Landroid/dolby/DsClient;

    move-object/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    invoke-virtual/range {v20 .. v21}, Landroid/dolby/DsClient;->isProfileModified(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 166
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 167
    .local v2, bModified_Custom1:Z
    const/4 v3, 0x0

    .line 168
    .local v3, bModified_Custom2:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v4

    .line 169
    .local v4, cmf:I
    const/16 v20, 0x1

    and-int/lit8 v21, v4, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 170
    const/4 v2, 0x1

    .line 173
    :cond_2
    const/16 v20, 0x2

    and-int/lit8 v21, v4, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 174
    const/4 v3, 0x1

    .line 178
    :cond_3
    if-eqz v15, :cond_c

    .line 179
    const/4 v14, 0x1

    .line 189
    :cond_4
    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->isEnabled()Z

    move-result v8

    .line 190
    .local v8, engineEnabled:Z
    const/4 v11, 0x0

    .line 193
    .local v11, itemName:Ljava/lang/String;
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-gt v0, v1, :cond_e

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v11, v20, p1

    .line 195
    const/4 v7, 0x1

    .line 208
    .local v7, enabled:Z
    :cond_5
    :goto_3
    if-eqz v7, :cond_10

    if-eqz v8, :cond_10

    const/4 v7, 0x1

    .line 210
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mSelectedPosition:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    if-eqz v8, :cond_11

    const/16 v18, 0x1

    .line 211
    .local v18, selected:Z
    :goto_5
    const v20, 0x7f0a0030

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 212
    .local v13, nameTextView:Landroid/widget/TextView;
    const v20, 0x7f0a0002

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 213
    .local v9, icon:Landroid/widget/ImageView;
    const v20, 0x7f0a0032

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 215
    .local v16, revertButton:Landroid/widget/ImageView;
    if-eqz v13, :cond_7

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    if-eqz v7, :cond_12

    const v20, 0x7f050008

    :goto_6
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    if-nez p2, :cond_6

    .line 218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_14

    .line 219
    sget-object v20, Lcom/dolby/ds1appUI/Assets$FontType;->LIGHT:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static/range {v20 .. v20}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 224
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNewLayout:Z

    move/from16 v20, v0

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/dolby/ds1appCoreUI/Tools;->isLandscapeScreenOrientation(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 225
    if-nez p1, :cond_15

    .line 226
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_7
    :goto_8
    move/from16 v0, v18

    invoke-virtual {v10, v0, v7}, Lcom/dolby/ds1appUI/Profile;->getIcon(ZZ)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    if-eqz v16, :cond_9

    .line 237
    if-eqz v18, :cond_17

    .line 238
    const/16 v19, 0x4

    .line 239
    .local v19, vis:I
    if-eqz v5, :cond_8

    if-eqz v14, :cond_8

    .line 240
    const/16 v19, 0x0

    .line 242
    :cond_8
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const v20, 0x7f020056

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    .end local v19           #vis:I
    :goto_9
    if-nez p2, :cond_9

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    :cond_9
    if-eqz v18, :cond_18

    const v20, 0x7f020030

    :goto_a
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    const v20, 0x7f0a0031

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 266
    .local v12, nameEdit:Landroid/widget/EditText;
    if-eqz v12, :cond_a

    .line 267
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dolby/ds1appUI/ProfilesAdapter;->mEditable:Z

    .line 269
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 272
    :goto_b
    if-lez p1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    move/from16 v20, v0

    add-int/lit8 v21, p1, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 273
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Landroid/text/InputFilter$LengthFilter;

    const/16 v23, 0xe

    invoke-direct/range {v22 .. v23}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 274
    sget-object v20, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static/range {v20 .. v20}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 277
    const/16 v20, 0x0

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/text/Editable;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 278
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 280
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    :cond_a
    :goto_c
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 291
    return-object v17

    .line 149
    .end local v2           #bModified_Custom1:Z
    .end local v3           #bModified_Custom2:Z
    .end local v4           #cmf:I
    .end local v7           #enabled:Z
    .end local v8           #engineEnabled:Z
    .end local v9           #icon:Landroid/widget/ImageView;
    .end local v10           #item:Lcom/dolby/ds1appUI/Profile;
    .end local v11           #itemName:Ljava/lang/String;
    .end local v12           #nameEdit:Landroid/widget/EditText;
    .end local v13           #nameTextView:Landroid/widget/TextView;
    .end local v14           #profileModified:Z
    .end local v15           #profileSettingsModified:Z
    .end local v16           #revertButton:Landroid/widget/ImageView;
    .end local v18           #selected:Z
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mLayout:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_0

    .line 160
    .restart local v10       #item:Lcom/dolby/ds1appUI/Profile;
    .restart local v14       #profileModified:Z
    .restart local v15       #profileSettingsModified:Z
    :catch_0
    move-exception v6

    .line 161
    .local v6, e1:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 182
    .end local v6           #e1:Ljava/lang/Exception;
    .restart local v2       #bModified_Custom1:Z
    .restart local v3       #bModified_Custom2:Z
    .restart local v4       #cmf:I
    :cond_c
    const/16 v20, 0x5

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    if-eqz v2, :cond_d

    .line 183
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 185
    :cond_d
    const/16 v20, 0x6

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    if-eqz v3, :cond_4

    .line 186
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 197
    .restart local v8       #engineEnabled:Z
    .restart local v11       #itemName:Ljava/lang/String;
    :cond_e
    const/4 v11, 0x0

    .line 199
    if-eqz v5, :cond_f

    .line 200
    invoke-virtual/range {p0 .. p1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    const-string v20, "DsUI::MainActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ProfilesAdapter.getView(), itemName = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_f
    const/4 v7, 0x1

    .line 204
    .restart local v7       #enabled:Z
    if-nez v11, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDefaultProfileNames:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v11, v20, p1

    goto/16 :goto_3

    .line 208
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 210
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 216
    .restart local v9       #icon:Landroid/widget/ImageView;
    .restart local v13       #nameTextView:Landroid/widget/TextView;
    .restart local v16       #revertButton:Landroid/widget/ImageView;
    .restart local v18       #selected:Z
    :cond_12
    if-eqz v18, :cond_13

    const v20, 0x7f05000b

    goto/16 :goto_6

    :cond_13
    const v20, 0x7f05000a

    goto/16 :goto_6

    .line 221
    :cond_14
    sget-object v20, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static/range {v20 .. v20}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_7

    .line 228
    :cond_15
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 231
    :cond_16
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 247
    :cond_17
    const/16 v20, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 263
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 283
    .restart local v12       #nameEdit:Landroid/widget/EditText;
    :cond_19
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 284
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 285
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 270
    :catch_1
    move-exception v20

    goto/16 :goto_b
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "DsUI::MainActivity"

    const-string v1, "ProfilesAdapter.notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 457
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0031

    if-ne v1, v2, :cond_2

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    const/4 v1, 0x7

    if-ne p2, v1, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_2

    .line 433
    :cond_1
    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 436
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0031

    if-ne v1, v2, :cond_0

    .line 420
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 422
    invoke-virtual {p0, v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 423
    const/4 v0, 0x1

    .line 426
    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 450
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public saveCustomNameModifiedStatus(ZZ)V
    .locals 1
    .parameter "bModified_Custom1"
    .parameter "bModified_Custom2"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/dolby/ds1appCoreUI/DS1Application;->saveCustomNameModifiedStatus(Landroid/content/Context;ZZ)V

    .line 415
    return-void
.end method

.method public scheduleNotifyDataSetChanged()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "DsUI::MainActivity"

    const-string v1, "ProfilesAdapter.scheduleNotifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    sget-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mNotifyDataSetChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 299
    iget v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mSelectedPosition:I

    if-eq v0, p1, :cond_0

    .line 300
    iput p1, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mSelectedPosition:I

    .line 301
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 303
    :cond_0
    return-void
.end method

.method public startEditingProfileName(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 310
    const-string v3, "DsUI::MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProfilesAdapter.startEditingProfileName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-boolean v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mEditable:Z

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mDsClient:Landroid/dolby/DsClient;

    .line 318
    .local v0, dsClient:Landroid/dolby/DsClient;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/MainActivity;->isDolbyClientConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/dolby/ds1appUI/ProfilesAdapter;->endEditingProfileName(Z)V

    .line 323
    const/4 v3, 0x4

    if-le p1, v3, :cond_0

    .line 326
    add-int/lit8 v3, p1, -0x1

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/dolby/DsClient;->isProfileModified(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/dolby/ds1appUI/ProfilesAdapter;->getItemName(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, name:Ljava/lang/String;
    add-int/lit8 v3, p1, -0x1

    iput v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditedProfile:I

    .line 334
    iput-object v2, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mCurrentlyEditName:Ljava/lang/String;

    .line 335
    iget-object v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-static {v3}, Lcom/dolby/ds1appCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    .line 336
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->scheduleNotifyDataSetChanged()V

    .line 338
    iget-object v3, p0, Lcom/dolby/ds1appUI/ProfilesAdapter;->mActivity:Lcom/dolby/ds1appUI/MainActivity;

    invoke-virtual {v3}, Lcom/dolby/ds1appUI/MainActivity;->onProfileNameEditStarted()V

    goto :goto_0

    .line 327
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 328
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
