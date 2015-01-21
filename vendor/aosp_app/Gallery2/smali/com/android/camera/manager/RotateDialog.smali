.class public Lcom/android/camera/manager/RotateDialog;
.super Lcom/android/camera/manager/ViewManager;
.source "RotateDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RotateDialog"


# instance fields
.field private mButton1:Ljava/lang/String;

.field private mButton2:Ljava/lang/String;

.field private mDialogFadeIn:Landroid/view/animation/Animation;

.field private mDialogFadeOut:Landroid/view/animation/Animation;

.field private mMessage:Ljava/lang/String;

.field private mRotateDialog:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleDivider:Landroid/view/View;

.field private mRotateDialogTitleLayout:Landroid/view/View;

.field private mRunnable1:Ljava/lang/Runnable;

.field private mRunnable2:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/manager/RotateDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    return-object v0
.end method

.method private resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 71
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    return-void
.end method

.method private resetValues()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    .line 83
    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    .line 84
    return-void
.end method


# virtual methods
.method public collapse(Z)Z
    .locals 1
    .parameter "force"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->collapse(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected fadeIn()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getShowAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/manager/RotateDialog;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    :cond_1
    return-void
.end method

.method protected fadeOut()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getHideAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/manager/RotateDialog;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mDialogFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_1
    return-void
.end method

.method protected getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    const v1, 0x7f050006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const v2, 0x7f040057

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getViewLayer()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/RotateLayout;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    .line 59
    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 60
    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 61
    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0b0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    .line 66
    return-object v0
.end method

.method protected onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/camera/manager/RotateDialog;->resetRotateDialog()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogTitleDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/SettingUtils;->getMainColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton1:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/manager/RotateDialog$1;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/RotateDialog$1;-><init>(Lcom/android/camera/manager/RotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButton2:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/manager/RotateDialog$2;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/RotateDialog$2;-><init>(Lcom/android/camera/manager/RotateDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/manager/RotateDialog;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_4
    const-string v0, "RotateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefresh() mTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mButton1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mButton2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunnable1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRunnable2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method public showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "title"
    .parameter "msg"
    .parameter "button1Text"
    .parameter "r1"
    .parameter "button2Text"
    .parameter "r2"

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/camera/manager/RotateDialog;->resetValues()V

    .line 140
    iput-object p1, p0, Lcom/android/camera/manager/RotateDialog;->mTitle:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/android/camera/manager/RotateDialog;->mMessage:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/android/camera/manager/RotateDialog;->mButton1:Ljava/lang/String;

    .line 143
    iput-object p5, p0, Lcom/android/camera/manager/RotateDialog;->mButton2:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable1:Ljava/lang/Runnable;

    .line 145
    iput-object p6, p0, Lcom/android/camera/manager/RotateDialog;->mRunnable2:Ljava/lang/Runnable;

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 147
    return-void
.end method
