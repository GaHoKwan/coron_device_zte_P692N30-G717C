.class final Lcom/android/mms/ui/MessageUtils$13;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->addShortcutToLauncher(Landroid/content/Context;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$threadIds:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2719
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$13;->val$threadIds:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 2721
    const/4 v4, 0x0

    .line 2722
    .local v4, intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$threadIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v8

    .line 2723
    .local v8, totalNumber:I
    const/4 v2, 0x0

    .line 2724
    .local v2, currentNumber:I
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$threadIds:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 2725
    .local v7, threadId:Ljava/lang/Long;
    add-int/lit8 v2, v2, 0x1

    .line 2726
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 2727
    .local v1, conv:Lcom/android/mms/data/Conversation;
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2729
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 2730
    .local v6, number:Ljava/lang/String;
    const-string v9, "7---"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2731
    const-string v9, "shortcut"

    const-string v10, "create group shortcut."

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2733
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v10, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    const v11, 0x7f0200a7

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2736
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.mediatek.mms.action.opengroup"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2737
    .local v5, it:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    const-class v10, Lcom/android/mms/ui/TransferActivity;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2740
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-static {v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mediatek/mms/ipmessage/ContactManager;->getContactIdByNumber(Ljava/lang/String;)S

    move-result v0

    .line 2741
    .local v0, contactId:I
    const-string v9, "contact_id"

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2742
    const-string v9, "thread_id"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2744
    const/high16 v9, 0x3400

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2747
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2748
    const-string v9, "com.android.launcher2.extra.shortcut.totalnumber"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2749
    const-string v9, "com.android.launcher2.extra.shortcut.stepnumber"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2750
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2754
    .end local v0           #contactId:I
    .end local v5           #it:Landroid/content/Intent;
    .end local v6           #number:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_1

    .line 2755
    const-string v9, "shortcut"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addShortcutToLauncher(): threadId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2757
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2758
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v10, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    const v11, 0x7f0200a7

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2760
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/ui/MessageUtils;->createIntentByThreadId(Landroid/content/Context;JI)Landroid/content/Intent;

    move-result-object v5

    .line 2761
    .restart local v5       #it:Landroid/content/Intent;
    const/high16 v9, 0x3400

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2764
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2765
    const-string v9, "com.android.launcher2.extra.shortcut.totalnumber"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2766
    const-string v9, "com.android.launcher2.extra.shortcut.stepnumber"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2767
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2769
    .end local v5           #it:Landroid/content/Intent;
    :cond_1
    const-string v9, "shortcut"

    const-string v10, "create guide shortcut."

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2771
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v9, "android.intent.extra.shortcut.NAME"

    iget-object v10, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v10

    const/16 v11, 0x88

    invoke-virtual {v10, v11}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2773
    const-string v9, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v10, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    const v11, 0x7f0200a7

    invoke-static {v10, v11}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2775
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.mediatek.mms.action.openguide"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2776
    .restart local v5       #it:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    const-class v10, Lcom/android/mms/ui/TransferActivity;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2777
    const-string v9, "thread_id"

    invoke-virtual {v5, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2778
    const/high16 v9, 0x3400

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2781
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2782
    const-string v9, "com.android.launcher2.extra.shortcut.totalnumber"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2783
    const-string v9, "com.android.launcher2.extra.shortcut.stepnumber"

    invoke-virtual {v4, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2784
    iget-object v9, p0, Lcom/android/mms/ui/MessageUtils$13;->val$context:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2787
    .end local v1           #conv:Lcom/android/mms/data/Conversation;
    .end local v5           #it:Landroid/content/Intent;
    .end local v7           #threadId:Ljava/lang/Long;
    :cond_2
    return-void
.end method
