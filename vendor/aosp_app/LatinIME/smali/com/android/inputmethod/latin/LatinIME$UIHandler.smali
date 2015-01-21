.class public final Lcom/android/inputmethod/latin/LatinIME$UIHandler;
.super Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UIHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper",
        "<",
        "Lcom/android/inputmethod/latin/LatinIME;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARG1_DISMISS_GESTURE_FLOATING_PREVIEW_TEXT:I = 0x1

.field private static final MSG_PENDING_IMS_CALLBACK:I = 0x1

.field private static final MSG_SHOW_GESTURE_PREVIEW_AND_SUGGESTION_STRIP:I = 0x3

.field private static final MSG_UPDATE_SHIFT_STATE:I = 0x0

.field private static final MSG_UPDATE_SUGGESTION_STRIP:I = 0x2


# instance fields
.field private mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mDelayUpdateShiftState:I

.field private mDelayUpdateSuggestions:I

.field private mDoubleSpaceTimerStart:J

.field private mDoubleSpacesTurnIntoPeriodTimeout:J

.field private mHasPendingFinishInput:Z

.field private mHasPendingFinishInputView:Z

.field private mHasPendingStartInput:Z

.field private mIsOrientationChanging:Z

.field private mPendingSuccessiveImsCallback:Z


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "outerInstance"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;-><init>(Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method private executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 1
    .parameter "latinIme"
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    if-eqz v0, :cond_0

    .line 324
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    if-eqz v0, :cond_1

    .line 326
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 327
    :cond_1
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    if-eqz v0, :cond_2

    .line 328
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {p1, p2, p3}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 329
    :cond_2
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 330
    return-void
.end method

.method private resetPendingImsCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 317
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 318
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 319
    return-void
.end method


# virtual methods
.method public cancelDoubleSpacesTimer()V
    .locals 2

    .prologue
    .line 289
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    .line 290
    return-void
.end method

.method public cancelUpdateShiftState()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    return-void
.end method

.method public cancelUpdateSuggestionStrip()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 238
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 239
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    iget-object v1, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 240
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return-void

    .line 242
    :pswitch_1
    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionStrip()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$000(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/inputmethod/latin/SuggestedWords;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_0

    :goto_1
    #calls: Lcom/android/inputmethod/latin/LatinIME;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    invoke-static {v0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->access$100(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/SuggestedWords;Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public hasPendingUpdateSuggestions()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public isAcceptingDoubleSpaces()Z
    .locals 4

    .prologue
    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    .line 230
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    .line 232
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpacesTurnIntoPeriodTimeout:J

    .line 234
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInput:Z

    .line 409
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 406
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 407
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0
.end method

.method public onFinishInputView(Z)V
    .locals 3
    .parameter "finishingInput"

    .prologue
    const/4 v2, 0x1

    .line 390
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingFinishInputView:Z

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 395
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V
    invoke-static {v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 3
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 333
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mHasPendingStartInput:Z

    .line 355
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 339
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 340
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 351
    :goto_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 352
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 353
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0

    .line 346
    .end local v0           #latinIme:Lcom/android/inputmethod/latin/LatinIME;
    :cond_1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 347
    .restart local v0       #latinIme:Lcom/android/inputmethod/latin/LatinIME;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$502(Lcom/android/inputmethod/latin/LatinIME;I)I

    .line 348
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$602(Lcom/android/inputmethod/latin/LatinIME;I)I

    goto :goto_1
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v2, 0x1

    .line 360
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 369
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardId;->equivalentEditorInfoForKeyboard(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getMainKeyboardView()Lcom/android/inputmethod/keyboard/MainKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 387
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    if-eqz v1, :cond_1

    .line 378
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mPendingSuccessiveImsCallback:Z

    .line 379
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 383
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->executePendingImsCallback(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 384
    #calls: Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->access$700(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 385
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mAppliedEditorInfo:Landroid/view/inputmethod/EditorInfo;

    goto :goto_0
.end method

.method public postUpdateShiftState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateShiftState:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    return-void
.end method

.method public postUpdateSuggestionStrip()V
    .locals 3

    .prologue
    .line 255
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDelayUpdateSuggestions:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 256
    return-void
.end method

.method public showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    .locals 3
    .parameter "suggestedWords"
    .parameter "dismissGestureFloatingPreviewText"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 280
    .local v0, arg1:I
    :goto_0
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 282
    return-void

    .end local v0           #arg1:I
    :cond_0
    move v0, v1

    .line 278
    goto :goto_0
.end method

.method public startDoubleSpacesTimer()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mDoubleSpaceTimerStart:J

    .line 286
    return-void
.end method

.method public startOrientationChanging()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 306
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->resetPendingImsCallback()V

    .line 308
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->mIsOrientationChanging:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/StaticInnerHandlerWrapper;->getOuterInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinIME;

    .line 310
    .local v0, latinIme:Lcom/android/inputmethod/latin/LatinIME;
    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->saveKeyboardState()V

    .line 313
    :cond_0
    return-void
.end method
