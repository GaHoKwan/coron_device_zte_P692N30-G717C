.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayWidth:I

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field private final mDisplay:Landroid/view/Display;

.field mDisplayContentChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IDisplayContentChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field private mFocusedDisplayId:I

.field mGlobalInputFocus:Lcom/android/server/wm/WindowState;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field mInputFocus:Lcom/android/server/wm/WindowState;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

.field mRemoteRotation:I

.field private final mVirtualDisplayContents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/VirtualDisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;)V
    .locals 3
    .parameter "display"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    .line 167
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    .line 168
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 169
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 170
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 171
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 172
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 173
    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 174
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 182
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 185
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 188
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 190
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 191
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 192
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 193
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 194
    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mGlobalInputFocus:Lcom/android/server/wm/WindowState;

    .line 196
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    .line 198
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mRemoteRotation:I

    .line 203
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 204
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 205
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 207
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 208
    return-void
.end method


# virtual methods
.method addVirtualDisplayContent(Landroid/view/Display;)V
    .locals 3
    .parameter "display"

    .prologue
    .line 211
    new-instance v0, Lcom/android/server/wm/VirtualDisplayContent;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/VirtualDisplayContent;-><init>(Landroid/view/Display;I)V

    .line 213
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 611
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Display: mDisplayId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 612
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Focused display : displayId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, subPrefix:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "init="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 616
    const-string v3, "dpi"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v3, v4, :cond_1

    .line 620
    :cond_0
    const-string v3, " base="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 622
    const-string v3, " "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "dpi"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    :cond_1
    const-string v3, " cur="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 626
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 627
    const-string v3, " app="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 629
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 630
    const-string v3, " rng="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 632
    const-string v3, "-"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 633
    const-string v3, "x"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 634
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "layoutNeeded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 635
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 636
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_2

    .line 637
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mInputMethodWindow="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 639
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3

    .line 640
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mInputMethodTarget="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 642
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    if-eqz v3, :cond_4

    .line 643
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mMagnificationSpec="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 645
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_5

    .line 646
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mCurrentFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 648
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6

    .line 649
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mLastFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 651
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_7

    .line 652
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mInputFocus="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 654
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_8

    .line 655
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mFocusedApp="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 657
    :cond_8
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 659
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 660
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/VirtualDisplayContent;

    .line 661
    .local v2, vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/VirtualDisplayContent;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    .end local v2           #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_9
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 665
    return-void
.end method

.method findDisplayIdForInputMethod(Lcom/android/server/wm/WindowState;)I
    .locals 4
    .parameter "win"

    .prologue
    .line 288
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v3, :cond_1

    .line 289
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 292
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 293
    .local v1, tempDisplayId:I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/VirtualDisplayContent;

    .line 294
    .local v2, vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    iget-object v3, v2, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eq v3, p1, :cond_0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 299
    .end local v1           #tempDisplayId:I
    .end local v2           #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method generateMagnificationSpec(I)V
    .locals 2
    .parameter "displayId"

    .prologue
    .line 552
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 553
    new-instance v1, Lcom/android/server/wm/MagnificationSpec;

    invoke-direct {v1}, Lcom/android/server/wm/MagnificationSpec;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    .line 556
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 557
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 558
    new-instance v1, Lcom/android/server/wm/MagnificationSpec;

    invoke-direct {v1}, Lcom/android/server/wm/MagnificationSpec;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    .line 560
    :cond_1
    return-void
.end method

.method getAllValidDisplayIds()[I
    .locals 5

    .prologue
    .line 249
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 250
    .local v0, count:I
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [I

    .line 251
    .local v1, displayIds:[I
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    aput v4, v1, v3

    .line 252
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 253
    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object v1
.end method

.method getCurrentFocus()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 472
    :goto_0
    return-object v1

    .line 467
    :cond_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 468
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 469
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 472
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCurrentFocus(I)Lcom/android/server/wm/WindowState;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 412
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 421
    :goto_0
    return-object v1

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 417
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 418
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 421
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplay(I)Landroid/view/Display;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 563
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, p1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 572
    :goto_0
    return-object v1

    .line 567
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 568
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/android/server/wm/VirtualDisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 526
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 535
    :goto_0
    return-object v1

    .line 530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 531
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {v0}, Lcom/android/server/wm/VirtualDisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFocusedApp(I)Lcom/android/server/wm/AppWindowToken;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 513
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 522
    :goto_0
    return-object v1

    .line 517
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 518
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 519
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    .line 522
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFocusedDisplayId()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    return v0
.end method

.method getInputFocus()Lcom/android/server/wm/WindowState;
    .locals 2

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 484
    :goto_0
    return-object v1

    .line 480
    :cond_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 481
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 482
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 484
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputFocus(I)Lcom/android/server/wm/WindowState;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 488
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 497
    :goto_0
    return-object v1

    .line 492
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 493
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 494
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputMethodTarget(I)Lcom/android/server/wm/WindowState;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 351
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 359
    :goto_0
    return-object v1

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 356
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 357
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 359
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputMethodTargetWaitingAnim(I)Z
    .locals 2
    .parameter "displayId"

    .prologue
    .line 363
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 364
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 372
    :goto_0
    return v1

    .line 367
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 368
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 369
    iget-boolean v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTargetWaitingAnim:Z

    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getInputMethodWindow(I)Lcom/android/server/wm/WindowState;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 339
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 347
    :goto_0
    return-object v1

    .line 343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 344
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 345
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 347
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getLastFocus()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mGlobalInputFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getLastFocus(I)Lcom/android/server/wm/WindowState;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 425
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 434
    :goto_0
    return-object v1

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 430
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 431
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 434
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMagnificationSpec(I)Lcom/android/server/wm/MagnificationSpec;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 539
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    .line 548
    :goto_0
    return-object v1

    .line 543
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 544
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 545
    iget-object v1, v0, Lcom/android/server/wm/VirtualDisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    goto :goto_0

    .line 548
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;
    .locals 5
    .parameter "displayId"

    .prologue
    const/4 v3, 0x0

    .line 273
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v4, :cond_1

    move-object v2, v3

    .line 284
    :cond_0
    :goto_0
    return-object v2

    .line 277
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 279
    .local v1, tempDisplayId:I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/VirtualDisplayContent;

    .line 280
    .local v2, vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eq v1, p1, :cond_0

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #tempDisplayId:I
    .end local v2           #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_2
    move-object v2, v3

    .line 284
    goto :goto_0
.end method

.method getVirtualDisplayIds()[I
    .locals 4

    .prologue
    .line 240
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 241
    .local v0, count:I
    new-array v1, v0, [I

    .line 242
    .local v1, displayIds:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 243
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v1
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method hasEnableMultiWindow()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasVirtualDisplayContent()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultDisplay()Z
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 593
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefaultExternalDisplay()Z
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbnailExternalDisplay()Z
    .locals 2

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVirtualDisplayContent(I)Z
    .locals 4
    .parameter "displayId"

    .prologue
    const/4 v2, 0x0

    .line 259
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v3, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 263
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 265
    .local v1, tempDisplayId:I
    if-ne v1, p1, :cond_2

    .line 266
    const/4 v2, 0x1

    goto :goto_0

    .line 263
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method removeVirtualDisplayContent(I)Z
    .locals 4
    .parameter "displayId"

    .prologue
    .line 217
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 218
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 219
    .local v1, tempDisplayId:I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/VirtualDisplayContent;

    .line 220
    .local v2, vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-ne v1, p1, :cond_0

    .line 221
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mVirtualDisplayContents:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 222
    const/4 v3, 0x1

    .line 228
    .end local v1           #tempDisplayId:I
    .end local v2           #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :goto_1
    return v3

    .line 217
    .restart local v1       #tempDisplayId:I
    .restart local v2       #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v1           #tempDisplayId:I
    .end local v2           #vdisplayContent:Lcom/android/server/wm/VirtualDisplayContent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasEnableMultiWindow()Z

    move-result v3

    if-nez v3, :cond_2

    .line 226
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/DisplayContent;->mGlobalInputFocus:Lcom/android/server/wm/WindowState;

    .line 228
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method saveCurrentFocus(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "displayId"
    .parameter "focus"

    .prologue
    .line 376
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 377
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 382
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 383
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method saveFocusedApp(ILcom/android/server/wm/AppWindowToken;)V
    .locals 2
    .parameter "displayId"
    .parameter "focus"

    .prologue
    .line 501
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 502
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 507
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 508
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0
.end method

.method saveInputFocus(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "displayId"
    .parameter "focus"

    .prologue
    .line 400
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 401
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 406
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 407
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method saveInputMethodTarget(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "displayId"
    .parameter "target"

    .prologue
    .line 315
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 316
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 321
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 322
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method saveInputMethodTargetWaitingAnim(IZ)V
    .locals 2
    .parameter "displayId"
    .parameter "waiting"

    .prologue
    .line 327
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 328
    iput-boolean p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 333
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 334
    iput-boolean p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTargetWaitingAnim:Z

    goto :goto_0
.end method

.method saveInputMethodWindow(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "displayId"
    .parameter "ime"

    .prologue
    .line 303
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 304
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 309
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 310
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method saveLastFocus(ILcom/android/server/wm/WindowState;)V
    .locals 2
    .parameter "displayId"
    .parameter "focus"

    .prologue
    .line 388
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_1

    .line 389
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 394
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_0

    .line 395
    iput-object p2, v0, Lcom/android/server/wm/VirtualDisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    goto :goto_0
.end method

.method saveLastFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "focus"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mGlobalInputFocus:Lcom/android/server/wm/WindowState;

    .line 439
    return-void
.end method

.method setFocusedDisplayId(I)I
    .locals 2
    .parameter "displayId"

    .prologue
    .line 446
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne p1, v1, :cond_0

    .line 447
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    .line 456
    :goto_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    return v1

    .line 449
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getVirtualDisplayContent(I)Lcom/android/server/wm/VirtualDisplayContent;

    move-result-object v0

    .line 450
    .local v0, displayContent:Lcom/android/server/wm/VirtualDisplayContent;
    if-eqz v0, :cond_1

    .line 451
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    goto :goto_0

    .line 453
    :cond_1
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mFocusedDisplayId:I

    goto :goto_0
.end method

.method public updateDisplayInfo()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 598
    return-void
.end method
