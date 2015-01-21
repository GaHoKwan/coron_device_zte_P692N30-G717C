.class public Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;
.super Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
.source "ContactDetailEnhancementExtensionContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDetailEnhancementExtension"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/ext/ContactDetailEnhancementExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/contacts/ext/ContactDetailEnhancementExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 5
    .parameter "mFragmentManager"
    .parameter "transaction"
    .parameter "commond"

    .prologue
    .line 472
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[addHistoryTransaction] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 476
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 478
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V

    .line 485
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 14
    .parameter "activity"
    .parameter "number"
    .parameter "firstActionViewContainer"
    .parameter "firstActionButtonView"
    .parameter "vewVtCallDivider"
    .parameter "btnVtCallAction"
    .parameter "vtcallActionViewContainer"
    .parameter "visibility"
    .parameter "secondaryActionDescription"
    .parameter "mInsertedSimCount"
    .parameter "commond"

    .prologue
    .line 66
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[bindDetailEnhancementView] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 70
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 72
    .local v1, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 73
    invoke-virtual/range {v1 .. v12}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v2

    .line 82
    .end local v1           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super/range {p0 .. p11}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z
    .locals 10
    .parameter "activity"
    .parameter "number"
    .parameter "firstActionViewButton"
    .parameter "firstDivider"
    .parameter "btnVtCallAction"
    .parameter "mInsertedSimCount"
    .parameter "commond"

    .prologue
    .line 92
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[bindDetailEnhancementViewForQuickContact] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 96
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 98
    .local v1, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 99
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z

    move-result v2

    .line 106
    .end local v1           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super/range {p0 .. p7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V
    .locals 10
    .parameter "mEnableSwipe"
    .parameter "child"
    .parameter "mMinFragmentWidth"
    .parameter "visibleFragmentViewCount"
    .parameter "screenHeight"
    .parameter "screenWidth"
    .parameter "commond"

    .prologue
    .line 369
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[childMeasureEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 373
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 375
    .local v1, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    .line 376
    invoke-virtual/range {v1 .. v8}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    .line 385
    .end local v1           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v9           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-super/range {p0 .. p7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 5
    .parameter "bar"
    .parameter "commond"

    .prologue
    .line 189
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configActionBarExt] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 193
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 195
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 202
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ZILjava/lang/String;)I
    .locals 5
    .parameter "mViewPager"
    .parameter "fragmentCarouselIsNull"
    .parameter "currentPage"
    .parameter "commond"

    .prologue
    .line 440
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPageIndexEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 444
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 446
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I

    move-result v2

    .line 452
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDesiredPageHistoryEx(IIILjava/lang/String;)I
    .locals 5
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "updatePageIndex"
    .parameter "commond"

    .prologue
    .line 407
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDesiredPageHistoryEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 409
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 411
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 413
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v2

    .line 419
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDesiredPageUpdatesEx(IIZLjava/lang/String;)I
    .locals 5
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    .line 389
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDesiredPageUpdatesEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 391
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 393
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 395
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v2

    .line 401
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDetailUpdateIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "commond"

    .prologue
    .line 255
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDetailUpdateIndex] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 261
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v2

    .line 266
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "simInfo"
    .parameter "commond"

    .prologue
    .line 112
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDrawableCorG] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 118
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 123
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "i"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 174
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementAccountSimIndicator] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 176
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 178
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 180
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 185
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getEnhancementPhotoId(IIILjava/lang/String;)J
    .locals 5
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 144
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementPhotoId] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 150
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v2

    .line 155
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-wide v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 159
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getEnhancementPhotoUri] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 163
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 165
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxFragmentViewCountEx(ILjava/lang/String;)I
    .locals 5
    .parameter "maxFragmentViewCount"
    .parameter "commond"

    .prologue
    .line 289
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getMaxFragmentViewCountEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 293
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 295
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v2

    .line 300
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .parameter "mViewPager"
    .parameter "commond"

    .prologue
    .line 424
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getViewPagerViewEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 428
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 430
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 431
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    .line 435
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getVisibleFragmentViewCountEx(ZLjava/lang/String;)I
    .locals 5
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    .line 304
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getVisibleFragmentViewCountEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 308
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 309
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 310
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v2

    .line 315
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V
    .locals 5
    .parameter "bar"
    .parameter "withUpdatePage"
    .parameter "commond"

    .prologue
    .line 205
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initActionBarExt] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 211
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    .line 218
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5
    .parameter "mFragmentManager"
    .parameter "commond"

    .prologue
    .line 456
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initContactDetailHistoryFragment] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 460
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 462
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 467
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_0
.end method

.method public isUseOperation(Ljava/lang/String;)Z
    .locals 5
    .parameter "commond"

    .prologue
    .line 48
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isUseOperation] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 53
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    .line 58
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onFragmentPageChange(ILjava/lang/String;)V
    .locals 5
    .parameter "index"
    .parameter "commond"

    .prologue
    .line 221
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onFragmentPageChange] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 227
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    .line 234
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "fragmentViewCount"
    .parameter "fragmentWidthScreenWidthFraction"
    .parameter "commond"

    .prologue
    .line 350
    const-string v1, "ContactDetailEnhancementExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onMeasureEx] commond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 354
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 356
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 357
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v1

    .line 362
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v1

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public onScrollChangedEx(Ljava/lang/String;)Z
    .locals 5
    .parameter "commond"

    .prologue
    .line 334
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onScrollChangedEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 338
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 340
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v2

    .line 345
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public onTouchEx(Ljava/lang/String;)Z
    .locals 5
    .parameter "commond"

    .prologue
    .line 319
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onTouchEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 323
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 325
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v2

    .line 330
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 5
    .parameter "activity"
    .parameter "broadcastReceiver"
    .parameter "commond"

    .prologue
    .line 129
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registeChangeDefaultSim] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 135
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    .line 140
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-object v2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    goto :goto_0
.end method

.method public registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V
    .locals 5
    .parameter "detailUIController"
    .parameter "val"
    .parameter "mLayoutMode"
    .parameter "commond"

    .prologue
    .line 238
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registerDetailUIController] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 240
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 242
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 244
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V

    .line 252
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/android/contacts/ext/ContactDetailEnhancementExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V
    .locals 7
    .parameter "mContactUri"
    .parameter
    .parameter "contactId"
    .parameter "commond"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, mPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "ContactDetailEnhancementExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setPhoneNumbersToFragmentEx] commond : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 493
    .local v6, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 495
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 496
    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V

    .line 502
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v6           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V
    .locals 5
    .parameter "viewPager"
    .parameter "mCurrentPageIndex"
    .parameter "smoothScroll"
    .parameter "commond"

    .prologue
    .line 271
    const-string v2, "ContactDetailEnhancementExtension"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setViewPagerCurrentItemEx] commond : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    .line 273
    iget-object v2, p0, Lcom/mediatek/contacts/extension/ContactDetailEnhancementExtensionContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    .line 277
    .local v0, extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    invoke-virtual {v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCommond()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V

    .line 286
    .end local v0           #extension:Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/ext/ContactDetailEnhancementExtension;>;"
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V

    goto :goto_0
.end method
