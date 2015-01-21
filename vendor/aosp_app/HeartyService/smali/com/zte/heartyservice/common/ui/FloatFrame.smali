.class public Lcom/zte/heartyservice/common/ui/FloatFrame;
.super Landroid/widget/LinearLayout;
.source "FloatFrame.java"


# static fields
.field static final MESSAGE_DOWN:I = 0x1002

.field static final MESSAGE_MOVE:I = 0x1001

.field static final MESSAGE_UP:I = 0x1003


# instance fields
.field frameOnTouchListener:Landroid/view/View$OnTouchListener;

.field private gestureDetector:Landroid/view/GestureDetector;

.field gestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mTouchRawX:F

.field private mTouchRawY:F

.field private wm:Landroid/view/WindowManager;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "listener"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wm:Landroid/view/WindowManager;

    .line 55
    new-instance v0, Lcom/zte/heartyservice/common/ui/FloatFrame$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/ui/FloatFrame$1;-><init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/zte/heartyservice/common/ui/FloatFrame$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/ui/FloatFrame$2;-><init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->frameOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 84
    new-instance v0, Lcom/zte/heartyservice/common/ui/FloatFrame$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/ui/FloatFrame$3;-><init>(Lcom/zte/heartyservice/common/ui/FloatFrame;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 28
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getWmParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 30
    if-nez p3, :cond_0

    .line 31
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureDetector:Landroid/view/GestureDetector;

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/ui/FloatFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->updateViewPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/common/ui/FloatFrame;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawX:F

    return p1
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/common/ui/FloatFrame;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawY:F

    return p1
.end method

.method private updateViewPosition()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 132
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->mTouchRawY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->frameOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/ui/FloatFrame;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 41
    return-void
.end method

.method public addViewCustom(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method public getFrameOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/FloatFrame;->frameOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method
