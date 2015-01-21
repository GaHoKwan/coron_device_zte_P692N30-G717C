.class public final Lcom/android/inputmethod/keyboard/internal/KeyboardState;
.super Ljava/lang/Object;
.source "KeyboardState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;,
        Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_SHIFT:I = 0x2

.field private static final DEBUG_ACTION:Z = false

.field private static final DEBUG_EVENT:Z = false

.field private static final MANUAL_SHIFT:I = 0x1

.field private static final SHIFT_LOCK_SHIFTED:I = 0x3

.field private static final SWITCH_STATE_ALPHA:I = 0x0

.field private static final SWITCH_STATE_MOMENTARY_ALPHA_AND_SYMBOL:I = 0x3

.field private static final SWITCH_STATE_MOMENTARY_SYMBOL_AND_MORE:I = 0x4

.field private static final SWITCH_STATE_SYMBOL:I = 0x2

.field private static final SWITCH_STATE_SYMBOL_BEGIN:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final UNSHIFT:I


# instance fields
.field private mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

.field private mIsAlphabetMode:Z

.field private mIsInAlphabetUnshiftedFromShifted:Z

.field private mIsInDoubleTapShiftKey:Z

.field private mIsSymbolShifted:Z

.field private mLayoutSwitchBackSymbols:Ljava/lang/String;

.field private mLongPressShiftLockFired:Z

.field private mPrevMainKeyboardWasShiftLocked:Z

.field private mPrevSymbolsKeyboardWasShifted:Z

.field private final mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

.field private mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

.field private final mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

.field private mSwitchState:I

.field private mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;)V
    .locals 2
    .parameter "switchActions"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    const-string v1, "Shift"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    .line 67
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    const-string v1, "Symbol"

    invoke-direct {v0, v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 81
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    .line 93
    new-instance v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 117
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    .line 118
    return-void
.end method

.method private isLayoutSwitchBackCharacter(I)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 565
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSpaceCharacter(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 561
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPressShift()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 441
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_7

    .line 442
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->isInDoubleTapTimeout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    .line 443
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->startDoubleTapTimer()V

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    if-eqz v0, :cond_2

    .line 451
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 484
    :cond_2
    :goto_0
    return-void

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 461
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    .line 476
    :goto_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->startLongPressTimer(I)V

    goto :goto_0

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 465
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 466
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    goto :goto_1

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 470
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onPressOnShifted()V

    goto :goto_1

    .line 473
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 474
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    goto :goto_1

    .line 480
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    .line 481
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 482
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    goto :goto_0
.end method

.method private onPressSymbol()V
    .locals 1

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 378
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onPress()V

    .line 379
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 380
    return-void
.end method

.method private onReleaseShift(Z)V
    .locals 4
    .parameter "withSliding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v3, :cond_b

    .line 488
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    .line 489
    .local v0, isShiftLocked:Z
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    .line 490
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    if-eqz v3, :cond_1

    .line 493
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInDoubleTapShiftKey:Z

    .line 538
    .end local v0           #isShiftLocked:Z
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 539
    :goto_1
    return-void

    .line 494
    .restart local v0       #isShiftLocked:Z
    :cond_1
    iget-boolean v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    if-eqz v3, :cond_3

    .line 495
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isChording()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 497
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 499
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 506
    :goto_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 507
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->requestUpdatingShiftState()V

    goto :goto_1

    .line 502
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_3

    .line 509
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    .line 511
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    .line 512
    :cond_6
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isPressing()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-eqz p1, :cond_0

    .line 516
    :cond_8
    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v3

    if-nez v3, :cond_9

    if-nez p1, :cond_9

    .line 518
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    goto :goto_0

    .line 519
    :cond_9
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isPressingOnShifted()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez p1, :cond_a

    .line 522
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 523
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    goto/16 :goto_0

    .line 524
    :cond_a
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShiftedFromAutomaticShifted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isPressing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    .line 528
    invoke-direct {p0, v2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    .line 529
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsInAlphabetUnshiftedFromShifted:Z

    goto/16 :goto_0

    .line 534
    .end local v0           #isShiftLocked:Z
    :cond_b
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isChording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    goto/16 :goto_0
.end method

.method private onReleaseSymbol(Z)V
    .locals 1
    .parameter "withSliding"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isChording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 393
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 394
    return-void

    .line 387
    :cond_1
    if-nez p1, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0
.end method

.method private onRestoreKeyboardState()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 163
    .local v0, state:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_2

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 175
    :goto_0
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    if-nez v1, :cond_4

    .line 188
    :cond_1
    :goto_1
    return-void

    .line 167
    :cond_2
    iget v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mShiftMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 169
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    goto :goto_0

    .line 171
    :cond_3
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    goto :goto_0

    .line 176
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    .line 178
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_5

    .line 179
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 180
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    if-nez v1, :cond_1

    .line 182
    iget v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mShiftMode:I

    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_1

    .line 186
    :cond_5
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_1
.end method

.method private resetKeyboardStateToAlphabet()V
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 280
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 281
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    if-eqz v0, :cond_1

    .line 282
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 284
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_0
.end method

.method private setAlphabetKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 302
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 303
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 304
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->requestUpdatingShiftState()V

    .line 305
    return-void
.end method

.method private setShiftLocked(Z)V
    .locals 1
    .parameter "shiftLocked"

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 239
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLockShifted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetShiftLockedKeyboard()V

    .line 243
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    goto :goto_0
.end method

.method private setShifted(I)V
    .locals 3
    .parameter "shiftMode"

    .prologue
    const/4 v2, 0x1

    .line 199
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v1, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const/4 v0, 0x2

    .line 208
    .local v0, prevShiftMode:I
    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 223
    if-eq p1, v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    goto :goto_0

    .line 203
    .end local v0           #prevShiftMode:I
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 204
    const/4 v0, 0x1

    .restart local v0       #prevShiftMode:I
    goto :goto_1

    .line 206
    .end local v0           #prevShiftMode:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #prevShiftMode:I
    goto :goto_1

    .line 210
    :pswitch_1
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setAutomaticShifted()V

    .line 211
    if-eq p1, v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetAutomaticShiftedKeyboard()V

    goto :goto_0

    .line 216
    :pswitch_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 217
    if-eq p1, v0, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetManualShiftedKeyboard()V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShifted(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetShiftLockShiftedKeyboard()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setSymbolsKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setSymbolsKeyboard()V

    .line 312
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 313
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 315
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 316
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 317
    return-void
.end method

.method private setSymbolsShiftedKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setSymbolsShiftedKeyboard()V

    .line 324
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    .line 325
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    .line 327
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 328
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 329
    return-void
.end method

.method private static shiftModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "shiftMode"

    .prologue
    .line 634
    packed-switch p0, :pswitch_data_0

    .line 638
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 635
    :pswitch_0
    const-string v0, "UNSHIFT"

    goto :goto_0

    .line 636
    :pswitch_1
    const-string v0, "MANUAL"

    goto :goto_0

    .line 637
    :pswitch_2
    const-string v0, "AUTOMATIC"

    goto :goto_0

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static switchStateToString(I)Ljava/lang/String;
    .locals 1
    .parameter "switchState"

    .prologue
    .line 643
    packed-switch p0, :pswitch_data_0

    .line 649
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 644
    :pswitch_0
    const-string v0, "ALPHA"

    goto :goto_0

    .line 645
    :pswitch_1
    const-string v0, "SYMBOL-BEGIN"

    goto :goto_0

    .line 646
    :pswitch_2
    const-string v0, "SYMBOL"

    goto :goto_0

    .line 647
    :pswitch_3
    const-string v0, "MOMENTARY-ALPHA-SYMBOL"

    goto :goto_0

    .line 648
    :pswitch_4
    const-string v0, "MOMENTARY-SYMBOL-MORE"

    goto :goto_0

    .line 643
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toggleAlphabetAndSymbols()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    .line 255
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    .line 260
    :goto_0
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 269
    :goto_1
    return-void

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    goto :goto_0

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 263
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setAlphabetKeyboard()V

    .line 264
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    if-eqz v0, :cond_2

    .line 265
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShiftLocked(Z)V

    .line 267
    :cond_2
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    goto :goto_1
.end method

.method private toggleShiftInSymbols()V
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsKeyboard()V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setSymbolsShiftedKeyboard()V

    goto :goto_0
.end method

.method private updateAlphabetShiftState(I)V
    .locals 1
    .parameter "autoCaps"

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-nez v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isReleasing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->isIgnoring()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isReleasing()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 432
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isChording()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->setShifted(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isInMomentarySwitchState()Z
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancelInput(Z)V
    .locals 2
    .parameter "isSinglePointer"

    .prologue
    .line 546
    if-eqz p1, :cond_0

    .line 547
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    goto :goto_0
.end method

.method public onCodeInput(IZI)V
    .locals 4
    .parameter "code"
    .parameter "isSinglePointer"
    .parameter "autoCaps"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 577
    iget v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    packed-switch v0, :pswitch_data_0

    .line 628
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-direct {p0, p3}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->updateAlphabetShiftState(I)V

    .line 631
    :cond_1
    return-void

    .line 579
    :pswitch_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    .line 581
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_2

    .line 582
    iput v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 584
    :cond_2
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 586
    :cond_3
    if-eqz p2, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    goto :goto_0

    .line 595
    :pswitch_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 597
    iput v2, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 598
    :cond_4
    if-eqz p2, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleShiftInSymbols()V

    .line 602
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    goto :goto_0

    .line 606
    :pswitch_2
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/inputmethod/keyboard/Keyboard;->isLetterCode(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, -0x3

    if-ne p1, v0, :cond_6

    .line 608
    :cond_5
    iput v3, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    .line 612
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 614
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-static {p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isSpaceCharacter(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->isLayoutSwitchBackCharacter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    :cond_7
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->toggleAlphabetAndSymbols()V

    .line 622
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadKeyboard(Ljava/lang/String;)V
    .locals 2
    .parameter "layoutSwitchBackSymbols"

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLayoutSwitchBackSymbols:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->setShiftLocked(Z)V

    .line 127
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevSymbolsKeyboardWasShifted:Z

    .line 129
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 130
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onRelease()V

    .line 131
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onRestoreKeyboardState()V

    .line 132
    return-void
.end method

.method public onLongPressTimeout(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 402
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->hapticAndAudioFeedback(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public onPressKey(IZI)V
    .locals 2
    .parameter "code"
    .parameter "isSinglePointer"
    .parameter "autoCaps"

    .prologue
    const/4 v0, 0x0

    .line 336
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onPressShift()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onPressSymbol()V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->cancelDoubleTapTimer()V

    .line 342
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->cancelLongPressTimer()V

    .line 343
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mLongPressShiftLockFired:Z

    .line 344
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;->onOtherKeyPressed()V

    .line 345
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->onOtherKeyPressed()V

    .line 354
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1000

    if-eq p3, v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isManualShifted()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;->isReleasing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 357
    .local v0, needsToResetAutoCaps:Z
    :cond_4
    if-eqz v0, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchActions:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;

    invoke-interface {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SwitchActions;->setAlphabetKeyboard()V

    goto :goto_0
.end method

.method public onReleaseKey(IZ)V
    .locals 1
    .parameter "code"
    .parameter "withSliding"

    .prologue
    .line 369
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 370
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onReleaseShift(Z)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 372
    invoke-direct {p0, p2}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->onReleaseSymbol(Z)V

    goto :goto_0
.end method

.method public onResetKeyboardStateToAlphabet()V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->resetKeyboardStateToAlphabet()V

    .line 420
    return-void
.end method

.method public onSaveKeyboardState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSavedKeyboardState:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;

    .line 136
    .local v0, state:Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetMode:Z

    .line 137
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftLocked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    .line 139
    iget-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    .line 142
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isAutomaticShifted()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    :cond_0
    :goto_1
    iput v3, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mShiftMode:I

    .line 152
    :goto_2
    iput-boolean v2, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsValid:Z

    .line 156
    return-void

    :cond_1
    move v1, v3

    .line 139
    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_1

    .line 146
    :cond_3
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mPrevMainKeyboardWasShiftLocked:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsAlphabetShiftLocked:Z

    .line 147
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    iput-boolean v1, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mIsShifted:Z

    .line 149
    iget-boolean v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    if-eqz v1, :cond_4

    move v3, v2

    :cond_4
    iput v3, v0, Lcom/android/inputmethod/keyboard/internal/KeyboardState$SavedKeyboardState;->mShiftMode:I

    goto :goto_2
.end method

.method public onUpdateShiftState(I)V
    .locals 0
    .parameter "autoCaps"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->updateAlphabetShiftState(I)V

    .line 411
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[keyboard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsAlphabetMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mAlphabetShiftState:Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/internal/AlphabetShiftState;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shift="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mShiftKeyState:Lcom/android/inputmethod/keyboard/internal/ShiftKeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSymbolKeyState:Lcom/android/inputmethod/keyboard/internal/ModifierKeyState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " switch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mSwitchState:I

    invoke-static {v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->switchStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardState;->mIsSymbolShifted:Z

    if-eqz v0, :cond_1

    const-string v0, "SYMBOLS_SHIFTED"

    goto :goto_0

    :cond_1
    const-string v0, "SYMBOLS"

    goto :goto_0
.end method
