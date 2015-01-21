.class public abstract Lcom/android/camera/manager/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewManager"

.field public static final UNKNOWN:I = -0x1

.field public static final VIEW_LAYER_BOTTOM:I = -0x1

.field public static final VIEW_LAYER_NORMAL:I = 0x0

.field public static final VIEW_LAYER_OVERLAY:I = 0x4

.field public static final VIEW_LAYER_SETTING:I = 0x3

.field public static final VIEW_LAYER_SHUTTER:I = 0x2

.field public static final VIEW_LAYER_TOP:I = 0x1


# instance fields
.field private mConfigOrientation:I

.field private mContext:Lcom/android/camera/Camera;

.field private mEnabled:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mFilter:Z

.field private mHideAnimationEnabled:Z

.field private mOrientation:I

.field private mShowAnimationEnabled:Z

.field private mShowing:Z

.field private mView:Landroid/view/View;

.field private final mViewLayer:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;I)V
    .locals 1
    .parameter "context"
    .parameter "layer"

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mFilter:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowAnimationEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mHideAnimationEnabled:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/ViewManager;->mConfigOrientation:I

    .line 37
    iput-object p1, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    .line 38
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addViewManager(Lcom/android/camera/manager/ViewManager;)Z

    .line 39
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->addOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 40
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getOrientationCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    .line 41
    iput p2, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    .line 42
    return-void
.end method


# virtual methods
.method public checkConfiguration()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 106
    .local v0, newConfigOrientation:I
    const-string v1, "ViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkConfiguration() mConfigOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/manager/ViewManager;->mConfigOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newConfigOrientation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v1, p0, Lcom/android/camera/manager/ViewManager;->mConfigOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/manager/ViewManager;->mConfigOrientation:I

    if-eq v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->reInflate()V

    .line 111
    :cond_0
    return-void
.end method

.method public collapse(Z)Z
    .locals 1
    .parameter "force"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method protected fadeIn()V
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getFadeInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeIn:Landroid/view/animation/Animation;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeIn:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected fadeOut()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mHideAnimationEnabled:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeOut:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeOut:Landroid/view/animation/Animation;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mFadeOut:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final getContext()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getFadeInAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHideAnimationEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mHideAnimationEnabled:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    return v0
.end method

.method public getShowAnimationEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowAnimationEnabled:Z

    return v0
.end method

.method protected abstract getView()Landroid/view/View;
.end method

.method public getViewLayer()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 127
    const-string v0, "ViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->fadeOut()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public final inflate(I)Landroid/view/View;
    .locals 2
    .parameter "layoutId"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/Camera;->inflate(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 184
    iget v0, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 185
    iput p1, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    .line 186
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 188
    :cond_0
    return-void
.end method

.method protected onRefresh()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public final reInflate()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    .line 154
    .local v0, showing:Z
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 155
    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->show()V

    .line 163
    :cond_1
    return-void
.end method

.method public final refresh()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->onRefresh()V

    .line 169
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 3

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->removeView(Landroid/view/View;I)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->removeViewManager(Lcom/android/camera/manager/ViewManager;)Z

    .line 179
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/Camera;->removeOnOrientationListener(Lcom/android/camera/Camera$OnOrientationListener;)Z

    .line 180
    return-void
.end method

.method public setAnimationEnabled(ZZ)V
    .locals 0
    .parameter "showAnimationEnabled"
    .parameter "hideAnimationEnabled"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/camera/manager/ViewManager;->mShowAnimationEnabled:Z

    .line 74
    iput-boolean p2, p0, Lcom/android/camera/manager/ViewManager;->mHideAnimationEnabled:Z

    .line 75
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    .line 196
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 198
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mFilter:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    invoke-static {v0, v1}, Lcom/android/camera/SettingUtils;->setEnabledState(Landroid/view/View;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public setFileter(Z)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/camera/manager/ViewManager;->mFilter:Z

    .line 58
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    const-string v0, "ViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/camera/manager/ViewManager;->mConfigOrientation:I

    .line 89
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    .line 90
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/manager/ViewManager;->mViewLayer:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->addView(Landroid/view/View;I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/manager/ViewManager;->mOrientation:I

    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->fadeIn()V

    .line 98
    iget-object v0, p0, Lcom/android/camera/manager/ViewManager;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/manager/ViewManager;->mShowing:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    goto :goto_0
.end method
