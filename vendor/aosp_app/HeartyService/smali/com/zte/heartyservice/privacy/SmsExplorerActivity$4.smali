.class Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SmsExplorerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/SmsExplorerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 255
    const-string v3, "ac"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, this_ac:Ljava/lang/String;
    const-string v3, "date"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 257
    .local v1, this_date:J
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$200(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$500(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$1000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    invoke-static {v3}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$400(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2YearMonthDayString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$100(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$4;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$200(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSms(Ljava/lang/String;Ljava/lang/String;J)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjectDynamic(Ljava/lang/String;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    goto :goto_0
.end method
