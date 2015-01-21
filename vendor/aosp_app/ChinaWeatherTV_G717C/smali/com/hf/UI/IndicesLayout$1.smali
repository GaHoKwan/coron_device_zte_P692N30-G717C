.class Lcom/hf/UI/IndicesLayout$1;
.super Landroid/os/AsyncTask;
.source "IndicesLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/IndicesLayout;->spinerSetSelection()V
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
.field final synthetic this$0:Lcom/hf/UI/IndicesLayout;


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$1;->this$0:Lcom/hf/UI/IndicesLayout;

    .line 98
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout$1;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/UI/IndicesLayout;->access$0(Lcom/hf/UI/IndicesLayout;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "indices"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "indices_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$1;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;
    invoke-static {v4}, Lcom/hf/UI/IndicesLayout;->access$1(Lcom/hf/UI/IndicesLayout;)Lcom/hf/model/CityModel;

    move-result-object v4

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, type:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 111
    .local v0, type:I
    iget-object v1, p0, Lcom/hf/UI/IndicesLayout$1;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/hf/UI/IndicesLayout;->access$2(Lcom/hf/UI/IndicesLayout;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 112
    return-void
.end method
