.class public Lcom/android/wallpaper/polarclock/PolarClockWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "PolarClockWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$CyclingClockPalette;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$FixedClockPalette;,
        Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockPalette;
    }
.end annotation


# static fields
.field static final BACKGROUND_COLOR:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PolarClock"

.field static final PREF_PALETTE:Ljava/lang/String; = "palette"

.field static final PREF_SHOW_SECONDS:Ljava/lang/String; = "show_seconds"

.field static final PREF_VARIABLE_LINE_WIDTH:Ljava/lang/String; = "variable_line_width"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "polar_clock_settings"


# instance fields
.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    .line 271
    iget-object v0, p0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/polarclock/PolarClockWallpaper$ClockEngine;-><init>(Lcom/android/wallpaper/polarclock/PolarClockWallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 277
    return-void
.end method
