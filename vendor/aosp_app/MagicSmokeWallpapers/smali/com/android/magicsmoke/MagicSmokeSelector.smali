.class public Lcom/android/magicsmoke/MagicSmokeSelector;
.super Landroid/app/Activity;
.source "MagicSmokeSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MagicSmokeSelector"


# instance fields
.field private mCurrentPreset:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

.field private mWallpaperIntent:Landroid/content/Intent;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/magicsmoke/MagicSmokeSelector;)Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    return-object v0
.end method

.method private updatePrefs()V
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preset"

    iget v2, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    .line 107
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/magicsmoke/MagicSmoke;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperIntent:Landroid/content/Intent;

    .line 65
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 66
    new-instance v0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    iget-object v1, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperIntent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1}, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;-><init>(Lcom/android/magicsmoke/MagicSmokeSelector;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    .line 68
    const-string v0, "magicsmoke"

    invoke-virtual {p0, v0, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mSharedPref:Landroid/content/SharedPreferences;

    .line 69
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "preset"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    .line 70
    iget v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    sget-object v1, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 71
    iput v3, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    .line 72
    invoke-direct {p0}, Lcom/android/magicsmoke/MagicSmokeSelector;->updatePrefs()V

    .line 74
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 113
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    invoke-virtual {v0}, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->disconnect()V

    .line 116
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    .line 117
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    iget-object v0, v0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    iget-object v0, v0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    iget-object v0, v0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mWallpaperConnection:Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;

    iget-object v0, v0, Lcom/android/magicsmoke/MagicSmokeSelector$WallpaperConnection;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/service/wallpaper/IWallpaperEngine;->setVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 125
    :pswitch_0
    iget v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/magicsmoke/MagicSmokeRS;->mPreset:[Lcom/android/magicsmoke/MagicSmokeRS$Preset;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    .line 130
    :goto_1
    invoke-direct {p0}, Lcom/android/magicsmoke/MagicSmokeSelector;->updatePrefs()V

    .line 131
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iget v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/magicsmoke/MagicSmokeSelector;->mCurrentPreset:I

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
