.class public abstract Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;
.super Lcom/amoi/AmoiEngineerMode/base/TestBase;
.source "TouchPanelEdge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;,
        Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$TouchData;,
        Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;
    }
.end annotation


# instance fields
.field private h:F

.field public mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mColNun:I

.field private mCos:F

.field private mDiagonal:I

.field private mHightPix:I

.field private mMaxPoint:I

.field private mPointRadius:I

.field private mRowNun:I

.field private mSin:F

.field private mWidthPix:I

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TestBase;-><init>()V

    .line 25
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mMaxPoint:I

    .line 27
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->h:F

    .line 28
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->w:F

    .line 29
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mSin:F

    .line 30
    iput v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mCos:F

    .line 31
    iput v1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->w:F

    return v0
.end method

.method static synthetic access$002(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->w:F

    return p1
.end method

.method static synthetic access$100(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    return v0
.end method

.method static synthetic access$200(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    return v0
.end method

.method static synthetic access$300(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->h:F

    return v0
.end method

.method static synthetic access$302(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->h:F

    return p1
.end method

.method static synthetic access$400(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    return v0
.end method

.method private getRadius(II)I
    .locals 5
    .parameter "hightPix"
    .parameter "widthPix"

    .prologue
    .line 79
    div-int/lit8 v0, p1, 0x2

    .line 80
    .local v0, i:I
    div-int/lit8 v1, p2, 0x2

    .line 81
    .local v1, j:I
    if-le v1, v0, :cond_0

    .line 82
    move v2, v1

    .line 83
    .local v2, k:I
    move v1, v0

    .line 84
    move v0, v2

    .line 86
    .end local v2           #k:I
    :cond_0
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mMaxPoint:I

    div-int v3, v1, v4

    .line 87
    .local v3, n:I
    if-ge v3, v1, :cond_2

    .line 88
    rem-int v4, v0, v3

    if-nez v4, :cond_1

    rem-int v4, v1, v3

    if-eqz v4, :cond_2

    .line 89
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 92
    :cond_2
    return v3
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "paramContext"

    .prologue
    .line 96
    return-void
.end method


# virtual methods
.method protected getDeviceModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const-string v1, "ro.product.model"

    const-string v2, "NULL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, DeviceModel:Ljava/lang/String;
    return-object v0
.end method

.method public getTestPoint()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, localArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;>;"
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 104
    .local v3, pos_x:I
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 105
    .local v4, pos_y:I
    :goto_0
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    if-ge v3, v5, :cond_0

    .line 106
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 107
    .local v2, localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 109
    goto :goto_0

    .line 111
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_0
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    sub-int v3, v5, v6

    .line 112
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 113
    :goto_1
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    if-ge v4, v5, :cond_1

    .line 114
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 115
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 117
    goto :goto_1

    .line 119
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_1
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 120
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    sub-int v4, v5, v6

    .line 121
    :goto_2
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    if-ge v3, v5, :cond_2

    .line 122
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 123
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 125
    goto :goto_2

    .line 127
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_2
    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 128
    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 129
    :goto_3
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    if-ge v4, v5, :cond_3

    .line 130
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 131
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 133
    goto :goto_3

    .line 135
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_3
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mColNun:I

    mul-int v3, v5, v6

    .line 136
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 137
    :goto_4
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_4

    .line 138
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 139
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 141
    goto :goto_4

    .line 143
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_4
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 144
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mRowNun:I

    mul-int v4, v5, v6

    .line 145
    :goto_5
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_5

    .line 146
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 147
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 149
    goto :goto_5

    .line 152
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_5
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 153
    .local v0, Diagonal:I
    :goto_6
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    if-ge v0, v5, :cond_6

    .line 154
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mSin:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 155
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mCos:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 156
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 157
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 159
    goto :goto_6

    .line 161
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_6
    iget v0, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 162
    :goto_7
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    if-ge v0, v5, :cond_7

    .line 163
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    iget v6, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mSin:F

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int v3, v5, v6

    .line 164
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mCos:F

    int-to-float v6, v0

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 165
    new-instance v2, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;

    invoke-direct {v2, p0, v3, v4, v8}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;IIZ)V

    .line 166
    .restart local v2       #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget v5, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    .line 168
    goto :goto_7

    .line 169
    .end local v2           #localEdgePoint1:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$EdgePoint;
    :cond_7
    return-object v1
.end method

.method protected abstract initButton()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x400

    .line 36
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/TestBase;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0, p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->init(Landroid/content/Context;)V

    .line 38
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ELIYA S1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/16 v2, 0xa

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mMaxPoint:I

    .line 46
    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    .local v0, localDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 48
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    .line 49
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    .line 50
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    invoke-direct {p0, v2, v3}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->getRadius(II)I

    move-result v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    .line 51
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    iget v4, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    .line 53
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    int-to-float v2, v2

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mSin:F

    .line 54
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    int-to-float v2, v2

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mDiagonal:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mCos:F

    .line 56
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mWidthPix:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mColNun:I

    .line 57
    iget v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mHightPix:I

    iget v3, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mPointRadius:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mRowNun:I

    .line 58
    new-instance v1, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;

    invoke-direct {v1, p0, p0}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;-><init>(Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;Landroid/content/Context;)V

    .line 60
    .local v1, localPanel:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;
    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->setContentView(Landroid/view/View;)V

    .line 61
    return-void

    .line 44
    .end local v0           #localDisplayMetrics:Landroid/util/DisplayMetrics;
    .end local v1           #localPanel:Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge$Panel;
    :cond_0
    const/16 v2, 0xf

    iput v2, p0, Lcom/amoi/AmoiEngineerMode/base/TouchPanelEdge;->mMaxPoint:I

    goto :goto_0
.end method

.method protected abstract showButton()V
.end method
