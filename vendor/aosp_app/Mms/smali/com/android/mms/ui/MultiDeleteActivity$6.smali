.class Lcom/android/mms/ui/MultiDeleteActivity$6;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->markAsImportant([J[JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$important:Z

.field final synthetic val$mmsIds:[J

.field final synthetic val$smsIds:[J

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;[JZLandroid/content/ContentValues;[J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    iput-boolean p3, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$important:Z

    iput-object p4, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$values:Landroid/content/ContentValues;

    iput-object p5, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$mmsIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 1555
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    array-length v9, v9

    if-lez v9, :cond_1

    .line 1556
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;
    invoke-static {v9}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDelete;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    iget-boolean v12, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$important:Z

    invoke-interface {v9, v10, v11, v12}, Lcom/mediatek/mms/ext/IMmsMultiDelete;->lockMassTextMsgs(Landroid/content/Context;[JZ)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1557
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1558
    .local v8, uri:Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1559
    .local v7, strBuf:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-wide v2, v0, v1

    .line 1560
    .local v2, id:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1562
    .end local v2           #id:J
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1563
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1564
    .local v4, idSelect:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$important:Z

    if-eqz v9, :cond_2

    .line 1565
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    invoke-virtual {v9, v10}, Lcom/mediatek/mms/ipmessage/MessageManager;->addMessageToImportantList([J)Z

    .line 1571
    :goto_1
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$values:Landroid/content/ContentValues;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id in ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1574
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v4           #idSelect:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #strBuf:Ljava/lang/StringBuffer;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$mmsIds:[J

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$mmsIds:[J

    array-length v9, v9

    if-lez v9, :cond_4

    .line 1575
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1576
    .restart local v8       #uri:Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1577
    .restart local v7       #strBuf:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$mmsIds:[J

    .restart local v0       #arr$:[J
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v5, :cond_3

    aget-wide v2, v0, v1

    .line 1578
    .restart local v2       #id:J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1577
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1568
    .end local v2           #id:J
    .restart local v4       #idSelect:Ljava/lang/String;
    .restart local v6       #str:Ljava/lang/String;
    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v9}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$smsIds:[J

    invoke-virtual {v9, v10}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteMessageFromImportantList([J)Z

    goto :goto_1

    .line 1580
    .end local v4           #idSelect:Ljava/lang/String;
    .end local v6           #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1581
    .restart local v6       #str:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1582
    .restart local v4       #idSelect:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->val$values:Landroid/content/ContentValues;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id in ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v8, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1584
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v4           #idSelect:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #strBuf:Ljava/lang/StringBuffer;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1585
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/mms/ui/MultiDeleteActivity$6$1;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MultiDeleteActivity$6$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$6;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1592
    :cond_5
    return-void
.end method
