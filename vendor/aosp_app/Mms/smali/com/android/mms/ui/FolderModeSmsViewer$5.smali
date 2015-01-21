.class Lcom/android/mms/ui/FolderModeSmsViewer$5;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->resendMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ct:Landroid/content/Context;

.field final synthetic val$mUri:Landroid/net/Uri;

.field final synthetic val$sender:Lcom/android/mms/transaction/MessageSender;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/mms/transaction/MessageSender;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$ct:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$mUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$sender:Lcom/android/mms/transaction/MessageSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1043
    invoke-static {}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getResult()I

    move-result v7

    .line 1044
    .local v7, nRet:I
    invoke-static {}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    const/4 v0, 0x2

    if-eq v0, v7, :cond_0

    invoke-static {}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v7, :cond_1

    .line 1045
    :cond_0
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceComplete result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-static {}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    .line 1068
    :goto_0
    return-void

    .line 1049
    :cond_1
    const-string v0, "Mms/Txn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceComplete result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->status:I
    invoke-static {v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1900(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    .line 1053
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1054
    .local v3, cv:Landroid/content/ContentValues;
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$ct:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1058
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$sender:Lcom/android/mms/transaction/MessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 1059
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resendMsg  mSimId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    invoke-static {v2}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->val$sender:Lcom/android/mms/transaction/MessageSender;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    :goto_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$5;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->threadId:I
    invoke-static {v2}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2000(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 1067
    invoke-static {}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    goto/16 :goto_0

    .line 1062
    :catch_0
    move-exception v6

    .line 1063
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/FolderModeSmsViewer"

    const-string v1, "Can\'t resend mms."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
