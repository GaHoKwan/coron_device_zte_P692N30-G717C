.class Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
.super Ljava/lang/Object;
.source "PhotoCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Flipper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoCarousel;


# direct methods
.method constructor <init>(Lcom/android/dreams/phototable/PhotoCarousel;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private scheduleNext(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$700(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 97
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mFinished:Z
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->access$800(Lcom/android/dreams/phototable/PhotoCarousel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$700(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 72
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #calls: Lcom/android/dreams/phototable/PhotoCarousel;->maybeLoadMore()V
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$000(Lcom/android/dreams/phototable/PhotoCarousel;)V

    .line 74
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$100(Lcom/android/dreams/phototable/PhotoCarousel;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mSpinner:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$200(Lcom/android/dreams/phototable/PhotoCarousel;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    .local v2, now:J
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mLastFlipTime:J
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$300(Lcom/android/dreams/phototable/PhotoCarousel;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 83
    .local v0, elapsed:J
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mDropPeriod:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$400(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mDropPeriod:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$400(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-direct {p0, v4, v5}, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->scheduleNext(J)V

    .line 92
    :cond_0
    :goto_1
    return-void

    .line 77
    .end local v0           #elapsed:J
    .end local v2           #now:J
    :cond_1
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mSpinner:Landroid/view/View;
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$200(Lcom/android/dreams/phototable/PhotoCarousel;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 86
    .restart local v0       #elapsed:J
    .restart local v2       #now:J
    :cond_2
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mDropPeriod:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$400(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v4

    int-to-long v4, v4

    invoke-direct {p0, v4, v5}, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->scheduleNext(J)V

    .line 87
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #calls: Lcom/android/dreams/phototable/PhotoCarousel;->changePhoto()Z
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$500(Lcom/android/dreams/phototable/PhotoCarousel;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #calls: Lcom/android/dreams/phototable/PhotoCarousel;->canFlip()Z
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$600(Lcom/android/dreams/phototable/PhotoCarousel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    :cond_3
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/android/dreams/phototable/PhotoCarousel;->flip(F)V

    .line 89
    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #setter for: Lcom/android/dreams/phototable/PhotoCarousel;->mLastFlipTime:J
    invoke-static {v4, v2, v3}, Lcom/android/dreams/phototable/PhotoCarousel;->access$302(Lcom/android/dreams/phototable/PhotoCarousel;J)J

    goto :goto_1
.end method
