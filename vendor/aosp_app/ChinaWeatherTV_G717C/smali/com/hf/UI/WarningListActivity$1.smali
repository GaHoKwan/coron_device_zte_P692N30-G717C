.class Lcom/hf/UI/WarningListActivity$1;
.super Landroid/os/AsyncTask;
.source "WarningListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/WarningListActivity;->readWarnFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WarningListActivity;

.field private final synthetic val$cityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/WarningListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    iput-object p2, p0, Lcom/hf/UI/WarningListActivity$1;->val$cityId:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "params"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    iget-object v1, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    iget-object v2, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    iget-object v3, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    const v4, 0x7f080121

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/hf/UI/WarningListActivity$1;->val$cityId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/hf/UI/WarningListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/hf/utils/Util;->readWeatherFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hf/utils/Util;->parseWarning(Landroid/content/Context;Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/hf/UI/WarningListActivity;->mWarningList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/hf/UI/WarningListActivity;->access$3(Lcom/hf/UI/WarningListActivity;Ljava/util/List;)V

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    #calls: Lcom/hf/UI/WarningListActivity;->refrashList()V
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$4(Lcom/hf/UI/WarningListActivity;)V

    .line 158
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$1(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$1(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$1(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/hf/UI/WarningListActivity$1;->this$0:Lcom/hf/UI/WarningListActivity;

    #getter for: Lcom/hf/UI/WarningListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/hf/UI/WarningListActivity;->access$2(Lcom/hf/UI/WarningListActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    return-void
.end method
