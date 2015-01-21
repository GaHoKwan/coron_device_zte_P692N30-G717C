.class public Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;
.super Ljava/lang/Object;
.source "AlbumDataAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/AlbumDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
        ">;"
    }
.end annotation


# instance fields
.field private final recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    invoke-direct {v0}, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    .line 93
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 97
    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->recency:Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;

    invoke-virtual {v4, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$RecencyComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v4

    .line 122
    :goto_0
    return v4

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->getType()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, typeAString:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->getType()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, typeBString:Ljava/lang/String;
    const/4 v0, 0x1

    .line 103
    .local v0, typeA:I
    const/4 v2, 0x1

    .line 105
    .local v2, typeB:I
    const-class v4, Lcom/android/dreams/phototable/LocalSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 108
    :cond_1
    const-class v4, Lcom/android/dreams/phototable/LocalSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    const/4 v2, 0x0

    .line 112
    :cond_2
    const-class v4, Lcom/android/dreams/phototable/StockSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    const/4 v0, 0x2

    .line 115
    :cond_3
    const-class v4, Lcom/android/dreams/phototable/StockSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 116
    const/4 v2, 0x2

    .line 119
    :cond_4
    if-ne v0, v2, :cond_5

    .line 120
    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 122
    :cond_5
    sub-int v4, v0, v2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    check-cast p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p1
    check-cast p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$AccountComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    return v0
.end method
