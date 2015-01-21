.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$DisplayListener;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field private static final DEBUG:Z = false

.field public static final DISPLAY_CATEGORY_HDMI:Ljava/lang/String; = "android.hardware.display.category.HDMI"

.field public static final DISPLAY_CATEGORY_OVERLAY:Ljava/lang/String; = "android.hardware.display.category.OVERLAY"

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final DISPLAY_CATEGORY_WIFI:Ljava/lang/String; = "android.hardware.display.category.WIFI"

.field public static final EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field private static final TAG:Ljava/lang/String; = "DisplayManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final mLock:Ljava/lang/Object;

.field private final mTempDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempVirtualDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mVirtualDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mContextDisplays:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mVirtualDisplays:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    .line 102
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 104
    return-void
.end method

.method private addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .parameter
    .parameter "displayIds"
    .parameter "matchType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, displays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 326
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 327
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v0           #display:Landroid/view/Display;
    :cond_2
    return-void
.end method

.method private addMatchingVirtualDisplaysLocked(Ljava/util/ArrayList;[II)V
    .locals 4
    .parameter
    .parameter "displayIds"
    .parameter "matchDisplayId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/Display;",
            ">;[II)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, displays:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/Display;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 315
    aget v2, p2, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateVirtualDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 316
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_1

    if-ltz p3, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getParentDisplayId()I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 318
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    .end local v0           #display:Landroid/view/Display;
    :cond_2
    return-void
.end method

.method private findDefaultExternalDisplayLocked([I)Landroid/view/Display;
    .locals 4
    .parameter "displayIds"

    .prologue
    .line 335
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 336
    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 337
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x2000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 341
    .end local v0           #display:Landroid/view/Display;
    :goto_1
    return-object v0

    .line 335
    .restart local v0       #display:Landroid/view/Display;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v0           #display:Landroid/view/Display;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findThumbnailExternalDisplayLocked([I)Landroid/view/Display;
    .locals 4
    .parameter "displayIds"

    .prologue
    .line 345
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 346
    aget v2, p1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 347
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 351
    .end local v0           #display:Landroid/view/Display;
    :goto_1
    return-object v0

    .line 345
    .restart local v0       #display:Landroid/view/Display;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 351
    .end local v0           #display:Landroid/view/Display;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getOrCreateDisplayLocked(IZ)Landroid/view/Display;
    .locals 3
    .parameter "displayId"
    .parameter "assumeValid"

    .prologue
    .line 369
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 370
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1

    .line 371
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getCompatibilityInfo(I)Landroid/view/CompatibilityInfoHolder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_0

    .line 374
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    :cond_0
    :goto_0
    return-object v0

    .line 376
    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOrCreateVirtualDisplayLocked(IZ)Landroid/view/Display;
    .locals 3
    .parameter "displayId"
    .parameter "assumeValid"

    .prologue
    .line 355
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 356
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_1

    .line 357
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getCompatibilityInfo(I)Landroid/view/CompatibilityInfoHolder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addVirtualDisplay(IIIIIII)I
    .locals 11
    .parameter "parentDisplayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "flags"
    .parameter "rotation"

    .prologue
    .line 220
    iget-object v10, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 221
    const/4 v8, -0x1

    .line 223
    .local v8, retValue:I
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManagerGlobal;->addVirtualDisplay(IIIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 225
    :try_start_1
    monitor-exit v10

    move v9, v8

    .end local v8           #retValue:I
    .local v9, retValue:I
    :goto_0
    return v9

    .end local v9           #retValue:I
    .restart local v8       #retValue:I
    :catchall_0
    move-exception v0

    monitor-exit v10

    move v9, v8

    .end local v8           #retValue:I
    .restart local v9       #retValue:I
    goto :goto_0

    .line 227
    .end local v9           #retValue:I
    .restart local v8       #retValue:I
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public assignDisplayMap(IIZ)V
    .locals 2
    .parameter "srcDisplayId"
    .parameter "dstDisplayId"
    .parameter "enable"

    .prologue
    .line 232
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->assignDisplayMap(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    goto :goto_0

    .line 238
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public connectWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 431
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public disconnectWifiDisplay()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 441
    return-void
.end method

.method public forgetWifiDisplay(Ljava/lang/String;)V
    .locals 1
    .parameter "deviceAddress"

    .prologue
    .line 474
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method public getDefaultExternalDisplay()Landroid/view/Display;
    .locals 5

    .prologue
    .line 194
    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, display:Landroid/view/Display;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v2

    .line 198
    .local v2, displayIds:[I
    invoke-direct {p0, v2}, Landroid/hardware/display/DisplayManager;->findDefaultExternalDisplayLocked([I)Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 200
    :try_start_1
    monitor-exit v4

    move-object v1, v0

    .end local v0           #display:Landroid/view/Display;
    .end local v2           #displayIds:[I
    .local v1, display:Landroid/view/Display;
    :goto_0
    return-object v1

    .end local v1           #display:Landroid/view/Display;
    .restart local v0       #display:Landroid/view/Display;
    :catchall_0
    move-exception v3

    monitor-exit v4

    move-object v1, v0

    .end local v0           #display:Landroid/view/Display;
    .restart local v1       #display:Landroid/view/Display;
    goto :goto_0

    .line 202
    .end local v1           #display:Landroid/view/Display;
    .restart local v0       #display:Landroid/view/Display;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 3
    .parameter "displayId"

    .prologue
    .line 116
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 119
    .local v0, display:Landroid/view/Display;
    if-nez v0, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/hardware/display/DisplayManager;->getOrCreateVirtualDisplayLocked(IZ)Landroid/view/Display;

    move-result-object v0

    .line 123
    :cond_0
    monitor-exit v2

    return-object v0

    .line 124
    .end local v0           #display:Landroid/view/Display;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisplay(II)Landroid/view/Display;
    .locals 3
    .parameter "contextId"
    .parameter "displayId"

    .prologue
    .line 133
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContextDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 134
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 140
    :goto_0
    return-object v1

    .line 137
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/view/Display;

    invoke-direct {v1, p1, v0}, Landroid/view/Display;-><init>(ILandroid/view/Display;)V

    .line 139
    .local v1, realDisplay:Landroid/view/Display;
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContextDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getDisplayHasContent(I)Z
    .locals 4
    .parameter "displayId"

    .prologue
    .line 289
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, retValue:Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayHasContent(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    :try_start_1
    monitor-exit v3

    move v1, v0

    .end local v0           #retValue:Z
    .local v1, retValue:I
    :goto_0
    return v1

    .end local v1           #retValue:I
    .restart local v0       #retValue:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    move v1, v0

    .restart local v1       #retValue:I
    goto :goto_0

    .line 296
    .end local v1           #retValue:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .locals 4
    .parameter "category"

    .prologue
    .line 169
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v0

    .line 170
    .local v0, displayIds:[I
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 172
    if-nez p1, :cond_1

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, -0x1

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 185
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    .line 174
    :cond_1
    :try_start_2
    const-string v1, "android.hardware.display.category.HDMI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 189
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 176
    :cond_2
    :try_start_4
    const-string v1, "android.hardware.display.category.OVERLAY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V

    goto :goto_0

    .line 178
    :cond_3
    const-string v1, "android.hardware.display.category.WIFI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 179
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V

    goto :goto_0

    .line 180
    :cond_4
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 182
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 183
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempDisplays:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {p0, v1, v0, v3}, Landroid/hardware/display/DisplayManager;->addMatchingDisplaysLocked(Ljava/util/ArrayList;[II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getParentForDisplay(I)I
    .locals 4
    .parameter "displayId"

    .prologue
    .line 277
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 278
    const/4 v0, -0x1

    .line 280
    .local v0, retValue:I
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getParentForDisplay(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 282
    :try_start_1
    monitor-exit v3

    move v1, v0

    .end local v0           #retValue:I
    .local v1, retValue:I
    :goto_0
    return v1

    .end local v1           #retValue:I
    .restart local v0       #retValue:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    move v1, v0

    .end local v0           #retValue:I
    .restart local v1       #retValue:I
    goto :goto_0

    .line 284
    .end local v1           #retValue:I
    .restart local v0       #retValue:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public getThumbnailExternalDisplay()Landroid/view/Display;
    .locals 5

    .prologue
    .line 207
    iget-object v4, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 208
    const/4 v0, 0x0

    .line 210
    .local v0, display:Landroid/view/Display;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v2

    .line 211
    .local v2, displayIds:[I
    invoke-direct {p0, v2}, Landroid/hardware/display/DisplayManager;->findThumbnailExternalDisplayLocked([I)Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 213
    :try_start_1
    monitor-exit v4

    move-object v1, v0

    .end local v0           #display:Landroid/view/Display;
    .end local v2           #displayIds:[I
    .local v1, display:Landroid/view/Display;
    :goto_0
    return-object v1

    .end local v1           #display:Landroid/view/Display;
    .restart local v0       #display:Landroid/view/Display;
    :catchall_0
    move-exception v3

    monitor-exit v4

    move-object v1, v0

    .end local v0           #display:Landroid/view/Display;
    .restart local v1       #display:Landroid/view/Display;
    goto :goto_0

    .line 215
    .end local v1           #display:Landroid/view/Display;
    .restart local v0       #display:Landroid/view/Display;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getVirtualDisplays(I)[Landroid/view/Display;
    .locals 4
    .parameter "parentDisplayId"

    .prologue
    .line 301
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManagerGlobal;->getVirtualDisplayIds()[I

    move-result-object v0

    .line 302
    .local v0, displayIds:[I
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 304
    :try_start_0
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, p1}, Landroid/hardware/display/DisplayManager;->addMatchingVirtualDisplaysLocked(Ljava/util/ArrayList;[II)V

    .line 305
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/Display;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mTempVirtualDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v1

    .line 309
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public isSmartBookPluggedIn()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->isSmartBookPluggedIn()Z

    move-result v0

    return v0
.end method

.method public registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 393
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 394
    return-void
.end method

.method public removeVirtualDisplay(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 243
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->removeVirtualDisplay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    goto :goto_0

    .line 249
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "deviceAddress"
    .parameter "alias"

    .prologue
    .line 459
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public scanWifiDisplays()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->scanWifiDisplays()V

    .line 414
    return-void
.end method

.method public setVirtualDisplayFocus(IZ)Z
    .locals 4
    .parameter "displayId"
    .parameter "focus"

    .prologue
    .line 265
    iget-object v3, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, retValue:Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setVirtualDisplayFocus(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 270
    :try_start_1
    monitor-exit v3

    move v1, v0

    .end local v0           #retValue:Z
    .local v1, retValue:I
    :goto_0
    return v1

    .end local v1           #retValue:I
    .restart local v0       #retValue:Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    move v1, v0

    .restart local v1       #retValue:I
    goto :goto_0

    .line 272
    .end local v1           #retValue:I
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method

.method public unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 404
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 405
    return-void
.end method

.method public updateVirtualDisplay(IIIII)V
    .locals 7
    .parameter "displayId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 254
    iget-object v6, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerGlobal;->updateVirtualDisplay(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    monitor-exit v6

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    goto :goto_0

    .line 260
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
