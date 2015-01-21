.class Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;
.super Ljava/lang/Object;
.source "MotionTrack.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/conshots/MotionTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "pathComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery3d/data/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/conshots/MotionTrack;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/conshots/MotionTrack;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;->this$0:Lcom/mediatek/gallery3d/conshots/MotionTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/conshots/MotionTrack;Lcom/mediatek/gallery3d/conshots/MotionTrack$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;-><init>(Lcom/mediatek/gallery3d/conshots/MotionTrack;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)I
    .locals 2
    .parameter "path1"
    .parameter "paht2"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p1, Lcom/android/gallery3d/data/Path;

    .end local p1
    check-cast p2, Lcom/android/gallery3d/data/Path;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;->compare(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/Path;)I

    move-result v0

    return v0
.end method
