.class final Lcom/mediatek/mtklogger/taglog/TagLogUtils$1;
.super Ljava/lang/Object;
.source "TagLogUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/taglog/TagLogUtils;->getTagLogNeededSize(Ljava/util/List;)J
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
        "Lcom/mediatek/mtklogger/taglog/LogInformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/mtklogger/taglog/LogInformation;Lcom/mediatek/mtklogger/taglog/LogInformation;)I
    .locals 8
    .parameter "logSizeInfo1"
    .parameter "logSizeInfo2"

    .prologue
    const-wide/16 v6, 0x0

    .line 340
    invoke-virtual {p1}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getTagLogSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/mediatek/mtklogger/taglog/LogInformation;->getTagLogSize()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 341
    .local v0, rs:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 337
    check-cast p1, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .end local p1
    check-cast p2, Lcom/mediatek/mtklogger/taglog/LogInformation;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/mtklogger/taglog/TagLogUtils$1;->compare(Lcom/mediatek/mtklogger/taglog/LogInformation;Lcom/mediatek/mtklogger/taglog/LogInformation;)I

    move-result v0

    return v0
.end method
