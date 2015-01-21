.class public Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "CommonListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final NOT_EMPTY:I = 0x1

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

.field private mState:I

.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V
    .locals 1
    .parameter
    .parameter "CallBacks"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 128
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mState:I

    .line 129
    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    .line 130
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .parameter "params"

    .prologue
    .line 133
    const/4 v0, -0x3

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 134
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    invoke-interface {v0, p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;->doInBackground(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    #getter for: Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->access$000(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->access$002(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    .line 158
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->updateView()V

    .line 160
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    #getter for: Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->access$000(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->clear()V

    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    invoke-interface {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;->onPreExecute()V

    .line 143
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 147
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    #getter for: Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->mLoadDataTask:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;
    invoke-static {v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->access$000(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 148
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 149
    .local v0, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->add(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 150
    invoke-virtual {p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->updateView()V

    .line 152
    .end local v0           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    check-cast p1, [Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->onProgressUpdate([Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    return-void
.end method

.method public publishItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 163
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zte/heartyservice/common/datatype/CommonListItem;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->publishProgress([Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method protected updateView()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->this$0:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 169
    const/4 v0, 0x1

    .line 174
    .local v0, newState:I
    :goto_0
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mState:I

    if-eq v1, v0, :cond_0

    .line 175
    iput v0, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mState:I

    .line 176
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    if-eqz v1, :cond_0

    .line 177
    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mCallBacks:Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;

    iget v1, p0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTask;->mState:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;->updateView(Z)V

    .line 179
    :cond_0
    return-void

    .line 171
    .end local v0           #newState:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #newState:I
    goto :goto_0

    .line 177
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
