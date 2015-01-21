.class public Lcom/android/camera/ui/InLineSubSettingSublist;
.super Lcom/android/camera/ui/InLineSettingSublist;
.source "InLineSubSettingSublist.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "InLineSubSublist"


# instance fields
.field private Titlename:Ljava/lang/String;

.field private mImage:Lcom/android/camera/ui/RotateImageView;

.field private mTitleListname:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/ui/InLineSubSettingSublist;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/InLineSettingSublist;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    .line 49
    return-void
.end method


# virtual methods
.method public collapseChild()Z
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/camera/ui/InLineSettingSublist;->collapseChild()Z

    move-result v0

    return v0
.end method

.method public expendChild()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, expend:Z
    iget-boolean v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    if-nez v2, :cond_1

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mShowingChildList:Z

    .line 85
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingItem;->mListener:Lcom/android/camera/ui/InLineSettingItem$Listener;

    invoke-interface {v2, p0}, Lcom/android/camera/ui/InLineSettingItem$Listener;->onShow(Lcom/android/camera/ui/InLineSettingItem;)V

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 89
    .local v1, resId:I
    const v1, 0x7f040066

    .line 91
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1, v4}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingSublistLayout;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    .line 93
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    const v3, 0x7f0b013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingContainer:Landroid/view/View;

    .line 94
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    const v3, 0x7f0b0153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mTitleListname:Landroid/widget/TextView;

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mTitleListname:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v3}, Lcom/android/camera/CameraPreference;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/SettingSublistLayout;->initialize(Lcom/android/camera/ListPreference;)V

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 99
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/SettingSublistLayout;->setSettingChangedListener(Lcom/android/camera/ui/SettingSublistLayout$Listener;)V

    .line 100
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/InLineSettingSublist;->setOrientation(IZ)V

    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/InLineSettingSublist;->mSettingLayout:Lcom/android/camera/ui/SettingSublistLayout;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/InLineSettingItem;->fadeIn(Landroid/view/View;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSubSettingSublist;->highlight()V

    .line 103
    const/4 v0, 0x1

    .line 105
    .end local v1           #resId:I
    :cond_1
    sget-boolean v2, Lcom/android/camera/ui/InLineSubSettingSublist;->LOG:Z

    if-eqz v2, :cond_2

    .line 106
    const-string v2, "InLineSubSublist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expendChild() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    return v0
.end method

.method protected highlight()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    const v1, 0x7f02008b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public initialize(Lcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/camera/ui/InLineSubSettingSublist;->LOG:Z

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "InLineSubSublist"

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

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    if-ne v0, p1, :cond_2

    .line 78
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iput-object p1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->reloadPreference()V

    goto :goto_0
.end method

.method protected normalText()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/InLineSettingItem;->callSuperOnFinishInflate()V

    .line 54
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/InLineSettingSublist;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method protected setTextOrImage(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/ui/InLineSettingItem;->mPreference:Lcom/android/camera/ListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/ListPreference;->getIconId(I)I

    move-result v0

    .line 61
    .local v0, iconId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/InLineSubSettingSublist;->mImage:Lcom/android/camera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
