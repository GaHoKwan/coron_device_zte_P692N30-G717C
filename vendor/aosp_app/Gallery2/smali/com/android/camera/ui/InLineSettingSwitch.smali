.class public Lcom/android/camera/ui/InLineSettingSwitch;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingSwitch.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;
.implements Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InLineSettingSwitch"


# instance fields
.field mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Lcom/android/camera/Camera;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

.field private mShowingChildList:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/camera/ui/InLineSettingSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSwitch$1;-><init>(Lcom/android/camera/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 108
    new-instance v0, Lcom/android/camera/ui/InLineSettingSwitch$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingSwitch$2;-><init>(Lcom/android/camera/ui/InLineSettingSwitch;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 55
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/InLineSettingSwitch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingSwitch;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 175
    const-string v0, "InLineSettingSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, collapse:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 155
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeOut(Landroid/view/View;)V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    .line 158
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getVoiceManager()Lcom/android/camera/VoiceManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VoiceManager;->setVoiceSublistShow(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 163
    const/4 v0, 0x1

    .line 165
    :cond_1
    const-string v1, "InLineSettingSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collapseChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingSwitch;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public extendChild()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, extend:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    if-nez v1, :cond_0

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    .line 134
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getVoiceManager()Lcom/android/camera/VoiceManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mShowingChildList:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/VoiceManager;->setVoiceSublistShow(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f040061

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingSwitchSublistLayout;

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    .line 137
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingSwitchSublistLayout;->initialize(Lcom/android/camera/ListPreference;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-virtual {v1, v2, v4}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 140
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/SettingSwitchSublistLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingSwitchSublistLayout$Listener;)V

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/android/camera/ui/InLineSettingSwitch;->setOrientation(IZ)V

    .line 142
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSettingLayout:Lcom/android/camera/ui/SettingSwitchSublistLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeIn(Landroid/view/View;)V

    .line 143
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    const-string v1, "InLineSettingSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extendChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 6
    .parameter "preference"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->initialize(Lcom/android/camera/ListPreference;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c018f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v5}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 61
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/InLineSettingSwitch;->setOrientation(IZ)V

    .line 172
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 105
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public onVoiceCommandChanged(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onVoiceCommandChanged(I)V

    .line 186
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 76
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    .line 78
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mIndex:I

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 84
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingSwitch;->setEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void

    :cond_0
    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingItem;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, index:I
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSwitch;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_2

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
