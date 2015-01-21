.class Lcom/zte/backup/application/AppsAction$CompratorByLastModified;
.super Ljava/lang/Object;
.source "AppsAction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/application/AppsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompratorByLastModified"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    const-wide/16 v6, 0x0

    .line 1005
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1006
    .local v0, diff:J
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    .line 1007
    const/4 v2, -0x1

    .line 1011
    :goto_0
    return v2

    .line 1008
    :cond_0
    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    .line 1009
    const/4 v2, 0x0

    goto :goto_0

    .line 1011
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/zte/backup/application/AppsAction$CompratorByLastModified;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
