.class public Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;
.super Landroid/app/Activity;
.source "TsVerifyLine.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;
    }
.end annotation


# static fields
.field public static final CALCULATE_ID:I = 0x1

.field public static final NEXTLINE_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/TouchScreen/VL"


# instance fields
.field public mDiversity:D

.field public mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

.field public mInput:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field public mLineIndex:I

.field public mPts1:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRectHeight:I

.field private mRectWidth:I

.field public mRun:Z

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRun:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversity:D

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    .line 62
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    .line 63
    iput v2, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I

    .line 234
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    return v0
.end method


# virtual methods
.method public calculateDiversity()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x3f80

    .line 132
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 133
    .local v0, cp:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    :goto_0
    return-void

    .line 137
    :cond_0
    const-wide/16 v1, 0x0

    .line 138
    .local v1, error:D
    iget v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    int-to-float v5, v5

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 140
    .local v4, ratio:F
    iget v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    add-int/lit8 v5, v5, -0x1

    packed-switch v5, :pswitch_data_0

    .line 171
    :cond_1
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v1, v5

    iput-wide v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversity:D

    goto :goto_0

    .line 142
    :pswitch_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 143
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cp:Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 144
    .restart local v0       #cp:Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v1, v5

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 148
    .end local v3           #i:I
    :pswitch_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 149
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cp:Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 150
    .restart local v0       #cp:Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v1, v5

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 154
    .end local v3           #i:I
    :pswitch_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 155
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cp:Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 156
    .restart local v0       #cp:Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    mul-float v7, v4, v4

    add-float/2addr v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 161
    .end local v3           #i:I
    :pswitch_3
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cp:Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 163
    .restart local v0       #cp:Landroid/graphics/Point;
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v6, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    mul-float v7, v4, v4

    add-float/2addr v7, v9

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    add-double/2addr v1, v5

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 140
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x320

    const/16 v2, 0x1e0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 80
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    .line 81
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    .line 82
    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    if-ne v2, v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    if-eq v3, v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    if-ne v2, v1, :cond_2

    .line 84
    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mZoom:I

    .line 88
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->readPoints(I)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    .line 89
    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    .line 90
    new-instance v1, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;-><init>(Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    .line 91
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    const-string v1, "EM/TouchScreen/VL"

    const-string v2, "Oncreate"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    const-string v0, "Calculate"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 102
    const/4 v0, 0x2

    const-string v1, "NextLine"

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "aMenuItem"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->calculateDiversity()V

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 115
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->readPoints(I)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mPts1:Ljava/util/Vector;

    .line 116
    iget v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    .line 118
    const/4 v0, 0x4

    iget v1, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    .line 121
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversity:D

    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "e"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mDiversityCanvas:Lcom/mediatek/engineermode/touchscreen/TsVerifyLine$DiversityCanvas;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mInput:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public readPoints(I)Ljava/util/Vector;
    .locals 8
    .parameter "lineIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 193
    .local v3, v:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/graphics/Point;>;"
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    int-to-float v7, v7

    div-float v2, v6, v7

    .line 195
    .local v2, ratio:F
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mLineIndex:I

    packed-switch v6, :pswitch_data_0

    .line 231
    :cond_0
    return-object v3

    .line 197
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    if-ge v0, v6, :cond_0

    .line 198
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    div-int/lit8 v4, v6, 0x2

    .line 199
    .local v4, x:I
    move v5, v0

    .line 200
    .local v5, y:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 201
    .local v1, p:Landroid/graphics/Point;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0           #i:I
    .end local v1           #p:Landroid/graphics/Point;
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    if-ge v0, v6, :cond_0

    .line 206
    move v4, v0

    .line 207
    .restart local v4       #x:I
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectHeight:I

    div-int/lit8 v5, v6, 0x2

    .line 208
    .restart local v5       #y:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 209
    .restart local v1       #p:Landroid/graphics/Point;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    .end local v0           #i:I
    .end local v1           #p:Landroid/graphics/Point;
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    if-ge v0, v6, :cond_0

    .line 214
    move v4, v0

    .line 215
    .restart local v4       #x:I
    int-to-float v6, v0

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 216
    .restart local v5       #y:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 217
    .restart local v1       #p:Landroid/graphics/Point;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    .end local v0           #i:I
    .end local v1           #p:Landroid/graphics/Point;
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    if-ge v0, v6, :cond_0

    .line 222
    iget v6, p0, Lcom/mediatek/engineermode/touchscreen/TsVerifyLine;->mRectWidth:I

    sub-int v4, v6, v0

    .line 223
    .restart local v4       #x:I
    int-to-float v6, v0

    mul-float/2addr v6, v2

    float-to-int v5, v6

    .line 224
    .restart local v5       #y:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 225
    .restart local v1       #p:Landroid/graphics/Point;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
