.class public Lcom/android/dreams/phototable/BummerView;
.super Landroid/widget/TextView;
.source "BummerView.java"


# static fields
.field public static final MOVE:I = 0x2

.field public static final START:I = 0x1


# instance fields
.field private mAnimTime:I

.field private mAnimate:Z

.field private mDelay:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/dreams/phototable/BummerView;->mDelay:I

    .line 31
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimTime:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimate:Z

    .line 34
    new-instance v0, Lcom/android/dreams/phototable/BummerView$1;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/BummerView$1;-><init>(Lcom/android/dreams/phototable/BummerView;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dreams/phototable/BummerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "flags"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/dreams/phototable/BummerView;->mDelay:I

    .line 31
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimTime:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimate:Z

    .line 34
    new-instance v0, Lcom/android/dreams/phototable/BummerView$1;

    invoke-direct {v0, p0}, Lcom/android/dreams/phototable/BummerView$1;-><init>(Lcom/android/dreams/phototable/BummerView;)V

    iput-object v0, p0, Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/dreams/phototable/BummerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimate:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/dreams/phototable/BummerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/dreams/phototable/BummerView;->mAnimTime:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dreams/phototable/BummerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/dreams/phototable/BummerView;->mDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dreams/phototable/BummerView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 93
    .local v0, parent:Landroid/view/View;
    new-instance v1, Lcom/android/dreams/phototable/BummerView$2;

    invoke-direct {v1, p0, v0}, Lcom/android/dreams/phototable/BummerView$2;-><init>(Lcom/android/dreams/phototable/BummerView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/dreams/phototable/BummerView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method

.method public setAnimationParams(ZII)V
    .locals 0
    .parameter "animate"
    .parameter "delay"
    .parameter "animTime"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/dreams/phototable/BummerView;->mAnimate:Z

    .line 86
    iput p2, p0, Lcom/android/dreams/phototable/BummerView;->mDelay:I

    .line 87
    iput p3, p0, Lcom/android/dreams/phototable/BummerView;->mAnimTime:I

    .line 88
    return-void
.end method
