.class Lcom/android/quicksearchbox/util/AsyncDataSetObservable$1;
.super Ljava/lang/Object;
.source "AsyncDataSetObservable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/AsyncDataSetObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/util/AsyncDataSetObservable;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$1;->this$0:Lcom/android/quicksearchbox/util/AsyncDataSetObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$1;->this$0:Lcom/android/quicksearchbox/util/AsyncDataSetObservable;

    #calls: Landroid/database/DataSetObservable;->notifyChanged()V
    invoke-static {v0}, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->access$001(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V

    .line 32
    return-void
.end method
