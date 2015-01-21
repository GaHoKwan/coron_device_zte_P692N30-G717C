.class Lcom/android/gallery3d/ui/SelectionManager$2;
.super Ljava/lang/Object;
.source "SelectionManager.java"

# interfaces
.implements Lcom/android/gallery3d/data/MediaSet$ItemConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/SelectionManager;->getSelected(Lcom/android/gallery3d/util/ThreadPool$JobContext;Z)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/SelectionManager;

.field final synthetic val$selected:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/SelectionManager;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/gallery3d/ui/SelectionManager$2;->this$0:Lcom/android/gallery3d/ui/SelectionManager;

    iput-object p2, p0, Lcom/android/gallery3d/ui/SelectionManager$2;->val$selected:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(ILcom/android/gallery3d/data/MediaItem;)V
    .locals 2
    .parameter "index"
    .parameter "item"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/gallery3d/ui/SelectionManager$2;->val$selected:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/android/gallery3d/data/MediaObject;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method
