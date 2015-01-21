.class Lcom/mediatek/gallery3d/conshots/MotionTrack;
.super Ljava/lang/Object;
.source "MotionTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/conshots/MotionTrack$1;,
        Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/MotionTrack"


# instance fields
.field private selectedIndexes:[I

.field selectedNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "jni_motion_track"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedIndexes:[I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    .line 43
    return-void
.end method

.method static native doBlend()V
.end method

.method static native getDisableArray(I)[I
.end method

.method static native getPrevDisableArray()[I
.end method

.method static native getPrevFocusArray()[I
.end method

.method static native init(Ljava/lang/String;Ljava/lang/String;IIIII)V
.end method

.method static native release()V
.end method

.method static native setManualIndexes([II)V
.end method


# virtual methods
.method public loadSelected(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v6, Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mediatek/gallery3d/conshots/MotionTrack$pathComparator;-><init>(Lcom/mediatek/gallery3d/conshots/MotionTrack;Lcom/mediatek/gallery3d/conshots/MotionTrack$1;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    .line 56
    iget v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    const/16 v7, 0x8

    if-le v6, v7, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    if-ge v1, v6, :cond_2

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v6}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, path:Ljava/lang/String;
    const-string v6, "MT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 61
    .local v5, start:I
    add-int/lit8 v6, v5, 0x2

    add-int/lit8 v7, v5, 0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, sid:Ljava/lang/String;
    const-string v6, "Gallery2/MotionTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 65
    .local v2, iid:I
    const-string v6, "Gallery2/MotionTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedIndexes:[I

    aput v2, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v2           #iid:I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, NFE:Ljava/lang/NumberFormatException;
    const-string v6, "Gallery2/MotionTrack"

    const-string v7, "loadSelected format error!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    goto :goto_2

    .line 73
    .end local v0           #NFE:Ljava/lang/NumberFormatException;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #sid:Ljava/lang/String;
    .end local v5           #start:I
    :cond_2
    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedIndexes:[I

    iget v7, p0, Lcom/mediatek/gallery3d/conshots/MotionTrack;->selectedNum:I

    invoke-static {v6, v7}, Lcom/mediatek/gallery3d/conshots/MotionTrack;->setManualIndexes([II)V

    goto :goto_0
.end method
