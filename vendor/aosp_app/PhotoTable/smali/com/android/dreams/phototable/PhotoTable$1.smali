.class Lcom/android/dreams/phototable/PhotoTable$1;
.super Ljava/lang/Object;
.source "PhotoTable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dreams/phototable/PhotoTable;->fadeAway(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;

.field final synthetic val$photo:Landroid/view/View;

.field final synthetic val$replace:Z


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$1;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iput-object p2, p0, Lcom/android/dreams/phototable/PhotoTable$1;->val$photo:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/dreams/phototable/PhotoTable$1;->val$replace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$1;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$1;->val$photo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 338
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$1;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$1;->val$photo:Landroid/view/View;

    #calls: Lcom/android/dreams/phototable/PhotoTable;->recycle(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1100(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    .line 339
    iget-boolean v0, p0, Lcom/android/dreams/phototable/PhotoTable$1;->val$replace:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$1;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$1;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mNowDropDelay:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1200(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 342
    :cond_0
    return-void
.end method
