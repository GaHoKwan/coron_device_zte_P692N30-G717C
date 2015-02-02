.class public Lcom/dolby/ds1appCoreUI/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field private static final DEFAULT_MAX_EDIT_GAIN:F = 12.0f

.field private static final DEFAULT_MIN_EDIT_GAIN:F = -12.0f

.field private static dynamicInstance:Lcom/dolby/ds1appCoreUI/Configuration;


# instance fields
.field private maxEditGain:F

.field private minEditGain:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/high16 v4, 0x7fc0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v2, -0x3ec0

    iput v2, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    .line 25
    const/high16 v2, 0x4140

    iput v2, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, nfe:Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    .line 33
    iput v4, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F

    .line 34
    const-string v2, "DsUI::MainActivity"

    const-string v3, "Some of values from configuration.xml were not float type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 36
    .local v1, npe:Ljava/lang/NullPointerException;
    iput v4, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    .line 37
    iput v4, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F

    .line 38
    const-string v2, "DsUI::MainActivity"

    const-string v3, "Some of values from configuration.xml were not loaded!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/dolby/ds1appCoreUI/Configuration;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 49
    sget-object v0, Lcom/dolby/ds1appCoreUI/Configuration;->dynamicInstance:Lcom/dolby/ds1appCoreUI/Configuration;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/dolby/ds1appCoreUI/Configuration;

    invoke-direct {v0, p0}, Lcom/dolby/ds1appCoreUI/Configuration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolby/ds1appCoreUI/Configuration;->dynamicInstance:Lcom/dolby/ds1appCoreUI/Configuration;

    .line 52
    :cond_0
    sget-object v0, Lcom/dolby/ds1appCoreUI/Configuration;->dynamicInstance:Lcom/dolby/ds1appCoreUI/Configuration;

    return-object v0
.end method


# virtual methods
.method public getMaxEditGain()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/high16 v0, 0x4140

    .line 59
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/ds1appCoreUI/Configuration;->maxEditGain:F

    goto :goto_0
.end method

.method public getMinEditGain()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/high16 v0, -0x3ec0

    .line 66
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/dolby/ds1appCoreUI/Configuration;->minEditGain:F

    goto :goto_0
.end method
