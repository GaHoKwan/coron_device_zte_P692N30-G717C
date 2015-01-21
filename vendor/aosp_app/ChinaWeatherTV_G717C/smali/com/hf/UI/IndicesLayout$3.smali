.class Lcom/hf/UI/IndicesLayout$3;
.super Ljava/lang/Object;
.source "IndicesLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/IndicesLayout;->showDeleteDialog(Lcom/hf/model/Indices;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/IndicesLayout;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$indice:Lcom/hf/model/Indices;


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/model/Indices;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$3;->this$0:Lcom/hf/UI/IndicesLayout;

    iput-object p2, p0, Lcom/hf/UI/IndicesLayout$3;->val$indice:Lcom/hf/model/Indices;

    iput-object p3, p0, Lcom/hf/UI/IndicesLayout$3;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout$3;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/UI/IndicesLayout;->access$0(Lcom/hf/UI/IndicesLayout;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "indices"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 318
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "%s_custom_indices"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hf/UI/IndicesLayout$3;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;
    invoke-static {v5}, Lcom/hf/UI/IndicesLayout;->access$1(Lcom/hf/UI/IndicesLayout;)Lcom/hf/model/CityModel;

    move-result-object v5

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "CL;CY;GM;SSD;JT;XC;ZWX;KQWR;"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, indicesStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout$3;->val$indice:Lcom/hf/model/Indices;

    iget-object v3, v3, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 322
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$3;->val$indice:Lcom/hf/model/Indices;

    iget-object v4, v4, Lcom/hf/model/Indices;->indicesName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 325
    const-string v3, "showDeleteDialog"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    const-string v3, "%s_custom_indices"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hf/UI/IndicesLayout$3;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;
    invoke-static {v5}, Lcom/hf/UI/IndicesLayout;->access$1(Lcom/hf/UI/IndicesLayout;)Lcom/hf/model/CityModel;

    move-result-object v5

    iget-object v5, v5, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 328
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout$3;->this$0:Lcom/hf/UI/IndicesLayout;

    invoke-virtual {v3}, Lcom/hf/UI/IndicesLayout;->changeIndices()V

    .line 334
    iget-object v3, p0, Lcom/hf/UI/IndicesLayout$3;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v3}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 336
    return-void
.end method
