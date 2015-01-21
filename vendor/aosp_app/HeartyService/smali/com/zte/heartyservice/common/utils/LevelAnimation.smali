.class public Lcom/zte/heartyservice/common/utils/LevelAnimation;
.super Ljava/lang/Object;
.source "LevelAnimation.java"


# static fields
.field private static final NEXT_LEVEL:I


# instance fields
.field private mAdj:I

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mMinAdj:I

.field private mToLevel:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    .line 10
    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    .line 11
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    .line 12
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mDuration:J

    .line 15
    new-instance v0, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;-><init>(Lcom/zte/heartyservice/common/utils/LevelAnimation;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 2
    .parameter "imageView"
    .parameter "minAdjPercent"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    .line 10
    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    .line 11
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    .line 12
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mDuration:J

    .line 15
    new-instance v0, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/utils/LevelAnimation$1;-><init>(Lcom/zte/heartyservice/common/utils/LevelAnimation;)V

    iput-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    .line 34
    if-ltz p2, :cond_0

    const/16 v0, 0x64

    if-gt p2, v0, :cond_0

    .line 35
    mul-int/lit8 v0, p2, 0x64

    iput v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/common/utils/LevelAnimation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/heartyservice/common/utils/LevelAnimation;->nextLevel()V

    return-void
.end method

.method private nextLevel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    if-gtz v2, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    .line 42
    .local v1, curLevel:I
    move v0, v1

    .line 43
    .local v0, ajustLevel:I
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    if-ge v1, v2, :cond_3

    .line 44
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    add-int v0, v1, v2

    .line 45
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    if-le v0, v2, :cond_2

    .line 46
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    .line 55
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 56
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    if-eq v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mDuration:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 49
    :cond_3
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    sub-int v0, v1, v2

    .line 50
    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    if-ge v0, v2, :cond_2

    .line 51
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    goto :goto_1
.end method


# virtual methods
.method public setCurLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 71
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    mul-int p1, v0, v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 78
    :cond_1
    return-void
.end method

.method public setCurPercent(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 64
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 65
    mul-int/lit8 v0, p1, 0x64

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/utils/LevelAnimation;->setCurLevel(I)V

    .line 67
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    .line 96
    .local v0, curLevel:I
    iget v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    if-eq v0, v1, :cond_0

    .line 97
    iget v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    .line 98
    iget v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mAdj:I

    .line 100
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mDuration:J

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 105
    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 2
    .parameter "toLevel"

    .prologue
    .line 85
    if-ltz p1, :cond_1

    const/16 v0, 0x2710

    if-gt p1, v0, :cond_1

    .line 86
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 87
    iget v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mMinAdj:I

    mul-int p1, v0, v1

    .line 89
    :cond_0
    iput p1, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mToLevel:I

    .line 90
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/utils/LevelAnimation;->start()V

    .line 92
    :cond_1
    return-void
.end method

.method public startPercent(I)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 81
    mul-int/lit8 v0, p1, 0x64

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/utils/LevelAnimation;->start(I)V

    .line 82
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/zte/heartyservice/common/utils/LevelAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    return-void
.end method
