.class final Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BatchInputUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater$OnDemandInitializationHolder;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_GESTURE_PREVIEW_AND_SUGGESTION_STRIP:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInBatchInput:Z

.field private mLatinIme:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1633
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1634
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mHandler:Landroid/os/Handler;

    .line 1635
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/LatinIME$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1625
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;
    .locals 1

    .prologue
    .line 1643
    sget-object v0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater$OnDemandInitializationHolder;->sInstance:Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;

    return-object v0
.end method

.method private static getSuggestedWordsGestureLocked(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 1
    .parameter "batchPointers"
    .parameter "latinIme"

    .prologue
    .line 1702
    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-static {p1}, Lcom/android/inputmethod/latin/LatinIME;->access$1000(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/latin/WordComposer;->setBatchInputPointers(Lcom/android/inputmethod/latin/InputPointers;)V

    .line 1703
    const/4 v0, 0x1

    #calls: Lcom/android/inputmethod/latin/LatinIME;->getSuggestedWords(I)Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->access$1100(Lcom/android/inputmethod/latin/LatinIME;I)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized updateBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 3
    .parameter "batchPointers"
    .parameter "latinIme"

    .prologue
    .line 1666
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mInBatchInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1674
    :goto_0
    monitor-exit p0

    return-void

    .line 1670
    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getSuggestedWordsGestureLocked(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 1672
    .local v0, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v1, p2, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1666
    .end local v0           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "msg"

    .prologue
    .line 1650
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1655
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1652
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/inputmethod/latin/InputPointers;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mLatinIme:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->updateBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized onEndBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;
    .locals 3
    .parameter "batchPointers"
    .parameter "latinIme"

    .prologue
    .line 1690
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mInBatchInput:Z

    .line 1691
    invoke-static {p1, p2}, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->getSuggestedWordsGestureLocked(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v0

    .line 1693
    .local v0, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v1, p2, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->showGesturePreviewAndSuggestionStrip(Lcom/android/inputmethod/latin/SuggestedWords;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1695
    monitor-exit p0

    return-object v0

    .line 1690
    .end local v0           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onStartBatchInput()V
    .locals 1

    .prologue
    .line 1660
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mInBatchInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    monitor-exit p0

    return-void

    .line 1660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUpdateBatchInput(Lcom/android/inputmethod/latin/InputPointers;Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 2
    .parameter "batchPointers"
    .parameter "latinIme"

    .prologue
    const/4 v1, 0x1

    .line 1678
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mLatinIme:Lcom/android/inputmethod/latin/LatinIME;

    .line 1679
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    :goto_0
    return-void

    .line 1682
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$BatchInputUpdater;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
