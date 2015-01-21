.class public Lcom/android/launcher2/LauncherModel$AppListPositionComparator;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 3846
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v1, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v1, p2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v1, p2, Lcom/android/launcher2/ApplicationInfo;->pos:I

    if-ge v0, v1, :cond_1

    .line 3847
    :cond_0
    const/4 v0, -0x1

    .line 3849
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3844
    check-cast p1, Lcom/android/launcher2/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/android/launcher2/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$AppListPositionComparator;->compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v0

    return v0
.end method
