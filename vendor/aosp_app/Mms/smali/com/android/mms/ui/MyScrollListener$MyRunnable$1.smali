.class Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;
.super Ljava/lang/Object;
.source "MyScrollListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MyScrollListener$MyRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

.field final synthetic val$adapter:Lcom/android/mms/ui/MessageCursorAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MyScrollListener$MyRunnable;Lcom/android/mms/ui/MessageCursorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;->this$1:Lcom/android/mms/ui/MyScrollListener$MyRunnable;

    iput-object p2, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;->val$adapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/MyScrollListener$MyRunnable$1;->val$adapter:Lcom/android/mms/ui/MessageCursorAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
