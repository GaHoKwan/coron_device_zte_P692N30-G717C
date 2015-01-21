.class public Lcom/android/soundrecorder/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mHorizontalMargin:F

.field private mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field private mVerticalMargin:F

.field private mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field private mX:I

.field private final mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/soundrecorder/OnScreenHint$1;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/OnScreenHint$1;-><init>(Lcom/android/soundrecorder/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Lcom/android/soundrecorder/OnScreenHint$2;

    invoke-direct {v0, p0}, Lcom/android/soundrecorder/OnScreenHint$2;-><init>(Lcom/android/soundrecorder/OnScreenHint;)V

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 108
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mY:I

    .line 111
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 112
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 115
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 116
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x7f0a0005

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 117
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 118
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/soundrecorder/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/soundrecorder/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/soundrecorder/OnScreenHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/soundrecorder/OnScreenHint;->handleHide()V

    return-void
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    .line 214
    :cond_1
    return-void
.end method

.method private handleShow()V
    .locals 4

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/soundrecorder/OnScreenHint;->handleHide()V

    .line 187
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    .line 188
    const/16 v0, 0x51

    .line 189
    .local v0, gravity:I
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 190
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 191
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mY:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 192
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mVerticalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 193
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mHorizontalMargin:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 194
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/soundrecorder/OnScreenHint;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/soundrecorder/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .end local v0           #gravity:I
    :cond_1
    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/soundrecorder/OnScreenHint;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 150
    new-instance v1, Lcom/android/soundrecorder/OnScreenHint;

    invoke-direct {v1, p0}, Lcom/android/soundrecorder/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 151
    .local v1, result:Lcom/android/soundrecorder/OnScreenHint;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f030004

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 154
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0c0026

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 155
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iput-object v3, v1, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    .line 157
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0c0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 174
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/soundrecorder/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/soundrecorder/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method
