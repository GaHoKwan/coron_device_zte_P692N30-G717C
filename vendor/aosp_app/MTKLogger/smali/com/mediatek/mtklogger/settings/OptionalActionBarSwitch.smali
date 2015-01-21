.class public Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;
.super Ljava/lang/Object;
.source "OptionalActionBarSwitch.java"


# instance fields
.field private mActionBarTextView:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBarSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "selectedNumber"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActivity:Landroid/app/Activity;

    .line 57
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 59
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, customActionBarView:Landroid/view/View;
    const v3, 0x7f090034

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 62
    .local v1, doneMenuItem:Landroid/widget/ImageButton;
    const v3, 0x7f090035

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActionBarTextView:Landroid/widget/TextView;

    .line 63
    iget-object v3, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActionBarTextView:Landroid/widget/TextView;

    const v4, 0x7f07005c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v3, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch$1;

    invoke-direct {v3, p0}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch$1;-><init>(Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    const/16 v5, 0x1a

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v4, -0x2

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    .line 36
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 38
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 40
    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 46
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 90
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 96
    :cond_0
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/mediatek/mtklogger/settings/LogSwitchListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public updateTitle(I)V
    .locals 6
    .parameter "num"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActionBarTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActionBarTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActivity:Landroid/app/Activity;

    const v2, 0x7f07005c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    return-void
.end method
