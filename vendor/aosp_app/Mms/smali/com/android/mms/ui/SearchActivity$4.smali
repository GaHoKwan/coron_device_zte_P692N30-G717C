.class Lcom/android/mms/ui/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->gotoComposeMessageActivity(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$u:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SearchActivity$4;->val$u:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 532
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->val$u:Landroid/net/Uri;

    const-string v9, "source_id"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 533
    .local v2, sourceId:J
    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->val$u:Landroid/net/Uri;

    const-string v9, "which_table"

    invoke-virtual {v8, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 534
    .local v6, whichTable:J
    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    #calls: Lcom/android/mms/ui/SearchActivity;->getThreadId(JJ)J
    invoke-static {v8, v2, v3, v6, v7}, Lcom/android/mms/ui/SearchActivity;->access$800(Lcom/android/mms/ui/SearchActivity;JJ)J

    move-result-wide v4

    .line 536
    .local v4, threadId:J
    new-instance v1, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v9, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    .local v1, onClickIntent:Landroid/content/Intent;
    const-string v8, "highlight"

    iget-object v9, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    #getter for: Lcom/android/mms/ui/SearchActivity;->searchString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/SearchActivity;->access$500(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string v8, "select_id"

    invoke-virtual {v1, v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 540
    const-string v8, "thread_id"

    invoke-virtual {v1, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 541
    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v8, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 542
    iget-object v8, p0, Lcom/android/mms/ui/SearchActivity$4;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v1           #onClickIntent:Landroid/content/Intent;
    .end local v2           #sourceId:J
    .end local v4           #threadId:J
    .end local v6           #whichTable:J
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v8, "Mms/SearchActivity"

    const-string v9, "OK, we do not have a thread id so continue"

    invoke-static {v8, v9, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
