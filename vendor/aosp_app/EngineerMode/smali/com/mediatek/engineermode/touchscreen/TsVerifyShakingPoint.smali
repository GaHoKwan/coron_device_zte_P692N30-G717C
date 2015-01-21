.class public Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;
.super Landroid/app/Activity;
.source "TsVerifyShakingPoint.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/TouchScreen/TsVerifyShakingPoint"


# instance fields
.field private mAverageShakingError:D

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPad:I

.field private mInputPoint:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mIsVerifyPoint:Z

.field private mPointError:D

.field private mPrePoint:Landroid/graphics/Point;

.field private mRand:Ljava/util/Random;

.field private mRectHeight:I

.field private mRectWidth:I

.field private mRun:Z

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-boolean v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    .line 63
    iput-boolean v3, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRun:Z

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    .line 67
    iput-wide v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    .line 68
    iput-wide v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPointError:D

    .line 70
    iput v3, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmapPad:I

    .line 71
    iput v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mZoom:I

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mZoom:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmapPad:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPointError:D

    return-wide v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    return-wide v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x320

    const/16 v7, 0x1e0

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 79
    .local v2, extra:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 80
    const-string v4, "ts_point"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    .line 82
    :cond_0
    const-string v4, "EM/TouchScreen/TsVerifyShakingPoint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is verify point ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-boolean v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    if-eqz v4, :cond_1

    .line 84
    const v4, 0x7f08007e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 86
    :cond_1
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    .local v1, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 88
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    .line 89
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    .line 90
    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    if-ne v7, v4, :cond_2

    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    if-eq v8, v4, :cond_3

    :cond_2
    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    if-ne v8, v4, :cond_4

    iget v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    if-ne v7, v4, :cond_4

    .line 92
    :cond_3
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mZoom:I

    .line 94
    :cond_4
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRand:Ljava/util/Random;

    .line 95
    new-instance v4, Landroid/graphics/Point;

    iget v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    div-int/lit8 v6, v6, 0x2

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    .line 96
    new-instance v0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;

    invoke-direct {v0, p0, p0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;-><init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;Landroid/content/Context;)V

    .line 97
    .local v0, diversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint$DiversityCanvas;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 100
    .local v3, resource:Landroid/content/res/Resources;
    const v4, 0x7f020004

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 102
    iget-object v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mBitmapPad:I

    .line 104
    :cond_5
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 107
    iget-boolean v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mIsVerifyPoint:Z

    if-eqz v7, :cond_1

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    .line 109
    const-string v7, "EM/TouchScreen/TsVerifyShakingPoint"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The PrePoint.x value is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v7, "EM/TouchScreen/TsVerifyShakingPoint"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The PrePoint.y value is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    .line 114
    .local v4, xTouch:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 115
    .local v6, yTouch:I
    const-string v7, "EM/TouchScreen/TsVerifyShakingPoint"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The xTouch value is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v7, "EM/TouchScreen/TsVerifyShakingPoint"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The yTouch value is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v7, v4, v7

    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v8, v4, v8

    mul-int v0, v7, v8

    .line 118
    .local v0, dx2:I
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, v6, v7

    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int v8, v6, v8

    mul-int v1, v7, v8

    .line 119
    .local v1, dy2:I
    add-int v7, v0, v1

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPointError:D

    .line 120
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRand:Ljava/util/Random;

    iget v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 121
    .local v3, xNextRand:I
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRand:Ljava/util/Random;

    iget v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 122
    .local v5, yNextRand:I
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    .line 146
    .end local v0           #dx2:I
    .end local v1           #dy2:I
    .end local v3           #xNextRand:I
    .end local v4           #xTouch:I
    .end local v5           #yNextRand:I
    .end local v6           #yTouch:I
    :cond_0
    :goto_0
    return v11

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 127
    :cond_2
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v11, v7, :cond_0

    .line 130
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    .line 131
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 132
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    sub-int v8, v7, v8

    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v9

    mul-int v0, v8, v7

    .line 134
    .restart local v0       #dx2:I
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int v8, v7, v8

    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v9

    mul-int v1, v8, v7

    .line 136
    .restart local v1       #dy2:I
    iget-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    add-int v9, v0, v1

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    iput-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    .end local v0           #dx2:I
    .end local v1           #dy2:I
    :cond_4
    iget-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    iget-object v9, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    iput-wide v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mAverageShakingError:D

    .line 140
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mInputPoint:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 141
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRand:Ljava/util/Random;

    iget v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectWidth:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 142
    .restart local v3       #xNextRand:I
    iget-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRand:Ljava/util/Random;

    iget v8, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mRectHeight:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 143
    .restart local v5       #yNextRand:I
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyShakingPoint;->mPrePoint:Landroid/graphics/Point;

    goto/16 :goto_0
.end method
