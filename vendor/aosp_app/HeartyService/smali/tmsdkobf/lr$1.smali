.class final Ltmsdkobf/lr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/lr;->gF()V
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 12
    .parameter "f1"
    .parameter "f2"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 76
    invoke-static {p1}, Ltmsdkobf/lu;->j(Ljava/io/File;)Z

    move-result v0

    .line 77
    .local v0, b1:Z
    invoke-static {p2}, Ltmsdkobf/lu;->j(Ljava/io/File;)Z

    move-result v1

    .line 78
    .local v1, b2:Z
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v4

    .line 80
    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    move v4, v5

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 84
    .local v2, ret:J
    cmp-long v6, v2, v10

    if-ltz v6, :cond_0

    .line 86
    cmp-long v4, v2, v10

    if-lez v4, :cond_3

    move v4, v5

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ltmsdkobf/lr$1;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
