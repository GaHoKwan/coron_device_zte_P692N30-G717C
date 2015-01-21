.class public Lcom/android/camera/manager/IndicatorManager;
.super Lcom/android/camera/manager/ViewManager;
.source "IndicatorManager.java"

# interfaces
.implements Lcom/android/camera/Camera$OnParametersReadyListener;
.implements Lcom/android/camera/Camera$OnPreferenceReadyListener;


# static fields
.field private static final FROM_PARAMETERS:[Z = null

.field private static final INDICATOR_COUNT:I = 0x6

.field private static final ROW_EXPOSURE:I = 0x2

.field private static final ROW_SCENE_MODE:I = 0x1

.field private static final ROW_SELF_TIME:I = 0x4

.field private static final ROW_TIME_LAPSE:I = 0x3

.field private static final ROW_VOICE:I = 0x5

.field private static final ROW_WHITE_BALANCE:I = 0x0

.field private static final SETTING_ROWS:[I = null

.field private static final TAG:Ljava/lang/String; = "IndicatorManager"

.field private static final VIEW_IDS:[I


# instance fields
.field private mDefaults:[Ljava/lang/String;

.field private mIndicatorGroup:Landroid/view/View;

.field private mOverrides:[Ljava/lang/String;

.field private mPreferenceReady:Z

.field private mPrefs:[Lcom/android/camera/ListPreference;

.field private mViews:[Lcom/android/camera/ui/RotateImageView;

.field private mVisibles:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->VIEW_IDS:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    .line 39
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/manager/IndicatorManager;->FROM_PARAMETERS:[Z

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0x9et 0x0t 0xbt 0x7ft
        0x9dt 0x0t 0xbt 0x7ft
        0x9ft 0x0t 0xbt 0x7ft
        0xa0t 0x0t 0xbt 0x7ft
        0xa1t 0x0t 0xbt 0x7ft
        0xa3t 0x0t 0xbt 0x7ft
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x6

    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 54
    new-array v0, v1, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    .line 55
    new-array v0, v1, [Lcom/android/camera/ListPreference;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    .line 56
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    .line 57
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnParametersReadyListener(Lcom/android/camera/Camera$OnParametersReadyListener;)Z

    .line 65
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnPreferenceReadyListener(Lcom/android/camera/Camera$OnPreferenceReadyListener;)Z

    .line 67
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/manager/ViewManager;->setAnimationEnabled(ZZ)V

    .line 68
    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 4

    .prologue
    .line 72
    const v2, 0x7f04002f

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    sget-object v2, Lcom/android/camera/manager/IndicatorManager;->VIEW_IDS:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    .line 77
    return-object v1
.end method

.method public onCameraParameterReady()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "why not preference has not been initialized?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/IndicatorManager;->refreshModeIndicator(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    .line 96
    return-void
.end method

.method public onDetectedSceneMode(I)V
    .locals 9
    .parameter "scene"

    .prologue
    const/4 v8, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 187
    .local v0, asdModeMapping:Landroid/content/res/TypedArray;
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, sceneMode:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    iget-object v5, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v2, v5, v8

    .line 191
    .local v2, localOverride:Ljava/lang/String;
    const-string v3, "auto"

    .line 192
    .local v3, preferenceValue:Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aput-object v4, v5, v8

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v5

    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    move-object v3, v4

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v5

    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/camera/SettingChecker;->getOverrideValues(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, checkerOverride:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v5

    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v6, v6, v8

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/SettingChecker;->setOverrideValues(ILjava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->notifyPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 206
    .end local v1           #checkerOverride:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v5, "IndicatorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDetectedSceneMode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") override="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sceneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preferenceValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local override="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 203
    .restart local v1       #checkerOverride:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->refresh()V

    goto :goto_0
.end method

.method public onPreferenceReady()V
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 82
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 83
    sget-object v3, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v2, v3, v1

    .line 84
    .local v2, row:I
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v4

    aput-object v4, v3, v1

    .line 85
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/SettingChecker;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v2           #row:I
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    .line 88
    return-void
.end method

.method public onRefresh()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 100
    iget-boolean v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    :cond_0
    const-string v6, "IndicatorManager"

    const-string v7, "onRefresh() why refresh before preference ready? "

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/camera/manager/IndicatorManager;->refreshModeIndicator(Z)V

    .line 105
    const/4 v4, 0x0

    .line 106
    .local v4, showcount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v6, 0x6

    if-ge v0, v6, :cond_a

    .line 107
    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v3, v6, v0

    .line 108
    .local v3, row:I
    const/4 v5, 0x0

    .line 109
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_6

    .line 110
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v5, v6, v0

    .line 117
    :goto_2
    if-ne v10, v3, :cond_2

    .line 118
    const-string v6, "hdr"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    const-string v5, "auto"

    .line 122
    :cond_2
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v6, v6, v0

    instance-of v6, v6, Lcom/android/camera/IconListPreference;

    if-eqz v6, :cond_5

    .line 123
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v6, v6, v0

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    const/16 v6, 0x16

    if-ne v3, v6, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getViewState()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 127
    :cond_4
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    :cond_5
    :goto_3
    const-string v6, "IndicatorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRefresh() i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", row["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", view="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", default="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mDefaults:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", override="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", showcount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 111
    :cond_6
    sget-object v6, Lcom/android/camera/manager/IndicatorManager;->FROM_PARAMETERS:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_7

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/SettingChecker;->getParameterValue(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 114
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/camera/SettingChecker;->getSettingCurrentValue(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 129
    :cond_8
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mPrefs:[Lcom/android/camera/ListPreference;

    aget-object v1, v6, v0

    check-cast v1, Lcom/android/camera/IconListPreference;

    .line 131
    .local v1, iconPref:Lcom/android/camera/IconListPreference;
    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getOriginalIconIds()[I

    move-result-object v6

    if-eqz v6, :cond_9

    .line 134
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getOriginalEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, index:I
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v1}, Lcom/android/camera/IconListPreference;->getOriginalIconIds()[I

    move-result-object v7

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    .end local v2           #index:I
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 143
    .end local v1           #iconPref:Lcom/android/camera/IconListPreference;
    .end local v3           #row:I
    .end local v5           #value:Ljava/lang/String;
    :cond_a
    if-lez v4, :cond_b

    .line 144
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    const v7, 0x7f02000b

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 146
    :cond_b
    iget-object v6, p0, Lcom/android/camera/manager/IndicatorManager;->mIndicatorGroup:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized refreshModeIndicator(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v6, 0x6

    .line 151
    monitor-enter p0

    :try_start_0
    const-string v3, "IndicatorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshModeIndicator("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mVisibles="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_3

    .line 153
    :cond_0
    const/4 v3, 0x6

    new-array v3, v3, [Z

    iput-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 155
    const/4 v2, 0x1

    .line 156
    .local v2, visible:Z
    sget-object v3, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    aget v1, v3, v0

    .line 157
    .local v1, row:I
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 158
    sget-object v3, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    invoke-static {v3, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v2

    .line 162
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/camera/manager/IndicatorManager;->mVisibles:[Z

    aput-boolean v2, v3, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Camera;->isVideoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    sget-object v3, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    invoke-static {v3, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    goto :goto_1

    .line 165
    .end local v0           #i:I
    .end local v1           #row:I
    .end local v2           #visible:Z
    :cond_3
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public restoreSceneMode()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v2

    sget-object v3, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/SettingChecker;->setOverrideValues(ILjava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/camera/manager/IndicatorManager;->mOverrides:[Ljava/lang/String;

    aput-object v5, v2, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    const-string v2, "IndicatorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSceneMode() mPreferenceReady="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public saveSceneMode()V
    .locals 3

    .prologue
    .line 169
    const-string v0, "IndicatorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveSceneMode() mPreferenceReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/manager/IndicatorManager;->mPreferenceReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    sget-object v1, Lcom/android/camera/manager/IndicatorManager;->SETTING_ROWS:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SettingChecker;->setOverrideValues(ILjava/lang/String;)V

    .line 172
    return-void
.end method
