.class public Lcom/android/camera/manager/SettingManager;
.super Lcom/android/camera/manager/ViewManager;
.source "SettingManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;
.implements Lcom/android/camera/ui/SettingListLayout$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/SettingManager$MyPagerAdapter;,
        Lcom/android/camera/manager/SettingManager$Holder;,
        Lcom/android/camera/manager/SettingManager$SettingListener;
    }
.end annotation


# static fields
.field protected static final DELAY_MSG_REMOVE_SETTING_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field protected static final MSG_REMOVE_SETTING:I = 0x0

.field protected static final SETTING_PAGE_LAYER:I = 0x3

.field private static final TAB_INDICATOR_KEY_CAMERA:Ljava/lang/String; = "camera"

.field private static final TAB_INDICATOR_KEY_COMMON:Ljava/lang/String; = "common"

.field private static final TAB_INDICATOR_KEY_PREVIEW:Ljava/lang/String; = "preview"

.field private static final TAB_INDICATOR_KEY_VIDEO:Ljava/lang/String; = "video"

.field private static final TAG:Ljava/lang/String; = "SettingManager"


# instance fields
.field private mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field protected mIndicator:Lcom/android/camera/ui/RotateImageView;

.field protected mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

.field protected mMainHandler:Landroid/os/Handler;

.field private mPager:Landroid/support/v4/view/ViewPager;

.field protected mSettingLayout:Landroid/view/ViewGroup;

.field protected mShowingContainer:Z

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 66
    new-instance v0, Lcom/android/camera/manager/SettingManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/SettingManager$1;-><init>(Lcom/android/camera/manager/SettingManager;)V

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    .line 87
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 88
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/SettingManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/camera/manager/SettingManager;->highlightCurrentSetting(I)V

    return-void
.end method

.method private highlightCurrentSetting(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 408
    :cond_0
    return-void
.end method

.method private initializeSettings()V
    .locals 12

    .prologue
    .line 249
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 250
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    const v9, 0x7f04005a

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    .line 252
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const v9, 0x7f0b0140

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TabHost;

    iput-object v8, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    .line 253
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->setup()V

    .line 256
    sget-object v6, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB:[I

    .line 257
    .local v6, settingKeys:[I
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 258
    sget-object v6, Lcom/android/camera/SettingChecker;->SETTING_GROUP_MAIN_COMMON_FOR_TAB:[I

    .line 260
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/manager/SettingManager$Holder;>;"
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 262
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/camera/ext/IFeatureExtension;->isPrioritizePreviewSize()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "preview"

    const v10, 0x7f02012b

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "common"

    const v10, 0x7f02012b

    invoke-direct {v8, p0, v9, v10, v6}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "camera"

    const v10, 0x7f02012a

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "video"

    const v10, 0x7f02012d

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 323
    .local v7, size:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v5, pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_7

    .line 325
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/manager/SettingManager$Holder;

    .line 327
    .local v0, holder:Lcom/android/camera/manager/SettingManager$Holder;
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    const v9, 0x7f04005d

    const/4 v10, 0x3

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/SettingListLayout;

    .line 329
    .local v4, pageView:Lcom/android/camera/ui/SettingListLayout;
    iget-object v8, v0, Lcom/android/camera/manager/SettingManager$Holder;->mSettingKeys:[I

    invoke-static {v8}, Lcom/android/camera/SettingChecker;->getSettingKeys([I)[Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v4, v9, v8}, Lcom/android/camera/ui/SettingListLayout;->initialize([Ljava/lang/String;Z)V

    .line 330
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v2, indicatorView:Landroid/widget/ImageView;
    const v8, 0x7f020015

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 334
    iget v8, v0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorIconRes:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 336
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v9, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v10, v0, Lcom/android/camera/manager/SettingManager$Holder;->mIndicatorKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    const v10, 0x1020011

    invoke-virtual {v9, v10}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v0           #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .end local v1           #i:I
    .end local v2           #indicatorView:Landroid/widget/ImageView;
    .end local v4           #pageView:Lcom/android/camera/ui/SettingListLayout;
    .end local v5           #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .end local v7           #size:I
    :cond_1
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "common"

    const v10, 0x7f02012b

    invoke-direct {v8, p0, v9, v10, v6}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "camera"

    const v10, 0x7f02012a

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "video"

    const v10, 0x7f02012d

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v8

    invoke-interface {v8}, Lcom/mediatek/camera/ext/IFeatureExtension;->isPrioritizePreviewSize()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 288
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 289
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "preview"

    const v10, 0x7f02012b

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "common"

    const v10, 0x7f02012b

    invoke-direct {v8, p0, v9, v10, v6}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "camera"

    const v10, 0x7f02012a

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 299
    :cond_3
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "common"

    const v10, 0x7f02012b

    invoke-direct {v8, p0, v9, v10, v6}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "video"

    const v10, 0x7f02012d

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 307
    :cond_4
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "common"

    const v10, 0x7f02012b

    invoke-direct {v8, p0, v9, v10, v6}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 311
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "camera"

    const v10, 0x7f02012a

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 315
    :cond_5
    new-instance v8, Lcom/android/camera/manager/SettingManager$Holder;

    const-string v9, "video"

    const v10, 0x7f02012d

    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/android/camera/manager/SettingManager$Holder;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/lang/String;I[I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 329
    .restart local v0       #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .restart local v1       #i:I
    .restart local v4       #pageView:Lcom/android/camera/ui/SettingListLayout;
    .restart local v5       #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .restart local v7       #size:I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 341
    .end local v0           #holder:Lcom/android/camera/manager/SettingManager$Holder;
    .end local v4           #pageView:Lcom/android/camera/ui/SettingListLayout;
    :cond_7
    new-instance v8, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-direct {v8, p0, v5}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;-><init>(Lcom/android/camera/manager/SettingManager;Ljava/util/List;)V

    iput-object v8, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    .line 342
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const v9, 0x7f0b0141

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 343
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 344
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 345
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 347
    .end local v1           #i:I
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/manager/SettingManager$Holder;>;"
    .end local v5           #pageViews:Ljava/util/List;,"Ljava/util/List<Lcom/android/camera/ui/SettingListLayout;>;"
    .end local v6           #settingKeys:[I
    .end local v7           #size:I
    :cond_8
    iget-object v8, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 348
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 4
    .parameter "force"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, collapsechild:Z
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->collapse(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->hideSetting()V

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 130
    :cond_1
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_2

    .line 131
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") mShowingContainer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_2
    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    const v1, 0x7f04005b

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    .line 94
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-object v0
.end method

.method public handleMenuEvent()Z
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, handle:Z
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 200
    const/4 v0, 0x1

    .line 202
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 203
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMenuEvent() isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIndicator="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 112
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 113
    return-void
.end method

.method public hideSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideSetting() mShowingContainer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSettingLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->startFadeOutAnimation(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    iput-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 359
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-interface {v0, v1}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSettingContainerShowing(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 361
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 365
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 366
    return-void
.end method

.method public isShowSettingContainer()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    if-ne p1, v0, :cond_0

    .line 139
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->showSetting()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 150
    return-void
.end method

.method public onPreferenceReady()V
    .locals 0

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->releaseSettingResource()V

    .line 178
    return-void
.end method

.method public onRefresh()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh() isShowing()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingContainer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->applyParametersToUI()V

    .line 105
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    invoke-virtual {v0}, Lcom/android/camera/manager/SettingManager$MyPagerAdapter;->notifyDataSetChanged()V

    .line 107
    :cond_1
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->releaseSettingResource()V

    .line 119
    return-void
.end method

.method public onRestorePreferencesClicked()V
    .locals 3

    .prologue
    .line 158
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestorePreferencesClicked() mShowingContainer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0}, Lcom/android/camera/manager/SettingManager$SettingListener;->onRestorePreferencesClicked()V

    .line 164
    :cond_1
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/ui/SettingListLayout;Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "settingList"
    .parameter "preference"

    .prologue
    .line 168
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0, p2}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSharedPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 173
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 182
    const/4 v0, -0x1

    .line 183
    .local v0, currentIndex:I
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 187
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTabChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") currentIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_1
    return-void
.end method

.method public onVoiceCommandChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    invoke-interface {v0, p1}, Lcom/android/camera/manager/SettingManager$SettingListener;->onVoiceCommandChanged(I)V

    .line 524
    :cond_0
    return-void
.end method

.method protected releaseSettingResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-boolean v0, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "SettingManager"

    const-string v1, "releaseSettingResource()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->collapse(Z)Z

    .line 214
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 215
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mAdapter:Lcom/android/camera/manager/SettingManager$MyPagerAdapter;

    .line 216
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    .line 217
    iput-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    .line 219
    :cond_1
    return-void
.end method

.method protected setChildrenClickable(Z)V
    .locals 7
    .parameter "clickable"

    .prologue
    .line 369
    sget-boolean v4, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v4, :cond_0

    .line 370
    const-string v4, "SettingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setChildrenClickable("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 373
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {v0}, Lcom/android/camera/PreferenceGroup;->size()I

    move-result v2

    .line 375
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 376
    invoke-virtual {v0, v1}, Lcom/android/camera/PreferenceGroup;->get(I)Lcom/android/camera/CameraPreference;

    move-result-object v3

    .line 377
    .local v3, pref:Lcom/android/camera/CameraPreference;
    instance-of v4, v3, Lcom/android/camera/ListPreference;

    if-eqz v4, :cond_1

    .line 378
    check-cast v3, Lcom/android/camera/ListPreference;

    .end local v3           #pref:Lcom/android/camera/CameraPreference;
    invoke-virtual {v3, p1}, Lcom/android/camera/ListPreference;->setClickable(Z)V

    .line 375
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1           #i:I
    .end local v2           #len:I
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/SettingManager$SettingListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    .line 194
    return-void
.end method

.method public showSetting()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    sget-boolean v1, Lcom/android/camera/manager/SettingManager;->LOG:Z

    if-eqz v1, :cond_0

    .line 223
    const-string v1, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSetting() mShowingContainer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getContext().isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 228
    .local v0, preferenceGroup:Lcom/android/camera/PreferenceGroup;
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iput-boolean v5, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 231
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mListener:Lcom/android/camera/manager/SettingManager$SettingListener;

    iget-boolean v2, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    invoke-interface {v1, v2}, Lcom/android/camera/manager/SettingManager$SettingListener;->onSettingContainerShowing(Z)V

    .line 232
    invoke-direct {p0}, Lcom/android/camera/manager/SettingManager;->initializeSettings()V

    .line 233
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 234
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/manager/SettingManager;->highlightCurrentSetting(I)V

    .line 235
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v6}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/SettingManager;->startFadeInAnimation(Landroid/view/View;)V

    .line 242
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    const v2, 0x7f020122

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 246
    .end local v0           #preferenceGroup:Lcom/android/camera/PreferenceGroup;
    :cond_3
    return-void
.end method

.method protected startFadeInAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    .line 389
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 392
    :cond_1
    return-void
.end method

.method protected startFadeOutAnimation(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    .line 399
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    :cond_1
    return-void
.end method

.method public superOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->onOrientationChanged(I)V

    .line 154
    return-void
.end method
