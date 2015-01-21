.class final Lcom/android/server/wm/InputMonitor;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;


# static fields
.field private static final MILLI_TO_NANO:J = 0xf4240L


# instance fields
.field private mFakeInputWindowHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/input/InputWindowHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesReady:Z

.field private final mInputDevicesReadyMonitor:Ljava/lang/Object;

.field private mInputDispatchEnabled:Z

.field private mInputDispatchFrozen:Z

.field private mInputWindowHandleCount:I

.field private mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSmartShowContext:Lcom/android/server/FullSmartShowContext;

.field private mUpdateInputWindowsNeeded:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V
    .locals 3
    .parameter "windowHandle"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    if-nez v0, :cond_0

    .line 279
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 281
    :cond_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/input/InputWindowHandle;

    iput-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    aput-object p1, v0, v1

    .line 286
    return-void
.end method

.method private addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V
    .locals 8
    .parameter "inputWindowHandle"
    .parameter "child"
    .parameter "flags"
    .parameter "type"
    .parameter "isVisible"
    .parameter "hasFocus"
    .parameter "hasWallpaper"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 292
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 293
    iput p3, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 294
    iput p4, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 295
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getInputDispatchingTimeoutNanos()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 296
    iput-boolean p5, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 297
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v4

    iput-boolean v4, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 298
    iput-boolean p6, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 299
    iput-boolean p7, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 300
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_1

    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->paused:Z

    :goto_0
    iput-boolean v4, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 301
    iget v4, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 302
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 303
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mUid:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 304
    iget-object v4, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 306
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 307
    .local v0, frame:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 308
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 309
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 310
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 312
    iput v7, p1, Lcom/android/server/input/InputWindowHandle;->scaleXoffset:F

    .line 313
    iput v7, p1, Lcom/android/server/input/InputWindowHandle;->scaleYoffset:F

    .line 314
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 315
    const/high16 v1, 0x3f80

    .local v1, globalScaleFactor:F
    const/high16 v2, 0x3f80

    .line 317
    .local v2, magScaleFactor:F
    iget v4, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_0

    .line 321
    iget v4, p2, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v1, v6, v4

    .line 324
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowMagnificationSpecLocked()Lcom/android/server/wm/MagnificationSpec;

    move-result-object v3

    .line 325
    .local v3, spec:Lcom/android/server/wm/MagnificationSpec;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/MagnificationSpec;->isNop()Z

    move-result v4

    if-nez v4, :cond_2

    .line 326
    iget v4, v3, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    div-float v2, v6, v4

    .line 327
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleXoffset:F

    iget v5, v3, Lcom/android/server/wm/MagnificationSpec;->mOffsetX:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleXoffset:F

    .line 328
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleYoffset:F

    iget v5, v3, Lcom/android/server/wm/MagnificationSpec;->mOffsetY:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleYoffset:F

    .line 329
    iget v4, v3, Lcom/android/server/wm/MagnificationSpec;->mScale:F

    div-float v4, v6, v4

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor2:F

    .line 334
    :goto_1
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleXoffset:F

    iget v5, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleXoffset:F

    .line 335
    iget v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleYoffset:F

    iget v5, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleYoffset:F

    .line 337
    mul-float v4, v1, v2

    iput v4, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 339
    iget-object v4, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 342
    return-void

    .line 300
    .end local v0           #frame:Landroid/graphics/Rect;
    .end local v1           #globalScaleFactor:F
    .end local v2           #magScaleFactor:F
    .end local v3           #spec:Lcom/android/server/wm/MagnificationSpec;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 331
    .restart local v0       #frame:Landroid/graphics/Rect;
    .restart local v1       #globalScaleFactor:F
    .restart local v2       #magScaleFactor:F
    .restart local v3       #spec:Lcom/android/server/wm/MagnificationSpec;
    :cond_2
    iput v6, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor2:F

    goto :goto_1
.end method

.method private clearInputWindowHandlesLw()V
    .locals 3

    .prologue
    .line 345
    :goto_0
    iget v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    iget v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandleCount:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method

.method private updateInputDispatchModeLw()V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-boolean v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setInputDispatchMode(ZZ)V

    .line 712
    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 2
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 594
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 595
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    return-object v1

    .line 594
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public freezeInputDispatchingLw()V
    .locals 2

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-nez v0, :cond_1

    .line 679
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "WindowManager"

    const-string v1, "Freezing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 684
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 686
    :cond_1
    return-void
.end method

.method public getPointerLayer()I
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e2

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/input/InputWindowHandle;Landroid/view/KeyEvent;I)J
    .locals 3
    .parameter "focus"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 586
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v0, v1

    .line 587
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1, v0, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    return-wide v1

    .line 586
    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    return v0
.end method

.method public interceptMotionBeforeQueueingWhenScreenOff(I)I
    .locals 1
    .parameter "policyFlags"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->interceptMotionBeforeQueueingWhenScreenOff(I)I

    move-result v0

    return v0
.end method

.method public notifyANR(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;)J
    .locals 16
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"

    .prologue
    .line 146
    const/4 v3, 0x0

    .line 147
    .local v3, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    const/4 v11, 0x0

    .line 148
    .local v11, windowState:Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 150
    .local v2, aboveSystem:Z
    const/4 v4, 0x0

    .line 151
    .local v4, bIsWNR:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v12, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 152
    if-eqz p2, :cond_1

    .line 153
    :try_start_0
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v12

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v11, v0

    .line 154
    if-eqz v11, :cond_1

    .line 156
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v12

    if-eqz v12, :cond_4

    .line 157
    const-string v12, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input event dispatching timed out sending to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    if-nez v3, :cond_0

    .line 163
    const/4 v4, 0x1

    .line 169
    :cond_0
    :try_start_1
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v12}, Landroid/view/IWindow;->dumpInputDispatchingStatus()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 183
    :try_start_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/input/InputApplicationHandle;->appWindowToken:Ljava/lang/Object;

    move-object v0, v12

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    move-object v3, v0

    .line 186
    :cond_2
    if-eqz v11, :cond_6

    .line 187
    const-string v12, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input event dispatching timed out sending to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v15}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v14, 0x7d3

    invoke-interface {v12, v14}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v8

    .line 194
    .local v8, systemAlertLayer:I
    iget v12, v11, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le v12, v8, :cond_5

    const/4 v2, 0x1

    .line 202
    .end local v8           #systemAlertLayer:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12, v3, v11}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;)V

    .line 203
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    if-eqz v3, :cond_b

    iget-object v12, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v12, :cond_b

    .line 212
    :try_start_3
    iget-wide v12, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    const-wide/32 v14, 0xf4240

    div-long/2addr v12, v14

    invoke-static {v12, v13}, Lcom/android/server/am/ANRManager;->extendANRTime(J)J

    move-result-wide v6

    .line 213
    .local v6, extendTime:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_8

    .line 214
    const-string v12, "WindowManager"

    const-string v13, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    const-wide/32 v12, 0xf4240

    mul-long v9, v6, v12

    .line 274
    .end local v6           #extendTime:J
    :cond_3
    :goto_2
    return-wide v9

    .line 170
    :catch_0
    move-exception v5

    .line 171
    .local v5, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v12, "WindowManager"

    const-string v14, "Error dump input dispatching status."

    invoke-static {v12, v14, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 203
    .end local v5           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 176
    :cond_4
    :try_start_5
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    .line 194
    .restart local v8       #systemAlertLayer:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 195
    .end local v8           #systemAlertLayer:I
    :cond_6
    if-eqz v3, :cond_7

    .line 196
    const-string v12, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Input event dispatching timed out sending to application "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 199
    :cond_7
    const-string v12, "WindowManager"

    const-string v14, "Input event dispatching timed out."

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 220
    .restart local v6       #extendTime:J
    :cond_8
    const/4 v1, 0x1

    .line 222
    .local v1, abort:Z
    :try_start_6
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v12

    if-eqz v12, :cond_a

    .line 224
    if-eqz v4, :cond_9

    .line 226
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notifyWNR mPid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v14, v14, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v12

    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    const-string v14, "KeyDispatchingTimeout--WNR"

    invoke-interface {v12, v13, v14}, Landroid/app/IANRManager;->notifyWNR(ILjava/lang/String;)Z

    move-result v1

    .line 240
    :goto_3
    if-nez v1, :cond_d

    .line 243
    iget-wide v9, v3, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    goto :goto_2

    .line 232
    :cond_9
    iget-object v12, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v12}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z

    move-result v1

    goto :goto_3

    .line 237
    :cond_a
    iget-object v12, v3, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v12}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v1

    goto :goto_3

    .line 247
    .end local v1           #abort:Z
    .end local v6           #extendTime:J
    :cond_b
    if-eqz v11, :cond_c

    .line 251
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v12

    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v13, v13, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v12, v13, v2}, Landroid/app/IActivityManager;->inputDispatchingTimedOut(IZ)J

    move-result-wide v9

    .line 253
    .local v9, timeout:J
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-gez v12, :cond_3

    .line 259
    const-wide/16 v12, 0x1f40

    invoke-static {v12, v13}, Lcom/android/server/am/ANRManager;->extendANRTime(J)J

    move-result-wide v6

    .line 260
    .restart local v6       #extendTime:J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_d

    .line 261
    const-string v12, "WindowManager"

    const-string v13, "Skip INPUT_DISPATCH_TIMEOUT ANR due to user confirm blocking"

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    .line 262
    const-wide/32 v12, 0xf4240

    mul-long v9, v6, v12

    goto/16 :goto_2

    .line 271
    .end local v6           #extendTime:J
    .end local v9           #timeout:J
    :cond_c
    const-string v12, "WindowManager"

    const-string v13, "both windowState & appWindowToken are null"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_d
    :goto_4
    const-wide/16 v9, 0x0

    goto/16 :goto_2

    .line 266
    :catch_1
    move-exception v12

    goto :goto_4

    .line 245
    :catch_2
    move-exception v12

    goto :goto_4
.end method

.method public notifyConfigurationChanged()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    .line 542
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    if-nez v0, :cond_0

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 547
    :cond_0
    monitor-exit v1

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyInputChannelBroken(Lcom/android/server/input/InputWindowHandle;)V
    .locals 5
    .parameter "inputWindowHandle"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 97
    :try_start_0
    iget-object v0, p1, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 98
    .local v0, windowState:Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_1

    .line 99
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WINDOW DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->removeWindowLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 102
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #windowState:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 1
    .parameter "whenNanos"
    .parameter "lidOpen"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/WindowManagerPolicy;->notifyLidSwitchChanged(JZ)V

    .line 566
    return-void
.end method

.method public notifyPredump(Lcom/android/server/input/InputApplicationHandle;Lcom/android/server/input/InputWindowHandle;II)V
    .locals 6
    .parameter "inputApplicationHandle"
    .parameter "inputWindowHandle"
    .parameter "pid"
    .parameter "message"

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 111
    .local v3, windowState:Lcom/android/server/wm/WindowState;
    const/4 v1, 0x0

    .line 112
    .local v1, appWindowToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_0

    .line 114
    :try_start_0
    iget-object v4, p2, Lcom/android/server/input/InputWindowHandle;->windowState:Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v3, v0

    .line 115
    if-eqz v3, :cond_0

    .line 117
    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 121
    :cond_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    if-eqz v3, :cond_2

    .line 124
    :cond_1
    invoke-static {}, Landroid/app/ANRManagerNative;->getDefault()Landroid/app/IANRManager;

    move-result-object v4

    const-string v5, "KeyDispatchingTimeout predump"

    invoke-interface {v4, p3, v5, p4}, Landroid/app/IANRManager;->notifyLightWeightANR(ILjava/lang/String;I)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_2
    const-string v4, "WindowManager"

    const-string v5, "Touch event for WNR, it isn\'t necessary to predump"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .line 133
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Error notifyPredump "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 4
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    .line 656
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-nez v0, :cond_1

    .line 657
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pausing WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    iput-boolean v3, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 662
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 664
    :cond_1
    return-void
.end method

.method public resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V
    .locals 3
    .parameter "window"

    .prologue
    .line 667
    iget-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz v0, :cond_1

    .line 668
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming WindowToken "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 675
    :cond_1
    return-void
.end method

.method public setEventDispatchingLw(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    if-eq v0, p1, :cond_1

    .line 701
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting event dispatching to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchEnabled:Z

    .line 706
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 708
    :cond_1
    return-void
.end method

.method public setFocusedAppLw(Lcom/android/server/wm/AppWindowToken;)V
    .locals 4
    .parameter "newApp"

    .prologue
    .line 632
    if-nez p1, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    .line 653
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 636
    .local v1, handle:Lcom/android/server/input/InputApplicationHandle;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 637
    iget-wide v2, p1, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    iput-wide v2, v1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 639
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->displayId:I

    .line 644
    :try_start_0
    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->getFocusAppPid()I

    move-result v2

    iput v2, v1, Lcom/android/server/input/InputApplicationHandle;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedApplication(Lcom/android/server/input/InputApplicationHandle;)V

    goto :goto_0

    .line 646
    :catch_0
    move-exception v0

    .line 648
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "GetFocusAppPid fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setInputFocusLw(Lcom/android/server/wm/WindowState;ZLcom/android/server/wm/DisplayContent;I)V
    .locals 4
    .parameter "newWindow"
    .parameter "updateInputWindows"
    .parameter "displayConet"
    .parameter "displayId"

    .prologue
    const/4 v3, 0x0

    .line 609
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_1

    .line 610
    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input focus has changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_1
    invoke-virtual {p3, p4}, Lcom/android/server/wm/DisplayContent;->getInputFocus(I)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 614
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 621
    :cond_2
    invoke-virtual {p3, p4, p1}, Lcom/android/server/wm/DisplayContent;->saveInputFocus(ILcom/android/server/wm/WindowState;)V

    .line 622
    invoke-virtual {p0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 624
    if-eqz p2, :cond_3

    .line 625
    invoke-virtual {p0, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 628
    :cond_3
    return-void
.end method

.method public setSmartBookPlugIn(Z)V
    .locals 1
    .parameter "plugin"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setSmartBookPlugIn(Z)V

    .line 717
    return-void
.end method

.method public setUpdateInputWindowsNeededLw()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 352
    return-void
.end method

.method public thawInputDispatchingLw()V
    .locals 2

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    if-eqz v0, :cond_1

    .line 690
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "WindowManager"

    const-string v1, "Thawing input dispatching"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDispatchFrozen:Z

    .line 695
    invoke-direct {p0}, Lcom/android/server/wm/InputMonitor;->updateInputDispatchModeLw()V

    .line 697
    :cond_1
    return-void
.end method

.method public updateFakeWindowsInfoLw()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 505
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    if-nez v8, :cond_0

    .line 506
    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/SmartShowContextWrapper;->getBaseContext()Landroid/content/SmartShowContext;

    move-result-object v8

    check-cast v8, Lcom/android/server/FullSmartShowContext;

    iput-object v8, p0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    .line 508
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    .line 509
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    .line 510
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v8}, Lcom/android/server/FullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    .line 511
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 512
    new-instance v3, Lcom/android/server/input/InputWindowHandle;

    const/4 v8, -0x1

    invoke-direct {v3, v13, v13, v8}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    .line 513
    .local v3, handle:Lcom/android/server/input/InputWindowHandle;
    const-string v8, "Fake window"

    iput-object v8, v3, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 514
    const/16 v8, 0xbb6

    iput v8, v3, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 515
    const/4 v8, 0x0

    iput-boolean v8, v3, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 516
    const/high16 v8, -0x8000

    iput v8, v3, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 517
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 520
    .end local v0           #N:I
    .end local v3           #handle:Lcom/android/server/input/InputWindowHandle;
    .end local v4           #i:I
    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mInMultiWindowMode:Z

    if-eqz v8, :cond_3

    .line 521
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v8}, Lcom/android/server/FullSmartShowContext;->getMaxLocalScreen()I

    move-result v0

    .line 522
    .restart local v0       #N:I
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 523
    .local v1, content:Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 524
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v8, v4, v13}, Lcom/android/server/FullSmartShowContext;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v2

    .line 525
    .local v2, displayId:I
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v7

    .line 526
    .local v7, vContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v7, :cond_2

    .line 527
    invoke-virtual {v7}, Lcom/android/server/wm/VirtualDisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 528
    .local v5, info:Landroid/view/DisplayInfo;
    new-instance v6, Landroid/graphics/Rect;

    iget v8, v5, Landroid/view/DisplayInfo;->logicalLeft:I

    iget v9, v5, Landroid/view/DisplayInfo;->logicalTop:I

    iget v10, v5, Landroid/view/DisplayInfo;->logicalLeft:I

    iget v11, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/DisplayInfo;->logicalTop:I

    iget v12, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v11, v12

    invoke-direct {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 530
    .local v6, rect:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/InputWindowHandle;

    .line 531
    .restart local v3       #handle:Lcom/android/server/input/InputWindowHandle;
    iget-object v8, v3, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v6}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 532
    iput v2, v3, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 523
    .end local v3           #handle:Lcom/android/server/input/InputWindowHandle;
    .end local v5           #info:Landroid/view/DisplayInfo;
    .end local v6           #rect:Landroid/graphics/Rect;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 536
    .end local v0           #N:I
    .end local v1           #content:Lcom/android/server/wm/DisplayContent;
    .end local v2           #displayId:I
    .end local v4           #i:I
    .end local v7           #vContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_3
    return-void
.end method

.method public updateInputWindowsLw(Z)V
    .locals 29
    .parameter "force"

    .prologue
    .line 356
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    if-nez v2, :cond_0

    .line 502
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/InputMonitor;->mUpdateInputWindowsNeeded:Z

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, v2, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v28, v0

    .line 369
    .local v28, universeBackground:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v15, v2, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 370
    .local v15, aboveUniverseLayer:I
    const/16 v16, 0x0

    .line 373
    .local v16, addedUniverse:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2

    const/16 v22, 0x1

    .line 374
    .local v22, inDrag:Z
    :goto_1
    if-eqz v22, :cond_1

    .line 375
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-nez v2, :cond_3

    .line 378
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v2, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v18, v0

    .line 379
    .local v18, dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v18, :cond_4

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 387
    .end local v18           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 388
    .local v14, NFW:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v14, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFakeWindows:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FakeWindowImpl;

    iget-object v2, v2, Lcom/android/server/wm/FakeWindowImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 388
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 373
    .end local v14           #NFW:I
    .end local v21           #i:I
    .end local v22           #inDrag:Z
    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    .line 376
    .restart local v22       #inDrag:Z
    :cond_3
    const-string v2, "WindowManager"

    const-string v3, "Inserting drag window"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 382
    .restart local v18       #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    :cond_4
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 393
    .end local v18           #dragWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .restart local v14       #NFW:I
    .restart local v21       #i:I
    :cond_5
    new-instance v25, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;-><init>(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 395
    .local v25, iterator:Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;
    :cond_6
    :goto_5
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 396
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->next()Lcom/android/server/wm/WindowState;

    move-result-object v17

    .line 397
    .local v17, child:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 398
    .local v23, inputChannel:Landroid/view/InputChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .line 399
    .local v24, inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_6

    if-eqz v24, :cond_6

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x838

    if-eq v2, v3, :cond_7

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isFloatingWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_7
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mTmpHidden:Z

    if-nez v2, :cond_6

    .line 406
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    .line 407
    .local v19, flags:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    .line 409
    .local v27, type:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputFocus()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_b

    const/4 v11, 0x1

    .line 410
    .local v11, hasFocus:Z
    :goto_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    .line 411
    .local v10, isVisible:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_c

    const/16 v2, 0x7d4

    move/from16 v0, v27

    if-eq v0, v2, :cond_c

    const/4 v12, 0x1

    .line 413
    .local v12, hasWallpaper:Z
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v2

    if-nez v2, :cond_d

    const/16 v26, 0x1

    .line 417
    .local v26, onDefaultDisplay:Z
    :goto_8
    if-eqz v22, :cond_8

    if-eqz v10, :cond_8

    if-eqz v26, :cond_8

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 421
    :cond_8
    if-eqz v28, :cond_a

    if-nez v16, :cond_a

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v15, :cond_a

    if-eqz v26, :cond_a

    .line 423
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 424
    .local v4, u:Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_9

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_9

    .line 425
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->getInputFocus(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v4, v2, :cond_e

    const/4 v8, 0x1

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 428
    :cond_9
    const/16 v16, 0x1

    .line 431
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v28

    if-eq v2, v0, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    move/from16 v8, v19

    move/from16 v9, v27

    .line 432
    invoke-direct/range {v5 .. v12}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_5

    .line 409
    .end local v10           #isVisible:Z
    .end local v11           #hasFocus:Z
    .end local v12           #hasWallpaper:Z
    .end local v26           #onDefaultDisplay:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_6

    .line 411
    .restart local v10       #isVisible:Z
    .restart local v11       #hasFocus:Z
    :cond_c
    const/4 v12, 0x0

    goto :goto_7

    .line 413
    .restart local v12       #hasWallpaper:Z
    :cond_d
    const/16 v26, 0x0

    goto :goto_8

    .line 425
    .restart local v4       #u:Lcom/android/server/wm/WindowState;
    .restart local v26       #onDefaultDisplay:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_9

    .line 438
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    .end local v10           #isVisible:Z
    .end local v11           #hasFocus:Z
    .end local v12           #hasWallpaper:Z
    .end local v17           #child:Lcom/android/server/wm/WindowState;
    .end local v19           #flags:I
    .end local v23           #inputChannel:Landroid/view/InputChannel;
    .end local v24           #inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .end local v26           #onDefaultDisplay:Z
    .end local v27           #type:I
    :cond_f
    new-instance v25, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;

    .end local v25           #iterator:Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;-><init>(Lcom/android/server/wm/WindowManagerService;Z)V

    .line 440
    .restart local v25       #iterator:Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;
    :cond_10
    :goto_a
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 441
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService$AllWindowsIterator;->next()Lcom/android/server/wm/WindowState;

    move-result-object v17

    .line 442
    .restart local v17       #child:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    move-object/from16 v23, v0

    .line 443
    .restart local v23       #inputChannel:Landroid/view/InputChannel;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v24, v0

    .line 444
    .restart local v24       #inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    if-eqz v23, :cond_10

    if-eqz v24, :cond_10

    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v2, :cond_10

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x838

    if-eq v2, v3, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isFloatingWindow()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mTmpHidden:Z

    if-eqz v2, :cond_10

    .line 451
    :cond_12
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v19, v0

    .line 452
    .restart local v19       #flags:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    .line 454
    .restart local v27       #type:I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputFocus()Lcom/android/server/wm/WindowState;

    move-result-object v2

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_16

    const/4 v11, 0x1

    .line 455
    .restart local v11       #hasFocus:Z
    :goto_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    .line 456
    .restart local v10       #isVisible:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_17

    const/16 v2, 0x7d4

    move/from16 v0, v27

    if-eq v0, v2, :cond_17

    const/4 v12, 0x1

    .line 458
    .restart local v12       #hasWallpaper:Z
    :goto_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v2

    if-nez v2, :cond_18

    const/16 v26, 0x1

    .line 462
    .restart local v26       #onDefaultDisplay:Z
    :goto_d
    if-eqz v22, :cond_13

    if-eqz v10, :cond_13

    if-eqz v26, :cond_13

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V

    .line 466
    :cond_13
    if-eqz v28, :cond_15

    if-nez v16, :cond_15

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v2, v15, :cond_15

    if-eqz v26, :cond_15

    .line 468
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 469
    .restart local v4       #u:Lcom/android/server/wm/WindowState;
    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_14

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v2, :cond_14

    .line 470
    iget-object v3, v4, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v7, 0x1

    iget-object v2, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getOriginalDisplayId()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/wm/DisplayContent;->getInputFocus(I)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-ne v4, v2, :cond_19

    const/4 v8, 0x1

    :goto_e
    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    .line 473
    :cond_14
    const/16 v16, 0x1

    .line 476
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    :cond_15
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, v28

    if-eq v2, v0, :cond_10

    move-object/from16 v5, p0

    move-object/from16 v6, v24

    move-object/from16 v7, v17

    move/from16 v8, v19

    move/from16 v9, v27

    .line 477
    invoke-direct/range {v5 .. v12}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;Lcom/android/server/wm/WindowState;IIZZZ)V

    goto/16 :goto_a

    .line 454
    .end local v10           #isVisible:Z
    .end local v11           #hasFocus:Z
    .end local v12           #hasWallpaper:Z
    .end local v26           #onDefaultDisplay:Z
    :cond_16
    const/4 v11, 0x0

    goto :goto_b

    .line 456
    .restart local v10       #isVisible:Z
    .restart local v11       #hasFocus:Z
    :cond_17
    const/4 v12, 0x0

    goto :goto_c

    .line 458
    .restart local v12       #hasWallpaper:Z
    :cond_18
    const/16 v26, 0x0

    goto :goto_d

    .line 470
    .restart local v4       #u:Lcom/android/server/wm/WindowState;
    .restart local v26       #onDefaultDisplay:Z
    :cond_19
    const/4 v8, 0x0

    goto :goto_e

    .line 488
    .end local v4           #u:Lcom/android/server/wm/WindowState;
    .end local v10           #isVisible:Z
    .end local v11           #hasFocus:Z
    .end local v12           #hasWallpaper:Z
    .end local v17           #child:Lcom/android/server/wm/WindowState;
    .end local v19           #flags:I
    .end local v23           #inputChannel:Landroid/view/InputChannel;
    .end local v24           #inputWindowHandle:Lcom/android/server/input/InputWindowHandle;
    .end local v26           #onDefaultDisplay:Z
    .end local v27           #type:I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mInMultiWindowMode:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mSmartShowContext:Lcom/android/server/FullSmartShowContext;

    invoke-virtual {v2}, Lcom/android/server/FullSmartShowContext;->getMaxLocalScreen()I

    move-result v13

    .line 490
    .local v13, N:I
    const/16 v21, 0x0

    :goto_f
    move/from16 v0, v21

    if-ge v0, v13, :cond_1b

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mFakeInputWindowHandles:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/input/InputWindowHandle;

    .line 492
    .local v20, handle:Lcom/android/server/input/InputWindowHandle;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wm/InputMonitor;->addInputWindowHandleLw(Lcom/android/server/input/InputWindowHandle;)V

    .line 490
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 496
    .end local v13           #N:I
    .end local v20           #handle:Lcom/android/server/input/InputWindowHandle;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/InputMonitor;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/InputMonitor;->mInputWindowHandles:[Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3}, Lcom/android/server/input/InputManagerService;->setInputWindows([Lcom/android/server/input/InputWindowHandle;)V

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/InputMonitor;->clearInputWindowHandlesLw()V

    goto/16 :goto_0
.end method

.method public waitForInputDevicesReady(J)Z
    .locals 2
    .parameter "timeoutMillis"

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 553
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 555
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReadyMonitor:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 559
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/server/wm/InputMonitor;->mInputDevicesReady:Z

    monitor-exit v1

    return v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0
.end method
