.class public Lcom/android/camera/ui/InLineSettingVirtual;
.super Lcom/android/camera/ui/InLineSettingItem;
.source "InLineSettingVirtual.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;
.implements Lcom/android/camera/ui/SettingVirtualLayout$Listener;


# static fields
.field private static final TAG:Ljava/lang/String; = "InLineSettingVirtual"


# instance fields
.field private mChildPrefs:[Lcom/android/camera/ListPreference;

.field private mContext:Lcom/android/camera/Camera;

.field private mEntry:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSettingContainer:Landroid/view/View;

.field private mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

.field private mShowingChildList:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/camera/ui/InLineSettingVirtual$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/InLineSettingVirtual$1;-><init>(Lcom/android/camera/ui/InLineSettingVirtual;)V

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 66
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/InLineSettingVirtual;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/InLineSettingVirtual;)[Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    return-object v0
.end method

.method private highlight()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    return-void
.end method

.method private normalText()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    :cond_1
    const v0, 0x7f0201b4

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 211
    return-void
.end method

.method private setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 226
    const-string v0, "InLineSettingVirtual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

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

    .line 227
    iget-boolean v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-static {v0, p1, p2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public collapseChild()Z
    .locals 4

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, collapse:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 179
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 180
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeOut(Landroid/view/View;)V

    .line 181
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->normalText()V

    .line 182
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    .line 184
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onDismiss(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 187
    :cond_0
    const/4 v0, 0x1

    .line 189
    :cond_1
    const-string v1, "InLineSettingVirtual"

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

    .line 190
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingVirtual;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public expendChild()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, expend:Z
    iget-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    if-nez v1, :cond_1

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mShowingChildList:Z

    .line 156
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v1, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onShow(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    const v2, 0x7f040063

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingVirtualLayout;

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    const v2, 0x7f0b013f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingContainer:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingVirtualLayout;->initialize([Lcom/android/camera/ListPreference;)V

    .line 163
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 164
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/SettingVirtualLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingVirtualLayout$Listener;)V

    .line 166
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/ui/InLineSettingVirtual;->setOrientation(IZ)V

    .line 167
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mSettingLayout:Lcom/android/camera/ui/SettingVirtualLayout;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/InLineSettingItem;->fadeIn(Landroid/view/View;)V

    .line 168
    invoke-direct {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->highlight()V

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_1
    const-string v1, "InLineSettingVirtual"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expendChild() return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 90
    const-string v0, "InLineSettingVirtual"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setTitle(Lcom/android/camera/ListPreference;)V

    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->reloadPreference()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingItem;->onFinishInflate()V

    .line 72
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/InLineSettingVirtual;->setOrientation(IZ)V

    .line 223
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 85
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2}, Lcom/android/camera/ListPreference;->getEntry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public onSettingChanged()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onSettingChanged(Lcom/android/camera/ui/InLineSettingItem;Lcom/android/camera/ListPreference;)V

    .line 218
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 6

    .prologue
    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v2, v3

    .line 104
    .local v2, len:I
    new-array v3, v2, [Lcom/android/camera/ListPreference;

    iput-object v3, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    .line 105
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 106
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    iget-object v4, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4, v1}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    aput-object v4, v3, v0

    .line 108
    const-string v3, "InLineSettingVirtual"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadPreference() mChildPrefs["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->updateView()V

    .line 111
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/android/camera/ui/InLineSettingItem;->setEnabled(Z)V

    .line 235
    if-nez p1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingVirtual;->collapseChild()Z

    .line 238
    :cond_0
    return-void
.end method

.method protected updateView()V
    .locals 11

    .prologue
    .line 115
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    if-nez v8, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    array-length v5, v8

    .line 120
    .local v5, len:I
    const/4 v0, 0x1

    .line 121
    .local v0, allDefault:Z
    const/4 v2, 0x0

    .line 122
    .local v2, enableCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 123
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mChildPrefs:[Lcom/android/camera/ListPreference;

    aget-object v6, v8, v4

    .line 124
    .local v6, pref:Lcom/android/camera/ListPreference;
    if-nez v6, :cond_3

    .line 122
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 127
    :cond_3
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, defaultValue:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v7

    .line 129
    .local v7, value:Ljava/lang/String;
    if-nez v7, :cond_4

    .line 130
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 132
    :cond_4
    invoke-virtual {v6}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 136
    :cond_5
    if-eqz v0, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 137
    const/4 v0, 0x0

    goto :goto_2

    .line 140
    .end local v1           #defaultValue:Ljava/lang/String;
    .end local v6           #pref:Lcom/android/camera/ListPreference;
    .end local v7           #value:Ljava/lang/String;
    :cond_6
    if-eqz v0, :cond_7

    .line 141
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v9}, Lcom/android/camera/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_3
    if-ne v2, v5, :cond_8

    const/4 v3, 0x1

    .line 146
    .local v3, enabled:Z
    :goto_4
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8, v3}, Lcom/android/camera/ListPreference;->setEnabled(Z)V

    .line 147
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v8}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/camera/ui/InLineSettingVirtual;->setEnabled(Z)V

    .line 148
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const-string v8, "InLineSettingVirtual"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateView() enableCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v3           #enabled:Z
    :cond_7
    iget-object v8, p0, Lcom/android/camera/ui/InLineSettingVirtual;->mEntry:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 145
    :cond_8
    const/4 v3, 0x0

    goto :goto_4
.end method
