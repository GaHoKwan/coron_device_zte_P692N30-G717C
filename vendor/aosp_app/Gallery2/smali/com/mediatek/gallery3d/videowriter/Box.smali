.class public Lcom/mediatek/gallery3d/videowriter/Box;
.super Ljava/lang/Object;
.source "Box.java"


# instance fields
.field private mBeginPos:I

.field private mEndPos:I

.field private mSubBox:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/videowriter/Box;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mSubBox:Ljava/util/ArrayList;

    .line 12
    iput-object p1, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public addSubBox(Lcom/mediatek/gallery3d/videowriter/Box;)V
    .locals 1
    .parameter "box"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mSubBox:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public getBoxSize()I
    .locals 2

    .prologue
    .line 36
    iget v0, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mEndPos:I

    iget v1, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mBeginPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public wholeWrite()V
    .locals 5

    .prologue
    .line 21
    invoke-static {}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->getCurBufPos()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mBeginPos:I

    .line 22
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videowriter/Box;->write()V

    .line 23
    iget-object v2, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mSubBox:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/videowriter/Box;

    .line 24
    .local v0, box:Lcom/mediatek/gallery3d/videowriter/Box;
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videowriter/Box;->wholeWrite()V

    goto :goto_0

    .line 27
    .end local v0           #box:Lcom/mediatek/gallery3d/videowriter/Box;
    :cond_0
    invoke-static {}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->getCurBufPos()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mEndPos:I

    .line 28
    iget v2, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mBeginPos:I

    iget v3, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mEndPos:I

    iget v4, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mBeginPos:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->setBufferData(II)V

    .line 29
    return-void
.end method

.method public write()V
    .locals 2

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeInt32(I)V

    .line 17
    iget-object v0, p0, Lcom/mediatek/gallery3d/videowriter/Box;->mType:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/videowriter/FileWriter;->writeString(Ljava/lang/String;I)V

    .line 18
    return-void
.end method
