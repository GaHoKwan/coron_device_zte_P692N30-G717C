.class Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler$1;->this$1:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    .line 1595
    return-void
.end method
