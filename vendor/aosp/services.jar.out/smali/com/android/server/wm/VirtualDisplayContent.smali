.class Lcom/android/server/wm/VirtualDisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field mFocusedApp:Lcom/android/server/wm/AppWindowToken;

.field mInputFocus:Lcom/android/server/wm/WindowState;

.field mInputMethodTarget:Lcom/android/server/wm/WindowState;

.field mInputMethodTargetWaitingAnim:Z

.field mInputMethodWindow:Lcom/android/server/wm/WindowState;

.field mLastFocus:Lcom/android/server/wm/WindowState;

.field mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

.field final mParentDisplayId:I


# direct methods
.method constructor <init>(Landroid/view/Display;I)V
    .locals 3
    .parameter "display"
    .parameter "parentDisplayId"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 39
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 42
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 45
    iput-boolean v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTargetWaitingAnim:Z

    .line 47
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 48
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 49
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    .line 50
    iput-object v2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplay:Landroid/view/Display;

    .line 54
    iput p2, p0, Lcom/android/server/wm/VirtualDisplayContent;->mParentDisplayId:I

    .line 55
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayId:I

    .line 56
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 57
    iget v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->isDefaultDisplay:Z

    .line 58
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "prefix"
    .parameter "pw"

    .prologue
    .line 90
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Virtual Display: mDisplayId="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, subPrefix:Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    const-string v1, " cur="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 95
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 96
    const-string v1, " app="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 98
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 99
    const-string v1, " rng="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 100
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 101
    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 102
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mMagnificationSpec="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mMagnificationSpec:Lcom/android/server/wm/MagnificationSpec;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mInputMethodWindow="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mInputMethodTarget="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCurrentFocus="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mLastFocus="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_5

    .line 120
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mInputFocus="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mInputFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " mFocusedApp="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    :cond_6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 128
    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getParentDisplayId()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mParentDisplayId:I

    return v0
.end method

.method hasParentDisplay()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mParentDisplayId:I

    if-ltz v0, :cond_0

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
    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/VirtualDisplayContent;->updateDisplayInfo()V

    .line 82
    iget v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDisplayInfo()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/VirtualDisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 87
    return-void
.end method
