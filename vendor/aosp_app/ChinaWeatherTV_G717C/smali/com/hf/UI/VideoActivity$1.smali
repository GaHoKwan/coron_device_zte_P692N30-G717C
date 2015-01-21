.class Lcom/hf/UI/VideoActivity$1;
.super Landroid/os/AsyncTask;
.source "VideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/VideoActivity;->queryVideo()V
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
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/hf/model/VideoModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hf/UI/VideoActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    .line 121
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "params"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #calls: Lcom/hf/UI/VideoActivity;->initVideoList()Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$2(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/VideoActivity$1;->list:Ljava/util/List;

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mList:Ljava/util/List;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$0(Lcom/hf/UI/VideoActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/UI/VideoActivity$1;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mAdapter:Lcom/hf/UI/VideoActivity$VideoAdapter;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$3(Lcom/hf/UI/VideoActivity;)Lcom/hf/UI/VideoActivity$VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/UI/VideoActivity$VideoAdapter;->notifyDataSetChanged()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mQueringBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$1(Lcom/hf/UI/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 126
    iget-object v0, p0, Lcom/hf/UI/VideoActivity$1;->this$0:Lcom/hf/UI/VideoActivity;

    #getter for: Lcom/hf/UI/VideoActivity;->mQueringBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/hf/UI/VideoActivity;->access$1(Lcom/hf/UI/VideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    return-void
.end method
