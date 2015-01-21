.class public Lcom/android/camera/manager/OnScreenToast;
.super Ljava/lang/Object;
.source "OnScreenToast.java"

# interfaces
.implements Lcom/android/camera/Camera$OnOrientationListener;


# static fields
.field static final TAG:Ljava/lang/String; = "OnScreenToast"

.field private static final TOAST_DURATION:I = 0x7d0


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mNextView:Landroid/view/View;

.field private mOrientation:I

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field private mText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/android/camera/manager/OnScreenToast$1;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenToast$1;-><init>(Lcom/android/camera/manager/OnScreenToast;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/android/camera/manager/OnScreenToast$2;

    invoke-direct {v0, p0}, Lcom/android/camera/manager/OnScreenToast$2;-><init>(Lcom/android/camera/manager/OnScreenToast;)V

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    .line 74
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    .line 81
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 83
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 87
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "OnScreenHint"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    iput-object p1, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/manager/OnScreenToast;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/manager/OnScreenToast;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/manager/OnScreenToast;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleHide()V

    return-void
.end method

.method private declared-synchronized handleHide()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :cond_1
    monitor-exit p0

    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, ex:Landroid/view/WindowManager$BadTokenException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #ex:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized handleShow()V
    .locals 4

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-eq v1, v2, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->handleHide()V

    .line 157
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    .line 173
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 174
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 175
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/manager/OnScreenToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    :cond_1
    monitor-exit p0

    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, ex:Landroid/view/WindowManager$BadTokenException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #ex:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isLandcape()Z
    .locals 5

    .prologue
    .line 266
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getOrietation()I

    move-result v1

    .line 268
    .local v1, orientation:I
    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 269
    .local v0, land:Z
    :goto_0
    const-string v2, "OnScreenToast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLandcape() orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v0

    .line 268
    .end local v0           #land:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenToast;
    .locals 6
    .parameter "context"
    .parameter "text"

    .prologue
    .line 120
    new-instance v1, Lcom/android/camera/manager/OnScreenToast;

    invoke-direct {v1, p0}, Lcom/android/camera/manager/OnScreenToast;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, result:Lcom/android/camera/manager/OnScreenToast;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 124
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v4, 0x7f040031

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 125
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0b009b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iput-object v3, v1, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    .line 129
    const v4, 0x7f0b00a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v1, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v2, v1, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    .line 132
    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method

.method public hideToast()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 289
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 233
    iget v2, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    if-eq v2, p1, :cond_0

    .line 234
    iput p1, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    .line 235
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/manager/OnScreenToast;->mOrientation:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->setOrientation(Landroid/view/View;IZ)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/android/camera/manager/OnScreenToast;->isLandcape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 241
    .local v1, vp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 243
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 247
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 249
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    :goto_0
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 263
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #vp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 251
    :cond_2
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 252
    .restart local v1       #vp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 253
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 254
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    iget-object v2, p0, Lcom/android/camera/manager/OnScreenToast;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    const v2, 0x7f0b009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, tv:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method

.method public showToast()V
    .locals 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "View is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    iget-object v0, p0, Lcom/android/camera/manager/OnScreenToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/manager/OnScreenToast;->mHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    return-void
.end method
