.class public Lcom/mediatek/voiceunlock/VoiceUnlockPreference;
.super Landroid/preference/TwoStatePreference;
.source "VoiceUnlockPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceUnlockPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDoneImage:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mTitleView:Landroid/widget/TextView;

    .line 29
    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    .line 30
    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mDoneImage:Landroid/widget/ImageView;

    .line 50
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mKey:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 131
    const-string v0, "VoiceUnlockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceUnlockPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->log(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mDoneImage:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mTitleView:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->setChecked(Z)V

    .line 99
    return-object v0
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "checked"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mDoneImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 111
    if-eqz p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mDoneImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 119
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mDoneImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->mKey:Ljava/lang/String;

    .line 80
    return-void
.end method
