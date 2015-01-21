.class public Lcom/android/camera/manager/ShutterManager;
.super Lcom/android/camera/manager/ViewManager;
.source "ShutterManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# static fields
.field public static final SHUTTER_TYPE_CANCEL:I = 0x4

.field public static final SHUTTER_TYPE_CANCEL_VIDEO:I = 0x5

.field public static final SHUTTER_TYPE_OK_CANCEL:I = 0x3

.field public static final SHUTTER_TYPE_PHOTO:I = 0x1

.field public static final SHUTTER_TYPE_PHOTO_VIDEO:I = 0x0

.field public static final SHUTTER_TYPE_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ShutterManager"


# instance fields
.field private mCancelButton:Landroid/view/View;

.field private mCancelButtonEnabled:Z

.field private mCancelListener:Landroid/view/View$OnClickListener;

.field private mFullScreen:Z

.field private mOkButton:Landroid/view/View;

.field private mOklistener:Landroid/view/View$OnClickListener;

.field private mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

.field private mPhotoShutterEnabled:Z

.field private mShutterType:I

.field private mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mVideoShutter:Lcom/android/camera/ui/ShutterButton;

.field private mVideoShutterEnabled:Z

.field private mVideoShutterMasked:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;I)V

    .line 24
    iput v2, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    .line 37
    iput-boolean v1, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    .line 41
    invoke-virtual {p0, v2}, Lcom/android/camera/manager/ViewManager;->setFileter(Z)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 43
    return-void
.end method

.method private applyListener()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_3
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyListener() mPhotoShutter=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mVideoShutter=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mOkButton=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mCancelButton=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method


# virtual methods
.method public getPhotoShutter()Lcom/android/camera/ui/ShutterButton;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    return-object v0
.end method

.method public getShutterType()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    return v0
.end method

.method public getVideoShutter()Lcom/android/camera/ui/ShutterButton;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, view:Landroid/view/View;
    const v0, 0x7f04000f

    .line 49
    .local v0, layoutId:I
    iget v2, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 72
    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 73
    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ShutterButton;

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 74
    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    .line 75
    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    .line 76
    invoke-direct {p0}, Lcom/android/camera/manager/ShutterManager;->applyListener()V

    .line 77
    return-object v1

    .line 51
    :pswitch_0
    const v0, 0x7f04000f

    .line 52
    goto :goto_0

    .line 54
    :pswitch_1
    const v0, 0x7f04000e

    .line 55
    goto :goto_0

    .line 57
    :pswitch_2
    const v0, 0x7f040010

    .line 58
    goto :goto_0

    .line 60
    :pswitch_3
    const v0, 0x7f04000d

    .line 61
    goto :goto_0

    .line 63
    :pswitch_4
    const v0, 0x7f04000b

    .line 64
    goto :goto_0

    .line 66
    :pswitch_5
    const v0, 0x7f04000c

    .line 67
    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isCancelButtonEnabled()Z
    .locals 3

    .prologue
    .line 223
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCancelButtonEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    return v0
.end method

.method public isPhotoShutterEnabled()Z
    .locals 3

    .prologue
    .line 201
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPhotoShutterEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    return v0
.end method

.method public isVideoShutterEnabled()Z
    .locals 3

    .prologue
    .line 212
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoShutterEnabled() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    return v0
.end method

.method public onFullScreenChanged(Z)V
    .locals 0
    .parameter "full"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 243
    return-void
.end method

.method public onRefresh()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v4, "ShutterManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRefresh() mPhotoShutterEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mFullScreen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isEnabled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v5

    const/16 v6, 0x9

    invoke-static {v4, v5, v6}, Lcom/android/camera/ModeChecker;->getModePickerVisible(Lcom/android/camera/Camera;II)Z

    move-result v1

    .line 149
    .local v1, visible:Z
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 151
    .local v0, enabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 152
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 153
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterMasked:Z

    if-eqz v4, :cond_5

    .line 154
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    const v5, 0x7f020035

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    .end local v0           #enabled:Z
    .end local v1           #visible:Z
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v4, :cond_1

    .line 160
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_6

    move v0, v2

    .line 161
    .restart local v0       #enabled:Z
    :goto_2
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 162
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 164
    .end local v0           #enabled:Z
    :cond_1
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_7

    move v0, v2

    .line 166
    .restart local v0       #enabled:Z
    :goto_3
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 167
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setClickable(Z)V

    .line 169
    .end local v0           #enabled:Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 170
    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/camera/manager/ShutterManager;->mFullScreen:Z

    if-eqz v4, :cond_8

    move v0, v2

    .line 171
    .restart local v0       #enabled:Z
    :goto_4
    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 174
    .end local v0           #enabled:Z
    :cond_3
    return-void

    .restart local v1       #visible:Z
    :cond_4
    move v0, v3

    .line 149
    goto :goto_0

    .line 156
    .restart local v0       #enabled:Z
    :cond_5
    iget-object v4, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    const v5, 0x7f020034

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .end local v0           #enabled:Z
    .end local v1           #visible:Z
    :cond_6
    move v0, v3

    .line 160
    goto :goto_2

    :cond_7
    move v0, v3

    .line 165
    goto :goto_3

    :cond_8
    move v0, v3

    .line 170
    goto :goto_4
.end method

.method protected onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;)V

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_3
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 95
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutter:Lcom/android/camera/ui/ShutterButton;

    .line 96
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mOkButton:Landroid/view/View;

    .line 97
    iput-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButton:Landroid/view/View;

    .line 98
    return-void
.end method

.method public performPhotoShutter()Z
    .locals 4

    .prologue
    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, performed:Z
    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ShutterButton;->performClick()Z

    .line 188
    const/4 v0, 0x1

    .line 190
    :cond_0
    const-string v1, "ShutterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performPhotoShutter() mPhotoShutter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutter:Lcom/android/camera/ui/ShutterButton;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v0
.end method

.method public setCancelButtonEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 217
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCancelButtonEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mCancelButtonEnabled:Z

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 220
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 237
    return-void
.end method

.method public setPhotoShutterEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 195
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhotoShutterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoShutterEnabled:Z

    .line 197
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 198
    return-void
.end method

.method public setShutterListener(Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "photoListener"
    .parameter "videoListener"
    .parameter "okListener"
    .parameter "cancelListener"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/manager/ShutterManager;->mPhotoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 124
    iput-object p2, p0, Lcom/android/camera/manager/ShutterManager;->mVideoListener:Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 125
    iput-object p3, p0, Lcom/android/camera/manager/ShutterManager;->mOklistener:Landroid/view/View$OnClickListener;

    .line 126
    iput-object p4, p0, Lcom/android/camera/manager/ShutterManager;->mCancelListener:Landroid/view/View$OnClickListener;

    .line 127
    invoke-direct {p0}, Lcom/android/camera/manager/ShutterManager;->applyListener()V

    .line 128
    return-void
.end method

.method public setVideoShutterEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 206
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShutterEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterEnabled:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 209
    return-void
.end method

.method public setVideoShutterMask(Z)V
    .locals 3
    .parameter "mask"

    .prologue
    .line 228
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoShutterMask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-boolean p1, p0, Lcom/android/camera/manager/ShutterManager;->mVideoShutterMasked:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 231
    return-void
.end method

.method public switchShutter(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 131
    const-string v0, "ShutterManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchShutterType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mShutterType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget v0, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/android/camera/manager/ShutterManager;->mShutterType:I

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->reInflate()V

    .line 136
    :cond_0
    return-void
.end method
