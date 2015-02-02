.class public Lcom/dolby/ds1appUI/FragProfilePresetEditor;
.super Landroid/app/Fragment;
.source "FragProfilePresetEditor.java"

# interfaces
.implements Landroid/dolby/IDsClientEvents;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

.field private mDolbyClientConnected:Z

.field private mDsClient:Landroid/dolby/DsClient;

.field private mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

.field private mMobileLayout:Z

.field private mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 57
    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mMobileLayout:Z

    return-void
.end method

.method private endEditingProfileName(Z)V
    .locals 8
    .parameter "accept"

    .prologue
    const/4 v7, 0x0

    .line 443
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    if-eqz v5, :cond_4

    .line 444
    if-eqz p1, :cond_3

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 450
    .local v1, bModified_Custom2:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v2

    .line 451
    .local v2, cmf:I
    const/4 v5, 0x1

    and-int/lit8 v6, v2, 0x1

    if-ne v5, v6, :cond_0

    .line 452
    const/4 v0, 0x1

    .line 455
    :cond_0
    const/4 v5, 0x2

    and-int/lit8 v6, v2, 0x2

    if-ne v5, v6, :cond_1

    .line 456
    const/4 v1, 0x1

    .line 460
    :cond_1
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, newName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 464
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 465
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 466
    const/4 v0, 0x0

    .line 477
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v0, v1}, Lcom/dolby/ds1appCoreUI/DS1Application;->saveCustomNameModifiedStatus(Landroid/content/Context;ZZ)V

    .line 479
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :try_start_0
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget v6, v6, Lcom/dolby/ds1appUI/ProfileEditInfo;->mPosition:I

    invoke-virtual {v5, v6, v4}, Landroid/dolby/DsClient;->setProfileName(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v0           #bModified_Custom1:Z
    .end local v1           #bModified_Custom2:Z
    .end local v2           #cmf:I
    .end local v4           #newName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/dolby/ds1appCoreUI/Tools;->hideVirtualKeyboard(Landroid/app/Activity;)Z

    .line 490
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 491
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 492
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mEditText:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget-object v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iput-object v7, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    .line 496
    :cond_4
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;->onProfileNameEditEnded()V

    .line 497
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 498
    :goto_1
    return-void

    .line 468
    .restart local v0       #bModified_Custom1:Z
    .restart local v1       #bModified_Custom2:Z
    .restart local v2       #cmf:I
    .restart local v4       #newName:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 470
    :cond_6
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    iget v5, v5, Lcom/dolby/ds1appUI/ProfileEditInfo;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 471
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f06000f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 472
    const/4 v1, 0x0

    goto :goto_0

    .line 474
    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    .line 482
    :catch_0
    move-exception v3

    .line 483
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 484
    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v5}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_1
.end method

.method private onDolbyClientUseClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 371
    iget-boolean v6, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v6}, Lcom/dolby/ds1appUI/IDsFragObserver;->useDsApiOnUiEvent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v0, 0x0

    .line 377
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 378
    .local v1, bModified_Custom2:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v2

    .line 379
    .local v2, cmf:I
    const/4 v6, 0x1

    and-int/lit8 v7, v2, 0x1

    if-ne v6, v7, :cond_2

    .line 380
    const/4 v0, 0x1

    .line 383
    :cond_2
    const/4 v6, 0x2

    and-int/lit8 v7, v2, 0x2

    if-ne v6, v7, :cond_3

    .line 384
    const/4 v1, 0x1

    .line 389
    :cond_3
    :try_start_0
    sget-object v6, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v7, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v6, v7}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v5

    .line 392
    .local v5, selectedProfile:I
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    .line 393
    const/4 v0, 0x0

    .line 397
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v0, v1}, Lcom/dolby/ds1appCoreUI/DS1Application;->saveCustomNameModifiedStatus(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 406
    .local v4, id:I
    const v6, 0x7f0a0011

    if-ne v6, v4, :cond_0

    .line 412
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    invoke-interface {v6, v5}, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;->profileReset(I)V

    goto :goto_0

    .line 394
    .end local v4           #id:I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x6

    if-ne v6, v7, :cond_4

    .line 395
    const/4 v1, 0x0

    goto :goto_1

    .line 398
    .end local v5           #selectedProfile:I
    :catch_0
    move-exception v3

    .line 399
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    iget-object v6, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v6}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method private startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V
    .locals 5
    .parameter "text"
    .parameter "edit"
    .parameter "position"

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 418
    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 420
    if-le p3, v4, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 421
    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 422
    sget-object v0, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v0}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 425
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 426
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 427
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 428
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 429
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/dolby/ds1appCoreUI/Tools;->showVirtualKeyboard(Landroid/content/Context;)V

    .line 430
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 435
    :goto_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 437
    new-instance v0, Lcom/dolby/ds1appUI/ProfileEditInfo;

    add-int/lit8 v1, p3, -0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/dolby/ds1appUI/ProfileEditInfo;-><init>(ILandroid/widget/TextView;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mCurrentlyEditedProfile:Lcom/dolby/ds1appUI/ProfileEditInfo;

    .line 438
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;->onProfileNameEditStarted()V

    .line 440
    :cond_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method


# virtual methods
.method public cancelPendingEdition()V
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 368
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 72
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    move-object v2, v0

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 85
    iget-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v2}, Lcom/dolby/ds1appUI/IDsFragObserver;->getDsClient()Landroid/dolby/DsClient;

    move-result-object v2

    iput-object v2, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    .line 86
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
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

    .line 79
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 80
    .restart local v1       #e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IDsFragProfileEditorObserver"

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
    .line 230
    invoke-direct {p0, p1}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->onDolbyClientUseClick(Landroid/view/View;)V

    .line 231
    return-void
.end method

.method public onClientConnected()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 148
    return-void
.end method

.method public onClientDisconnected()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0a0010

    const/4 v9, 0x0

    .line 100
    const v8, 0x7f030005

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 103
    .local v7, v:Landroid/view/View;
    const/4 v8, 0x1

    new-array v4, v8, [I

    aput v10, v4, v9

    .line 104
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

    .line 105
    .local v2, id:I
    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 106
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 107
    sget-object v8, Lcom/dolby/ds1appUI/Assets$FontType;->REGULAR:Lcom/dolby/ds1appUI/Assets$FontType;

    invoke-static {v8}, Lcom/dolby/ds1appUI/Assets;->getFont(Lcom/dolby/ds1appUI/Assets$FontType;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v2           #id:I
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, theV:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 115
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    :cond_2
    const v8, 0x7f0a0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mMobileLayout:Z

    .line 127
    return-object v7
.end method

.method public onDsOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 159
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0012

    if-ne v1, v2, :cond_2

    .line 237
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

    .line 239
    :cond_1
    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 243
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEqSettingsChanged(II)V
    .locals 5
    .parameter "profile"
    .parameter "preset"

    .prologue
    .line 204
    :try_start_0
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, p1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v2

    .line 205
    .local v2, settings:Landroid/dolby/DsClientSettings;
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4, p1, v2}, Lcom/dolby/ds1appUI/DsClientCache;->cacheProfileSettings(Landroid/dolby/DsClient;ILandroid/dolby/DsClientSettings;)V

    .line 206
    sget-object v3, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v4, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v3, v4}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    .local v1, selectedProfile:I
    if-ne p1, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 216
    .end local v1           #selectedProfile:I
    .end local v2           #settings:Landroid/dolby/DsClientSettings;
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    iget-object v3, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v3}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a0012

    if-ne v1, v2, :cond_0

    .line 250
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 252
    invoke-direct {p0, v0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 253
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0010

    if-ne v0, v1, :cond_0

    .line 222
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    invoke-interface {v1}, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;->getProfileSelected()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->startEditingProfileName(Landroid/widget/TextView;Landroid/widget/EditText;I)V

    .line 224
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 6
    .parameter "profile"
    .parameter "name"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 179
    :try_start_0
    sget-object v4, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v5, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v4, v5}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 186
    .local v1, selectedProfile:I
    if-ne p1, v1, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, temp:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 190
    const v4, 0x7f0a0010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 191
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .end local v1           #selectedProfile:I
    .end local v2           #temp:Landroid/view/View;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    iget-object v4, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v4}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0
.end method

.method public onProfileSelected(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 165
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 171
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 139
    iget-boolean v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mMobileLayout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mSpecificObserver:Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;

    invoke-interface {v0}, Lcom/dolby/ds1appUI/IDsFragProfileEditorObserver;->profileEditorIsAlive()V

    .line 142
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 260
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 262
    .local v0, theFragV:Landroid/view/View;
    if-nez p1, :cond_0

    .line 264
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->endEditingProfileName(Z)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->setResetProfileVisibility()V

    .line 269
    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 271
    if-nez p1, :cond_1

    .line 272
    const v3, 0x7f060014

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 274
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    :cond_2
    const v3, 0x7f0a0011

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 278
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 279
    if-eqz p1, :cond_4

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 281
    :cond_3
    return-void

    .line 279
    :cond_4
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public setResetProfileVisibility()V
    .locals 11

    .prologue
    const/4 v8, 0x4

    .line 284
    iget-boolean v9, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDolbyClientConnected:Z

    if-nez v9, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v2, 0x0

    .line 289
    .local v2, modified:Z
    const/4 v5, -0x1

    .line 291
    .local v5, tmpProfile:I
    :try_start_0
    sget-object v9, Lcom/dolby/ds1appUI/DsClientCache;->INSTANCE:Lcom/dolby/ds1appUI/DsClientCache;

    iget-object v10, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v9, v10}, Lcom/dolby/ds1appUI/DsClientCache;->getSelectedProfile(Landroid/dolby/DsClient;)I

    move-result v3

    .line 292
    .local v3, profile:I
    move v5, v3

    .line 293
    iget-object v9, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v9, v3}, Landroid/dolby/DsClient;->isProfileModified(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 300
    const-string v4, ""

    .line 301
    .local v4, profileName:Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 324
    :goto_1
    if-lt v5, v8, :cond_2

    .line 325
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/dolby/ds1appCoreUI/DS1Application;->getCustomModifyFlag(Landroid/content/Context;)I

    move-result v0

    .line 326
    .local v0, cmf:I
    const/4 v9, 0x5

    add-int/lit8 v10, v5, 0x1

    if-ne v9, v10, :cond_5

    .line 327
    const/4 v9, 0x1

    and-int/lit8 v10, v0, 0x1

    if-ne v9, v10, :cond_2

    .line 328
    or-int/lit8 v2, v2, 0x1

    .line 329
    iget-object v9, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v9}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v4, v9, v5

    .line 339
    .end local v0           #cmf:I
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a0010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 340
    .local v6, tv:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 341
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 349
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a0011

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 350
    .local v7, v:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 360
    const v9, 0x7f020056

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    if-eqz v2, :cond_4

    const/4 v8, 0x0

    :cond_4
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 294
    .end local v3           #profile:I
    .end local v4           #profileName:Ljava/lang/String;
    .end local v6           #tv:Landroid/widget/TextView;
    .end local v7           #v:Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v8}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto :goto_0

    .line 303
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #profile:I
    .restart local v4       #profileName:Ljava/lang/String;
    :pswitch_0
    const v9, 0x7f06000a

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    goto :goto_1

    .line 306
    :pswitch_1
    const v9, 0x7f06000b

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 307
    goto :goto_1

    .line 309
    :pswitch_2
    const v9, 0x7f06000c

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 310
    goto :goto_1

    .line 312
    :pswitch_3
    const v9, 0x7f06000d

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 313
    goto :goto_1

    .line 315
    :pswitch_4
    const v9, 0x7f06000e

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 316
    goto :goto_1

    .line 318
    :pswitch_5
    const v9, 0x7f06000f

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    goto/16 :goto_1

    .line 331
    .restart local v0       #cmf:I
    :cond_5
    const/4 v9, 0x6

    add-int/lit8 v10, v5, 0x1

    if-ne v9, v10, :cond_2

    .line 332
    const/4 v9, 0x2

    and-int/lit8 v10, v0, 0x2

    if-ne v9, v10, :cond_2

    .line 333
    or-int/lit8 v2, v2, 0x1

    .line 334
    :try_start_2
    iget-object v9, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mDsClient:Landroid/dolby/DsClient;

    invoke-virtual {v9}, Landroid/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v9

    aget-object v4, v9, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 343
    .end local v0           #cmf:I
    :catch_1
    move-exception v1

    .line 344
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 345
    iget-object v8, p0, Lcom/dolby/ds1appUI/FragProfilePresetEditor;->mFObserver:Lcom/dolby/ds1appUI/IDsFragObserver;

    invoke-interface {v8}, Lcom/dolby/ds1appUI/IDsFragObserver;->onDsApiError()V

    goto/16 :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
