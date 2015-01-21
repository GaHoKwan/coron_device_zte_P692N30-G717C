.class public Lcom/android/camera/SettingChecker$PictureSizeMappingFinder;
.super Ljava/lang/Object;
.source "SettingChecker.java"

# interfaces
.implements Lcom/android/camera/Restriction$MappingFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SettingChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureSizeMappingFinder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .parameter "current"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2564
    .local p2, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, p1

    .line 2565
    .local v6, supported:Ljava/lang/String;
    const/16 v7, 0x78

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 2566
    .local v3, index:I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2568
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 2569
    .local v5, size:I
    add-int/lit8 v7, v5, -0x1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/camera/SettingUtils;->getSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 2570
    .local v1, findPs:Landroid/graphics/Point;
    invoke-static {p1}, Lcom/android/camera/SettingUtils;->getSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 2571
    .local v0, candidatePs:Landroid/graphics/Point;
    add-int/lit8 v2, v5, -0x2

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 2572
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/android/camera/SettingUtils;->getSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v4

    .line 2573
    .local v4, ps:Landroid/graphics/Point;
    if-eqz v4, :cond_0

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v8, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 2575
    move-object v1, v4

    .line 2571
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2578
    .end local v4           #ps:Landroid/graphics/Point;
    :cond_1
    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Lcom/android/camera/SettingUtils;->buildSize(II)Ljava/lang/String;

    move-result-object v6

    .line 2580
    .end local v0           #candidatePs:Landroid/graphics/Point;
    .end local v1           #findPs:Landroid/graphics/Point;
    .end local v2           #i:I
    .end local v5           #size:I
    :cond_2
    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2581
    const/4 v7, 0x0

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #supported:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 2583
    .restart local v6       #supported:Ljava/lang/String;
    :cond_3
    const-string v7, "SettingChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "find("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    return-object v6
.end method

.method public findIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .parameter "current"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2588
    .local p2, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 2589
    .local v0, index:I
    if-eqz p2, :cond_0

    .line 2590
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/SettingChecker$PictureSizeMappingFinder;->find(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 2591
    .local v1, supported:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2593
    .end local v1           #supported:Ljava/lang/String;
    :cond_0
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findIndex("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    return v0
.end method
