.class Lcom/android/mms/ui/ConversationList$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 451
    const-string v0, "ConversationList"

    const-string v1, "onContentChanged begin"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$100(Lcom/android/mms/ui/ConversationList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$202(Lcom/android/mms/ui/ConversationList;Z)Z

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)V

    .line 457
    :cond_0
    return-void
.end method
