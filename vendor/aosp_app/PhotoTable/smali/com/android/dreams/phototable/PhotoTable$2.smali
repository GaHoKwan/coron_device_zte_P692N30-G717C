.class Lcom/android/dreams/phototable/PhotoTable$2;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->dropOnTable(Landroid/view/View;Landroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$900(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$900(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v1

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mRedealCount:I
    invoke-static {v2}, Lcom/android/dreams/phototable/PhotoTable;->access$1300(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoTable;->access$800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$2;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-virtual {v0, v3}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 416
    :cond_1
    return-void
.end method
