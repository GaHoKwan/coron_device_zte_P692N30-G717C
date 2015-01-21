.class Lcom/android/mms/ui/ConversationList$17;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->notificationsReceived(Landroid/content/Intent;)V
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
    .line 3004
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3006
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->setActivated(Z)V

    .line 3007
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    #calls: Lcom/android/mms/ui/ConversationList;->initSpinnerListAdapter()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5300(Lcom/android/mms/ui/ConversationList;)V

    .line 3008
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3009
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5400(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3010
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5500(Lcom/android/mms/ui/ConversationList;)Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3011
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$5600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    #getter for: Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->access$5500(Lcom/android/mms/ui/ConversationList;)Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 3012
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$17;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 3013
    return-void
.end method
