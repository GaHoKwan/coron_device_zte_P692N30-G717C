.class public Lcom/android/camera/manager/PickerManager;
.super Lcom/android/camera/manager/ViewManager;
.source "PickerManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnParametersReadyListener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;
.implements Lcom/android/camera/ui/PickerButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/PickerManager$PickerListener;
    }
.end annotation


# static fields
.field private static final BUTTON_CAMERA:I = 0x3

.field private static final BUTTON_FLASH:I = 0x2

.field private static final BUTTON_HDR:I = 0x1

.field private static final BUTTON_SMILE_SHOT:I = 0x0

.field private static final BUTTON_STEREO:I = 0x4

.field private static final PICKER_BUTTON_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PickerManager"


# instance fields
.field private mCameraPicker:Lcom/android/camera/ui/PickerButton;

.field private mFlashPicker:Lcom/android/camera/ui/PickerButton;

.field private mHdr:Lcom/android/camera/ui/PickerButton;

.field private mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

.field private mNeedUpdate:Z

.field private mPickerButtons:[Lcom/android/camera/ui/PickerButton;

.field private mPreferenceReady:Z

.field private mSmileShot:Lcom/android/camera/ui/PickerButton;

.field private mStereoPicker:Lcom/android/camera/ui/PickerButton;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/ui/PickerButton;

    iput-object v0, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    .line 46
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 47
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 48
    return-void
.end method

.method private applyListeners()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_4

    .line 83
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 85
    :cond_4
    const-string v0, "PickerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyListeners() mFlashPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCameraPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStereoPicker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method private clearListeners()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setListener(Lcom/android/camera/ui/PickerButton$Listener;)V

    .line 105
    :cond_4
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 52
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    .line 55
    const v1, 0x7f0b00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    .line 56
    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    .line 57
    const v1, 0x7f0b00ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    .line 58
    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/PickerButton;

    iput-object v1, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    .line 60
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    aput-object v3, v1, v2

    .line 61
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    aput-object v3, v1, v2

    .line 62
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    aput-object v3, v1, v2

    .line 63
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    aput-object v3, v1, v2

    .line 64
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    aput-object v3, v1, v2

    .line 65
    invoke-direct {p0}, Lcom/android/camera/manager/PickerManager;->applyListeners()V

    .line 66
    return-object v0
.end method

.method public onCameraParameterReady()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "PickerManager"

    const-string v1, "onCameraParameterReady()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_4

    .line 134
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 136
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 137
    return-void
.end method

.method public onPicked(Lcom/android/camera/ui/PickerButton;Lcom/android/camera/ListPreference;Ljava/lang/String;)Z
    .locals 7
    .parameter "button"
    .parameter "pref"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, picked:Z
    invoke-virtual {p2}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    if-eqz v5, :cond_1

    .line 144
    const/4 v1, -0x1

    .line 145
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/android/camera/manager/PickerManager;->mPickerButtons:[Lcom/android/camera/ui/PickerButton;

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    move v1, v0

    .line 152
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 175
    .end local v0           #i:I
    .end local v1           #index:I
    :cond_1
    :goto_1
    const-string v4, "PickerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPicked("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") mListener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v3

    .line 145
    .restart local v0       #i:I
    .restart local v1       #index:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p1, p3}, Lcom/android/camera/ui/PickerButton;->setValue(Ljava/lang/String;)V

    .line 155
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    const/4 v5, 0x6

    invoke-interface {v4, v5, p2}, Lcom/android/camera/manager/PickerManager$PickerListener;->onModePicked(ILcom/android/camera/ListPreference;)Z

    move-result v3

    .line 156
    goto :goto_1

    .line 158
    :pswitch_1
    invoke-virtual {p1, p3}, Lcom/android/camera/ui/PickerButton;->setValue(Ljava/lang/String;)V

    .line 159
    iget-object v5, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-interface {v5, v4, p2}, Lcom/android/camera/manager/PickerManager$PickerListener;->onModePicked(ILcom/android/camera/ListPreference;)Z

    move-result v3

    .line 160
    goto :goto_1

    .line 162
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-interface {v4, p3}, Lcom/android/camera/manager/PickerManager$PickerListener;->onFlashPicked(Ljava/lang/String;)Z

    move-result v3

    .line 163
    goto :goto_1

    .line 165
    :pswitch_3
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/camera/manager/PickerManager$PickerListener;->onCameraPicked(I)Z

    move-result v3

    .line 166
    goto :goto_1

    .line 168
    :pswitch_4
    iget-object v5, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    const-string v6, "1"

    invoke-virtual {v6, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-interface {v5, v4}, Lcom/android/camera/manager/PickerManager$PickerListener;->onStereoPicked(Z)Z

    move-result v3

    .line 169
    goto :goto_1

    .line 168
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPreferenceReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    const-string v0, "PickerManager"

    const-string v1, "onPreferenceReady()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-boolean v2, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/camera/manager/PickerManager;->mPreferenceReady:Z

    .line 116
    return-void
.end method

.method public onRefresh()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 187
    const-string v1, "PickerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRefresh() mPreferenceReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/manager/PickerManager;->mPreferenceReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNeedUpdate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-boolean v1, p0, Lcom/android/camera/manager/PickerManager;->mPreferenceReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    if-eqz v1, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/16 v5, 0x34

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 191
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/16 v5, 0x33

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 193
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 195
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 197
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    const/16 v5, 0x2d

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IconListPreference;

    invoke-virtual {v4, v1}, Lcom/android/camera/ui/PickerButton;->initialize(Lcom/android/camera/IconListPreference;)V

    .line 199
    iput-boolean v2, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/PickerButton;->reloadPreference()V

    .line 207
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/PickerButton;->updateView()V

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ModeChecker;->getCameraPickerVisible(Lcom/android/camera/Camera;)Z

    move-result v0

    .line 212
    .local v0, visible:Z
    iget-object v4, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    .end local v0           #visible:Z
    :cond_4
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v1, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ModeChecker;->getStereoPickerVisibile(Lcom/android/camera/Camera;)Z

    move-result v0

    .line 216
    .restart local v0       #visible:Z
    iget-object v1, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_7

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    .end local v0           #visible:Z
    :cond_5
    return-void

    .restart local v0       #visible:Z
    :cond_6
    move v1, v3

    .line 212
    goto :goto_0

    :cond_7
    move v2, v3

    .line 216
    goto :goto_1
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/manager/PickerManager;->mNeedUpdate:Z

    .line 224
    return-void
.end method

.method public setCameraId(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/PickerButton;->setValue(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mSmileShot:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mHdr:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mFlashPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mCameraPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 245
    :cond_3
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/manager/PickerManager;->mStereoPicker:Lcom/android/camera/ui/PickerButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 249
    :cond_4
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/PickerManager$PickerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/camera/manager/PickerManager;->mListener:Lcom/android/camera/manager/PickerManager$PickerListener;

    .line 109
    return-void
.end method
