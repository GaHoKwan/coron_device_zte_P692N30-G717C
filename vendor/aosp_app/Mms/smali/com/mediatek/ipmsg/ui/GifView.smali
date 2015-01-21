.class public Lcom/mediatek/ipmsg/ui/GifView;
.super Landroid/view/View;
.source "GifView.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mData:Ljava/io/InputStream;

.field mMovie:Landroid/graphics/Movie;

.field mResId:I

.field mTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mData:Ljava/io/InputStream;

    .line 73
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/GifView;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mData:Ljava/io/InputStream;

    .line 78
    iput-object p1, p0, Lcom/mediatek/ipmsg/ui/GifView;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 85
    .local v4, now:J
    iget-wide v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 86
    iput-wide v4, p0, Lcom/mediatek/ipmsg/ui/GifView;->mTime:J

    .line 89
    :cond_0
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    if-nez v8, :cond_1

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 107
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->duration()I

    move-result v2

    .line 95
    .local v2, duration:I
    if-nez v2, :cond_2

    .line 96
    const/4 v6, 0x0

    .line 100
    .local v6, relTime:I
    :goto_1
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8, v6}, Landroid/graphics/Movie;->setTime(I)Z

    .line 101
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->width()I

    move-result v1

    .line 102
    .local v1, bw:I
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v8}, Landroid/graphics/Movie;->height()I

    move-result v0

    .line 103
    .local v0, bh:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 104
    .local v7, w:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 105
    .local v3, h:I
    iget-object v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    sub-int v9, v7, v1

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-int v10, v3, v0

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, p1, v9, v10}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 98
    .end local v0           #bh:I
    .end local v1           #bw:I
    .end local v3           #h:I
    .end local v6           #relTime:I
    .end local v7           #w:I
    :cond_2
    iget-wide v8, p0, Lcom/mediatek/ipmsg/ui/GifView;->mTime:J

    sub-long v8, v4, v8

    int-to-long v10, v2

    rem-long/2addr v8, v10

    long-to-int v6, v8

    .restart local v6       #relTime:I
    goto :goto_1
.end method

.method public setSource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 110
    iput p1, p0, Lcom/mediatek/ipmsg/ui/GifView;->mResId:I

    .line 112
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ipmsg/ui/GifView;->mResId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mData:Ljava/io/InputStream;

    .line 113
    iget-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mData:Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ipmsg/ui/GifView;->mMovie:Landroid/graphics/Movie;

    .line 114
    return-void
.end method
