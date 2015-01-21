.class public Lcom/android/camera/manager/SubSettingManager;
.super Lcom/android/camera/manager/SettingManager;
.source "SubSettingManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SubSettingManager"


# instance fields
.field private mPageView:Lcom/android/camera/ui/SubSettingLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/manager/SubSettingManager;->LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/camera/manager/SettingManager;-><init>(Lcom/android/camera/Camera;)V

    .line 39
    return-void
.end method

.method private initializeSettings()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f040064

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    .line 128
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0b0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SubSettingLayout;

    iput-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    .line 130
    iget-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    sget-object v1, Lcom/android/camera/SettingChecker;->SETTING_GROUP_SUB_COMMON:[I

    invoke-static {v1}, Lcom/android/camera/SettingChecker;->getSettingKeys([I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SubSettingLayout;->initialize([Ljava/lang/String;Z)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 136
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 4
    .parameter "force"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, collapsechild:Z
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingListLayout;->collapseChild()Z

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/manager/SubSettingManager;->hideSetting()V

    .line 75
    const/4 v0, 0x1

    .line 77
    :cond_0
    sget-boolean v1, Lcom/android/camera/manager/SubSettingManager;->LOG:Z

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "SubSettingManager"

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

    .line 81
    :cond_1
    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const v1, 0x7f040065

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateImageView;

    iput-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    .line 46
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object v0
.end method

.method public hideSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    sget-boolean v0, Lcom/android/camera/manager/SubSettingManager;->LOG:Z

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "SubSettingManager"

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

    .line 142
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/SettingManager;->startFadeOutAnimation(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iput-boolean v3, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SettingListLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingListLayout$Listener;)V

    .line 159
    iget-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/SubSettingLayout;->reloadPreference()V

    .line 160
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    if-ne p1, v0, :cond_0

    .line 54
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/manager/SubSettingManager;->showSetting()V

    .line 58
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/camera/manager/SettingManager;->superOrientationChanged(I)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/manager/SubSettingManager;->mPageView:Lcom/android/camera/ui/SubSettingLayout;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 93
    return-void
.end method

.method public onPreferenceReady()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/camera/manager/SettingManager;->releaseSettingResource()V

    .line 87
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SettingChecker;->applyParametersToUI()V

    .line 65
    invoke-virtual {p0}, Lcom/android/camera/manager/SubSettingManager;->notifyDataSetChanged()V

    .line 67
    :cond_0
    return-void
.end method

.method public showSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    const-string v1, "SubSettingManager"

    const-string v2, "showSetting... start"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 102
    .local v0, preferenceGroup:Lcom/android/camera/PreferenceGroup;
    iget-boolean v1, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isNormalViewState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iput-boolean v5, p0, Lcom/android/camera/manager/SettingManager;->mShowingContainer:Z

    .line 105
    invoke-direct {p0}, Lcom/android/camera/manager/SubSettingManager;->initializeSettings()V

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 107
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 109
    const-string v1, "LeiLei"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSetting getContext() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setViewState(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mSettingLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/SettingManager;->startFadeInAnimation(Landroid/view/View;)V

    .line 115
    iget-object v1, p0, Lcom/android/camera/manager/SettingManager;->mIndicator:Lcom/android/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/camera/manager/SettingManager;->setChildrenClickable(Z)V

    .line 118
    const-string v1, "SubSettingManager"

    const-string v2, "showSetting... end"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0           #preferenceGroup:Lcom/android/camera/PreferenceGroup;
    :cond_2
    return-void
.end method
