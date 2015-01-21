.class public Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;
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
    name = "TitleComparator"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 147
    iget-object v0, p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    check-cast p1, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p1
    check-cast p2, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/dreams/phototable/AlbumDataAdapter$TitleComparator;->compare(Lcom/android/dreams/phototable/PhotoSource$AlbumData;Lcom/android/dreams/phototable/PhotoSource$AlbumData;)I

    move-result v0

    return v0
.end method
