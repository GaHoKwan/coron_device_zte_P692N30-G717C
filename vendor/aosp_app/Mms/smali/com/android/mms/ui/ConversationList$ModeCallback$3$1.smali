.class Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$ModeCallback$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$ModeCallback$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1985
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->val$threadIds2:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    new-array v1, v7, [I

    .line 1986
    .local v1, contactIds:[I
    const/4 v3, 0x0

    .line 1987
    .local v3, i:I
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->val$threadIds2:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 1988
    .local v6, threadId:Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 1990
    .local v2, conversationForMarkSpam:Lcom/android/mms/data/Conversation;
    const-string v7, ","

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1992
    .local v5, numbers:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/mms/ipmessage/ContactManager;->getContactIdByNumber(Ljava/lang/String;)S

    move-result v0

    .line 1994
    .local v0, contactId:I
    aput v0, v1, v3

    .line 1995
    add-int/lit8 v3, v3, 0x1

    .line 1996
    const-string v7, "ConversationList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "threadId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", contactId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1998
    .end local v0           #contactId:I
    .end local v2           #conversationForMarkSpam:Lcom/android/mms/data/Conversation;
    .end local v5           #numbers:Ljava/lang/String;
    .end local v6           #threadId:Ljava/lang/Long;
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList$ModeCallback$3$1;->this$2:Lcom/android/mms/ui/ConversationList$ModeCallback$3;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback$3;->this$1:Lcom/android/mms/ui/ConversationList$ModeCallback;

    iget-object v7, v7, Lcom/android/mms/ui/ConversationList$ModeCallback;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/mediatek/mms/ipmessage/ContactManager;->addContactToSpamList([I)Z

    .line 1999
    return-void
.end method
