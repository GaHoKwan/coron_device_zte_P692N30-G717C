.class final Lcom/mediatek/videoplayer/Request$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/videoplayer/Request;->getComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/mediatek/videoplayer/Request;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/videoplayer/Request;Lcom/mediatek/videoplayer/Request;)I
    .locals 4
    .parameter "r1"
    .parameter "r2"

    .prologue
    .line 86
    #getter for: Lcom/mediatek/videoplayer/Request;->mPriority:J
    invoke-static {p1}, Lcom/mediatek/videoplayer/Request;->access$000(Lcom/mediatek/videoplayer/Request;)J

    move-result-wide v0

    #getter for: Lcom/mediatek/videoplayer/Request;->mPriority:J
    invoke-static {p2}, Lcom/mediatek/videoplayer/Request;->access$000(Lcom/mediatek/videoplayer/Request;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 87
    #getter for: Lcom/mediatek/videoplayer/Request;->mPriority:J
    invoke-static {p1}, Lcom/mediatek/videoplayer/Request;->access$000(Lcom/mediatek/videoplayer/Request;)J

    move-result-wide v0

    #getter for: Lcom/mediatek/videoplayer/Request;->mPriority:J
    invoke-static {p2}, Lcom/mediatek/videoplayer/Request;->access$000(Lcom/mediatek/videoplayer/Request;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 89
    :goto_0
    return v0

    .line 87
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    check-cast p1, Lcom/mediatek/videoplayer/Request;

    .end local p1
    check-cast p2, Lcom/mediatek/videoplayer/Request;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/videoplayer/Request$1;->compare(Lcom/mediatek/videoplayer/Request;Lcom/mediatek/videoplayer/Request;)I

    move-result v0

    return v0
.end method
