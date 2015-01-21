.class public Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;
.super Landroid/preference/Preference;
.source "CommandPlayPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandPlayPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "title"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 43
    iput-object p1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mContext:Landroid/content/Context;

    .line 45
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "title"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 56
    iput-object p1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mContext:Landroid/content/Context;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    iput-object p2, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 65
    const-string v1, "CommandPlayPreference"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 69
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, view:Landroid/view/View;
    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object v0
.end method
