.class public Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;
.super Landroid/preference/Preference;
.source "CdmaNetworkSwitcherPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CdmaNetworkSwitcherPreference"


# instance fields
.field private mCdmaSwitchContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mOnSwitchNetworkListener:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;

.field private mPendingSearchContainerVisibility:Z

.field private mPendingSwitchNetworkBtnEnable:Z

.field private mSearchingContainer:Landroid/view/View;

.field private mSwitchNetworKButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->initPreference()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->initPreference()V

    .line 36
    return-void
.end method

.method private initPreference()V
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 51
    const v0, 0x7f0b0026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    .line 52
    const v0, 0x7f0b0027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    .line 53
    const v0, 0x7f0b0028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mPendingSwitchNetworkBtnEnable:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 56
    iget-object v3, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mPendingSearchContainerVisibility:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    iget-boolean v3, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mPendingSearchContainerVisibility:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const-string v0, "CdmaNetworkSwitcherPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindView: mSearchingContainer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaSwitchContainer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v2, v1

    .line 58
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    const-string v0, "CdmaNetworkSwitcherPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mOnSwitchNetworkListener:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mOnSwitchNetworkListener:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;

    invoke-interface {v0}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;->onSwitchNetwork()V

    .line 97
    :cond_0
    return-void
.end method

.method public setOnPerformSwitchNetowrkListener(Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;)V
    .locals 0
    .parameter "onSwitchNetworkListener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mOnSwitchNetworkListener:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference$OnSwitchNetworkListener;

    .line 101
    return-void
.end method

.method public updateNetworkSearchingState(Z)V
    .locals 6
    .parameter "searching"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 75
    const-string v0, "CdmaNetworkSwitcherPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNetworkSearchingState: searching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSearchingContainer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCdmaSwitchContainer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "updateNetworkSearchingState"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 80
    iget-object v3, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const-string v0, "CdmaNetworkSwitcherPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkSearchingState: searching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSearchingContainer vis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSearchingContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCdmaSwitchContainer vis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mCdmaSwitchContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mPendingSearchContainerVisibility:Z

    .line 87
    return-void

    :cond_1
    move v0, v2

    .line 80
    goto :goto_0

    :cond_2
    move v2, v1

    .line 81
    goto :goto_1
.end method

.method public updateSwitcherState(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 65
    const-string v0, "CdmaNetworkSwitcherPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitcherState: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSwitchNetworKButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mSwitchNetworKButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->mPendingSwitchNetworkBtnEnable:Z

    .line 72
    return-void
.end method
