.class Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
.super Landroid/os/AsyncTask;
.source "SmsExplorerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/SmsExplorerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private localListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private localSubjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localListItems:Ljava/util/List;

    .line 82
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;-><init>(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 86
    const/16 v7, -0xf

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 87
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "before getSmsInThread"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->name:Ljava/lang/String;
    invoke-static {v8}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$100(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->ac:Ljava/lang/String;
    invoke-static {v9}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$200(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getSmsInThread(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localListItems:Ljava/util/List;

    .line 89
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "end getSmsInThread"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    .line 91
    const/4 v4, 0x0

    .line 92
    .local v4, privacySmsRecordListItem:Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localListItems:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v2, listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v4, v2

    .line 93
    check-cast v4, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;

    .line 95
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 96
    .local v5, subjectNumbers:I
    const/4 v3, 0x0

    .line 97
    .local v3, localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    const/4 v0, 0x0

    .line 98
    .local v0, cursor:I
    const-string v6, ""

    .line 99
    .local v6, title:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 100
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    check-cast v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    .line 101
    .restart local v3       #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2YearMonthDayString(J)Ljava/lang/String;

    move-result-object v6

    .line 102
    invoke-virtual {v3}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    invoke-virtual {v4, v6}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->addCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 111
    :cond_1
    if-lt v0, v5, :cond_2

    .line 112
    new-instance v3, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;

    .end local v3           #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacySmsRecordListItem;->getDate()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getLong2YearMonthDayString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v10}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 114
    .restart local v3       #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;->addCommonListItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 115
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->isCancelled()Z

    move-result v7

    if-ne v7, v11, :cond_0

    .line 124
    .end local v0           #cursor:I
    .end local v2           #listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v3           #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    .end local v5           #subjectNumbers:I
    .end local v6           #title:Ljava/lang/String;
    :cond_3
    :goto_1
    return-object v10

    .line 107
    .restart local v0       #cursor:I
    .restart local v2       #listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .restart local v3       #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    .restart local v5       #subjectNumbers:I
    .restart local v6       #title:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->isCancelled()Z

    move-result v7

    if-eq v7, v11, :cond_3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0           #cursor:I
    .end local v2           #listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v3           #localSubject:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter$Subject;
    .end local v5           #subjectNumbers:I
    .end local v6           #title:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "end ListUpdateTask doInBackground"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listItems:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$300(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->listItems:Ljava/util/List;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$300(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localListItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$400(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 132
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$400(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->localSubjects:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->addSubjects(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mListUpdateTask:Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$502(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;)Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;

    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$000(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "end ListUpdateTask onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsExplorerActivity$ListUpdateTask;->this$0:Lcom/zte/heartyservice/privacy/SmsExplorerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/SmsExplorerActivity;->access$600(Lcom/zte/heartyservice/privacy/SmsExplorerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    goto :goto_0
.end method
