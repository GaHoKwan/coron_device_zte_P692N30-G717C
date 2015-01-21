.class public Lcom/mediatek/voiceunlock/VoiceCommandPreference;
.super Landroid/preference/TwoStatePreference;
.source "VoiceCommandPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceCommandPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKey:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mSummary:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/voiceunlock/VoiceCommandPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mContext:Landroid/content/Context;

    .line 54
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mKey:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 108
    const-string v0, "VoiceUnlockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceCommandPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method


# virtual methods
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

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->log(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 94
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mTitleView:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mSummaryView:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 100
    return-object v0
.end method

.method public setProfileKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mKey:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSummaryAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceCommandPreference;->mSummary:Ljava/lang/String;

    .line 105
    return-void
.end method
