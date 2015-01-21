.class public Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
.super Ljava/lang/Object;
.source "ContactDetailEnhancementExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;,
        Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;
    }
.end annotation


# static fields
.field protected static final ABOUT_PAGE:I = 0x0

.field protected static final HISTORY_PAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContactDetailEnhancementExtension"

.field protected static final UPDATES_PAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    return-void
.end method


# virtual methods
.method public addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 0
    .parameter "mFragmentManager"
    .parameter "transaction"
    .parameter "commond"

    .prologue
    .line 189
    return-void
.end method

.method public bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 1
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
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z
    .locals 1
    .parameter "activity"
    .parameter "number"
    .parameter "firstActionViewButton"
    .parameter "firstDivider"
    .parameter "btnVtCallAction"
    .parameter "mInsertedSimCount"
    .parameter "commond"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V
    .locals 2
    .parameter "mEnableSwipe"
    .parameter "child"
    .parameter "mMinFragmentWidth"
    .parameter "visibleFragmentViewCount"
    .parameter "screenHeight"
    .parameter "screenWidth"
    .parameter "commond"

    .prologue
    const/high16 v1, 0x4000

    .line 149
    if-eqz p1, :cond_0

    .line 150
    mul-int/lit8 v0, p3, 0x2

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 160
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 0
    .parameter "bar"
    .parameter "commond"

    .prologue
    .line 74
    return-void
.end method

.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I
    .locals 1
    .parameter "mViewPager"
    .parameter "currentPage"
    .parameter "commond"

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredPageHistoryEx(IIILjava/lang/String;)I
    .locals 1
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "updatePageIndex"
    .parameter "commond"

    .prologue
    .line 170
    const/4 v0, -0x1

    return v0
.end method

.method public getDesiredPageUpdatesEx(IIZLjava/lang/String;)I
    .locals 1
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    .line 165
    if-ge p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDetailUpdateIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "commond"

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "simInfo"
    .parameter "commond"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "i"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnhancementPhotoId(IIILjava/lang/String;)J
    .locals 2
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 61
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 65
    const-string v0, ""

    return-object v0
.end method

.method public getMaxFragmentViewCountEx(ILjava/lang/String;)I
    .locals 0
    .parameter "maxFragmentViewCount"
    .parameter "commond"

    .prologue
    .line 111
    return p1
.end method

.method public getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "mViewPager"
    .parameter "commond"

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleFragmentViewCountEx(ZLjava/lang/String;)I
    .locals 1
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V
    .locals 0
    .parameter "bar"
    .parameter "withUpdatePage"
    .parameter "commond"

    .prologue
    .line 78
    return-void
.end method

.method public initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "mFragmentManager"
    .parameter "commond"

    .prologue
    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public isUseOperation(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onFragmentPageChange(ILjava/lang/String;)V
    .locals 0
    .parameter "index"
    .parameter "commond"

    .prologue
    .line 99
    return-void
.end method

.method public onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "fragmentViewCount"
    .parameter "fragmentWidthScreenWidthFraction"
    .parameter "commond"

    .prologue
    .line 135
    new-instance v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    invoke-direct {v0, p0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;-><init>(Lcom/android/contacts/ext/ContactDetailEnhancementExtension;)V

    .line 136
    .local v0, measureInfo:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    .line 137
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    mul-int/2addr v1, p3

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    .line 139
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    sub-int v1, p1, v1

    div-int/2addr v1, p3

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    .line 141
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    iget v2, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    .line 143
    return-object v0
.end method

.method public onScrollChangedEx(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEx(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "activity"
    .parameter "broadcastReceiver"
    .parameter "commond"

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V
    .locals 2
    .parameter "detailUIController"
    .parameter "val"
    .parameter "mLayoutMode"
    .parameter "commond"

    .prologue
    .line 94
    const-string v0, "ContactDetailEnhancementExtension"

    const-string v1, "--registerDetailUIController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V
    .locals 0
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
    .line 194
    .local p2, mPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V
    .locals 1
    .parameter "viewPager"
    .parameter "mCurrentPageIndex"
    .parameter "smoothScroll"
    .parameter "commond"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 108
    return-void
.end method
