.class public Lcom/dolby/ds1appCoreUI/DS1Application;
.super Landroid/app/Application;
.source "DS1Application.java"


# static fields
.field public static final CUSTOM_1_NAME_MODIFIED:I = 0x1

.field public static final CUSTOM_2_NAME_MODIFIED:I = 0x2

.field public static final CUSTOM_NAME_NOT_MODIFIED:I = 0x0

.field private static final DS_DEFAULT_NAME_CUSTOM1:Ljava/lang/String; = "Custom 1"

.field private static final DS_DEFAULT_NAME_CUSTOM2:Ljava/lang/String; = "Custom 2"

.field public static final HANDLER:Landroid/os/Handler; = null

.field private static final PREFS_NAME:Ljava/lang/String; = "DsUICustomProfile"

.field public static final TAG:Ljava/lang/String; = null

.field public static final VISUALIZER_ENABLE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/dolby/ds1appCoreUI/DS1Application;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dolby/ds1appCoreUI/DS1Application;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getCustomModifyFlag(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, bModified_Custom1:Z
    const/4 v1, 0x0

    .line 53
    .local v1, bModified_Custom2:Z
    if-eqz p0, :cond_2

    .line 54
    const-string v4, "DsUICustomProfile"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 55
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "bModified_Custom1"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 56
    const-string v4, "bModified_Custom2"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 61
    .end local v3           #sp:Landroid/content/SharedPreferences;
    :goto_0
    const/4 v2, 0x0

    .line 62
    .local v2, ret:I
    if-ne v7, v0, :cond_0

    .line 63
    or-int/lit8 v2, v2, 0x1

    .line 65
    :cond_0
    if-ne v7, v1, :cond_1

    .line 66
    or-int/lit8 v2, v2, 0x2

    .line 68
    :cond_1
    return v2

    .line 58
    .end local v2           #ret:I
    :cond_2
    sget-object v4, Lcom/dolby/ds1appCoreUI/DS1Application;->TAG:Ljava/lang/String;

    const-string v5, "getCustomModifyFlag(), context == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultProfileNameCustom1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Custom 1"

    return-object v0
.end method

.method public static getDefaultProfileNameCustom2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "Custom 2"

    return-object v0
.end method

.method public static saveCustomNameModifiedStatus(Landroid/content/Context;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "bModified_Custom1"
    .parameter "bModified_Custom2"

    .prologue
    .line 72
    const-string v2, "DsUICustomProfile"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "bModified_Custom1"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v2, "bModified_Custom2"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method


# virtual methods
.method public checkAndReplaceScreenSize(II)V
    .locals 10
    .parameter "screenW"
    .parameter "screenH"

    .prologue
    const/16 v9, 0x780

    const/high16 v8, 0x4320

    .line 123
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 124
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 125
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 126
    .local v0, conf:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 127
    .local v4, screenLayout:I
    and-int/lit8 v2, v4, 0xf

    .line 129
    .local v2, nativeScreenSize:I
    const/4 v7, 0x3

    if-eq v7, v2, :cond_0

    const/4 v7, 0x4

    if-ne v7, v2, :cond_5

    .line 130
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_6

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/dolby/ds1appCoreUI/DS1Application;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v5

    .line 132
    .local v5, screenRes:Landroid/graphics/Point;
    iget p1, v5, Landroid/graphics/Point;->x:I

    .line 133
    iget p2, v5, Landroid/graphics/Point;->y:I

    .line 140
    .end local v5           #screenRes:Landroid/graphics/Point;
    :cond_2
    :goto_0
    const/16 v7, 0x500

    if-lt p1, v7, :cond_7

    const/16 v7, 0x320

    if-lt p2, v7, :cond_7

    .line 141
    sub-int/2addr v4, v2

    .line 142
    or-int/lit8 v4, v4, 0x4

    .line 148
    :cond_3
    :goto_1
    if-ge p1, v9, :cond_4

    if-lt p2, v9, :cond_8

    .line 149
    :cond_4
    const/16 v7, 0xf0

    iput v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 153
    :goto_2
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    iput v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 154
    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    iput v7, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 157
    :cond_5
    iput v4, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 158
    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 159
    return-void

    .line 134
    :cond_6
    if-le p2, p1, :cond_2

    .line 135
    move v6, p1

    .line 136
    .local v6, t:I
    move p1, p2

    .line 137
    move p2, v6

    goto :goto_0

    .line 143
    .end local v6           #t:I
    :cond_7
    const/16 v7, 0x400

    if-lt p1, v7, :cond_3

    const/16 v7, 0x258

    if-lt p2, v7, :cond_3

    .line 144
    sub-int/2addr v4, v2

    .line 145
    or-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 151
    :cond_8
    const/16 v7, 0xa0

    iput v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_2
.end method

.method public getScreenResolution()Landroid/graphics/Point;
    .locals 7

    .prologue
    .line 93
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 94
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 97
    .local v3, screenW:I
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v6, Lcom/dolby/ds1appCoreUI/Constants;->STATUS_BAR_HEIGHT:I

    add-int v2, v5, v6

    .line 98
    .local v2, screenH:I
    if-le v2, v3, :cond_0

    .line 99
    move v4, v2

    .line 100
    .local v4, tmp:I
    move v2, v3

    .line 101
    move v3, v4

    .line 104
    .end local v4           #tmp:I
    :cond_0
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 105
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 107
    return-object v1
.end method

.method public printScreenSpecs()V
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v2, 0xf

    .line 82
    .local v1, screenLayoutSize:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 83
    .local v0, densityDpi:I
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenLayoutSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v2, "DsUI::MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "densityDpi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
