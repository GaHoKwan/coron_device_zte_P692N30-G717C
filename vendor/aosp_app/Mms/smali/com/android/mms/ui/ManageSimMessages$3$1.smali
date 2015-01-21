.class Lcom/android/mms/ui/ManageSimMessages$3$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$3;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 516
    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 517
    :try_start_0
    sget-object v0, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSimMessages$3;->val$cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v3, v3, Lcom/android/mms/ui/ManageSimMessages$3;->val$cursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$3;->val$msgIndex:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, index:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$900()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "ForMultiDelete"

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-boolean v6, v0, Lcom/android/mms/ui/ManageSimMessages;->isDeleting:Z

    .line 529
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$3;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z
    invoke-static {v0, v6}, Lcom/android/mms/ui/ManageSimMessages;->access$002(Lcom/android/mms/ui/ManageSimMessages;Z)Z

    .line 531
    return-void

    .line 519
    .end local v5           #index:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
