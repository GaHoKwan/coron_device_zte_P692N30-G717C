.class Lcom/android/mms/ui/ComposeMessageActivity$81;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->getContactSIM(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$dbQueryLock:Ljava/lang/Object;

.field final synthetic val$mContextTemp:Landroid/content/Context;

.field final synthetic val$num:Ljava/lang/String;

.field final synthetic val$simID:Lcom/android/mms/ui/ComposeMessageActivity$1Int;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Object;Lcom/android/mms/ui/ComposeMessageActivity$1Int;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9534
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$num:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$mContextTemp:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$dbQueryLock:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$simID:Lcom/android/mms/ui/ComposeMessageActivity$1Int;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 9536
    const/4 v10, -0x1

    .line 9537
    .local v10, simId:I
    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$num:Ljava/lang/String;

    .line 9538
    .local v9, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$mContextTemp:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/android/mms/ui/MessageUtils;->formatNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 9539
    .local v8, formatNumber:Ljava/lang/String;
    move-object v6, v8

    .line 9540
    .local v6, TrimFormatNumber:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 9541
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 9543
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "sim_id"

    aput-object v3, v2, v11

    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND (data1=? OR data1=? OR data4=?) AND (sim_id!= -1)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v9, v4, v11

    aput-object v8, v4, v5

    const/4 v5, 0x2

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 9555
    .local v7, associateSIMCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 9556
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9558
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 9562
    :goto_0
    if-eqz v7, :cond_1

    .line 9563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 9565
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$dbQueryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9566
    :try_start_0
    const-string v0, "Mms/Txn"

    const-string v2, "before notify"

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9567
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$simID:Lcom/android/mms/ui/ComposeMessageActivity$1Int;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/ComposeMessageActivity$1Int;->set(I)V

    .line 9568
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->val$dbQueryLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 9570
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$81;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAssociatedSimQueryDone:I
    invoke-static {v0, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15602(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 9571
    monitor-exit v1

    .line 9573
    return-void

    .line 9560
    :cond_2
    const/4 v10, -0x1

    goto :goto_0

    .line 9571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
