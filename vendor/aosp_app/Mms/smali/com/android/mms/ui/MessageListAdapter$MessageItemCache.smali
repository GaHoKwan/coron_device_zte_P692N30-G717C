.class Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;
.super Landroid/util/LruCache;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageItemCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Long;",
        "Lcom/android/mms/ui/MessageItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "maxSize"

    .prologue
    .line 872
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    .line 873
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Long;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "evicted"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 878
    invoke-virtual {p3}, Lcom/android/mms/ui/MessageItem;->cancelPduLoading()V

    .line 879
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 870
    check-cast p2, Ljava/lang/Long;

    .end local p2
    check-cast p3, Lcom/android/mms/ui/MessageItem;

    .end local p3
    check-cast p4, Lcom/android/mms/ui/MessageItem;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->entryRemoved(ZLjava/lang/Long;Lcom/android/mms/ui/MessageItem;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method
