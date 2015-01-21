.class Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

.field final synthetic val$m_type:I

.field final synthetic val$msgBox:I

.field final synthetic val$msgType:I

.field final synthetic val$rowid:J

.field final synthetic val$threadId:J

.field final synthetic val$threadType:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;IJIIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iput p2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$m_type:I

    iput-wide p3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadType:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgType:I

    iput-wide p7, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$rowid:J

    iput p9, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgBox:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initializeClickIntent(Landroid/content/Intent;IIJ)V
    .locals 7
    .parameter "onClickIntent"
    .parameter "msgType"
    .parameter "msgBox"
    .parameter "rowid"

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 692
    if-ne p2, v5, :cond_2

    .line 693
    if-ne p3, v4, :cond_1

    .line 694
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 697
    .local v2, SMS_URI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v4, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 698
    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 699
    const-string v3, "msg_type"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 701
    .end local v2           #SMS_URI:Landroid/net/Uri;
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_5

    .line 702
    if-ne p3, v4, :cond_3

    .line 703
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 705
    :cond_3
    if-ne p3, v5, :cond_4

    iget v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$m_type:I

    const/16 v4, 0x82

    if-ne v3, v4, :cond_4

    .line 706
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v4, 0x7f0b01ec

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 710
    :cond_4
    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 711
    .local v1, MMS_URI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v4, Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 712
    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 713
    const-string v3, "dirmode"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 716
    .end local v1           #MMS_URI:Landroid/net/Uri;
    :cond_5
    if-ne p2, v6, :cond_0

    .line 717
    const-string v3, "content://cb/messages/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 718
    .local v0, CB_URI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v3, v3, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v4, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 719
    invoke-static {v0, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 720
    const-string v3, "msg_type"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v12, :cond_1

    .line 727
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    invoke-static {v0, v2, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 728
    .local v7, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v11

    .line 729
    .local v11, number:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_1

    const-string v0, "7---"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    const-string v0, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a group chat thread is clicked.threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v9, Landroid/content/Intent;

    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 733
    const-string v0, "boolean"

    invoke-virtual {v9, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 734
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v0, v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 792
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #number:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    const/4 v1, 0x0

    .line 740
    .local v1, onClickIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v8

    .line 742
    .local v8, dirMode:Z
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadType:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 743
    new-instance v10, Landroid/content/Intent;

    sget-object v0, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->SERVICE_CENTER:Ljava/lang/String;

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 744
    .local v10, it:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v0, v10}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    invoke-static {v0, v2, v3, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    .line 746
    .restart local v7       #conv:Lcom/android/mms/data/Conversation;
    if-eqz v7, :cond_0

    .line 747
    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->markAsRead()V

    goto :goto_0

    .line 751
    .end local v7           #conv:Lcom/android/mms/data/Conversation;
    .end local v10           #it:Landroid/content/Intent;
    :cond_2
    const-string v0, "Mms/SearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickIntent1 dirMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    if-nez v8, :cond_5

    .line 753
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadType:I

    if-ne v0, v12, :cond_4

    .line 754
    const-string v0, "Mms/WapPush"

    const-string v2, "SearchActivity: onClickIntent WPMessageActivity."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    new-instance v1, Landroid/content/Intent;

    .end local v1           #onClickIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v2, Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 784
    .restart local v1       #onClickIntent:Landroid/content/Intent;
    :goto_1
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgBox:I

    if-ne v0, v12, :cond_3

    iget v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$m_type:I

    const/16 v2, 0x82

    if-eq v0, v2, :cond_0

    .line 787
    :cond_3
    const-string v0, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$threadId:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 788
    const-string v0, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v2, v2, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string v0, "select_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$rowid:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 790
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 757
    :cond_4
    const-string v0, "Mms/WapPush"

    const-string v2, "SearchActivity: onClickIntent ComposeMessageActivity."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v1, Landroid/content/Intent;

    .end local v1           #onClickIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v1       #onClickIntent:Landroid/content/Intent;
    goto :goto_1

    .line 761
    :cond_5
    new-instance v1, Landroid/content/Intent;

    .end local v1           #onClickIntent:Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 762
    .restart local v1       #onClickIntent:Landroid/content/Intent;
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgType:I

    if-ne v0, v4, :cond_6

    .line 763
    const-string v0, "content://wappush/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 764
    .local v6, WP_URI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->this$1:Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v2, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 765
    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$rowid:J

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 766
    const-string v0, "msg_type"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 768
    .end local v6           #WP_URI:Landroid/net/Uri;
    :cond_6
    iget v2, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgType:I

    iget v3, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$msgBox:I

    iget-wide v4, p0, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->val$rowid:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SearchActivity$SearchResultCursorAdapter$1;->initializeClickIntent(Landroid/content/Intent;IIJ)V

    goto :goto_1
.end method
