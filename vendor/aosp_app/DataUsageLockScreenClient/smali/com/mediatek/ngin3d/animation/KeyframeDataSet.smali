.class public Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
.super Ljava/lang/Object;
.source "KeyframeDataSet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaL


# instance fields
.field private transient mAnchor:Lcom/mediatek/ngin3d/Point;

.field private transient mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/ngin3d/animation/KeyframeData;",
            ">;"
        }
    .end annotation
.end field

.field protected transient mDelay:I

.field protected transient mDuration:I

.field private transient mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

.field private transient mOpacity:I

.field private transient mPosition:Lcom/mediatek/ngin3d/Point;

.field private transient mRotation:Lcom/mediatek/ngin3d/Point;

.field private transient mScale:Lcom/mediatek/ngin3d/Point;

.field private transient mTargetHeight:I

.field private transient mTargetWidth:I

.field private transient mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const v0, 0x7fffffff

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDelay:I

    .line 62
    const/16 v0, 0xff

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mOpacity:I

    .line 63
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v1, v1}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    .line 64
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v2, v2}, Lcom/mediatek/ngin3d/Point;-><init>(FF)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    .line 65
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Point;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    .line 66
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Point;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 140
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mVersion:I

    .line 141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetWidth:I

    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetHeight:I

    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDuration:I

    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDelay:I

    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mOpacity:I

    .line 146
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->readPoint(Ljava/io/ObjectInputStream;)Lcom/mediatek/ngin3d/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    .line 147
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->readPoint(Ljava/io/ObjectInputStream;)Lcom/mediatek/ngin3d/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->readPoint(Ljava/io/ObjectInputStream;)Lcom/mediatek/ngin3d/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    .line 149
    invoke-direct {p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->readPoint(Ljava/io/ObjectInputStream;)Lcom/mediatek/ngin3d/Point;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/KeyframeData;

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

    .line 152
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 153
    .local v1, numFrameData:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 155
    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ngin3d/animation/KeyframeData;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private readPoint(Ljava/io/ObjectInputStream;)Lcom/mediatek/ngin3d/Point;
    .locals 2
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Point;-><init>()V

    .line 111
    .local v0, p:Lcom/mediatek/ngin3d/Point;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 113
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 115
    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 120
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mVersion:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 121
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetWidth:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 122
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetHeight:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 123
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDuration:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 124
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDelay:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 125
    iget v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mOpacity:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 126
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->writePoint(Lcom/mediatek/ngin3d/Point;Ljava/io/ObjectOutputStream;)V

    .line 127
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->writePoint(Lcom/mediatek/ngin3d/Point;Ljava/io/ObjectOutputStream;)V

    .line 128
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->writePoint(Lcom/mediatek/ngin3d/Point;Ljava/io/ObjectOutputStream;)V

    .line 129
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    invoke-direct {p0, v2, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->writePoint(Lcom/mediatek/ngin3d/Point;Ljava/io/ObjectOutputStream;)V

    .line 130
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 133
    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/animation/KeyframeData;

    .line 134
    .local v0, f:Lcom/mediatek/ngin3d/animation/KeyframeData;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    .end local v0           #f:Lcom/mediatek/ngin3d/animation/KeyframeData;
    :cond_0
    return-void
.end method

.method private writePoint(Lcom/mediatek/ngin3d/Point;Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "p"
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->x:F

    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 105
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->y:F

    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 106
    iget v0, p1, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 107
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/ngin3d/animation/KeyframeData;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget v0, p1, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDuration:I

    iget v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDuration:I

    .line 99
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDelay:I

    iget v1, p1, Lcom/mediatek/ngin3d/animation/KeyframeData;->mDelay:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mDelay:I

    .line 100
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public applyMarker(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)V
    .locals 7
    .parameter "anim"

    .prologue
    .line 83
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

    invoke-virtual {v4}, Lcom/mediatek/ngin3d/animation/KeyframeData;->getSamples()Lcom/mediatek/ngin3d/animation/Samples;

    move-result-object v2

    .line 85
    .local v2, samples:Lcom/mediatek/ngin3d/animation/Samples;
    const-string v4, "time"

    invoke-virtual {v2, v4}, Lcom/mediatek/ngin3d/animation/Samples;->get(Ljava/lang/String;)[F

    move-result-object v3

    .line 86
    .local v3, time:[F
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lcom/mediatek/ngin3d/animation/Samples;->getString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, actions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 88
    aget-object v4, v0, v1

    aget v5, v3, v1

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v4, v5}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->addMarkerAtTime(Ljava/lang/String;I)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0           #actions:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #samples:Lcom/mediatek/ngin3d/animation/Samples;
    .end local v3           #time:[F
    :cond_0
    return-void
.end method

.method public getAnchor()Lcom/mediatek/ngin3d/Point;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/ngin3d/animation/KeyframeData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnimations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mOpacity:I

    return v0
.end method

.method public getPosition()Lcom/mediatek/ngin3d/Point;
    .locals 4

    .prologue
    .line 195
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public getRotation()Lcom/mediatek/ngin3d/Point;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->z:F

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public getScale()Lcom/mediatek/ngin3d/Point;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;-><init>(FFF)V

    return-object v0
.end method

.method public getTargetHeight()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetWidth:I

    return v0
.end method

.method public setAnchor(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    iput p1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 172
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mAnchor:Lcom/mediatek/ngin3d/Point;

    iput p2, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 173
    return-void
.end method

.method public setMarker(Lcom/mediatek/ngin3d/animation/KeyframeData;)V
    .locals 0
    .parameter "marker"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mMarker:Lcom/mediatek/ngin3d/animation/KeyframeData;

    .line 210
    return-void
.end method

.method public setOpacity(I)V
    .locals 0
    .parameter "o"

    .prologue
    .line 163
    iput p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mOpacity:I

    .line 164
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iput p1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 190
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iput p2, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 191
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mPosition:Lcom/mediatek/ngin3d/Point;

    iput p3, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 192
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iput p1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 200
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iput p2, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 201
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mRotation:Lcom/mediatek/ngin3d/Point;

    iput p3, v0, Lcom/mediatek/ngin3d/Point;->z:F

    .line 202
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    iput p1, v0, Lcom/mediatek/ngin3d/Point;->x:F

    .line 181
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mScale:Lcom/mediatek/ngin3d/Point;

    iput p2, v0, Lcom/mediatek/ngin3d/Point;->y:F

    .line 182
    return-void
.end method

.method public setTargetHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 221
    iput p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetHeight:I

    .line 222
    return-void
.end method

.method public setTargetWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 217
    iput p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mTargetWidth:I

    .line 218
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 213
    iput p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->mVersion:I

    .line 214
    return-void
.end method
