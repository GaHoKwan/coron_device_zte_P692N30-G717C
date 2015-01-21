.class Lcom/hf/UI/IndicesLayout$2;
.super Ljava/lang/Object;
.source "IndicesLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/IndicesLayout;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/IndicesLayout;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$2;->this$0:Lcom/hf/UI/IndicesLayout;

    iput p2, p0, Lcom/hf/UI/IndicesLayout$2;->val$position:I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 292
    iget-object v2, p0, Lcom/hf/UI/IndicesLayout$2;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/hf/UI/IndicesLayout;->access$0(Lcom/hf/UI/IndicesLayout;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "indices"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 293
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "indices_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hf/UI/IndicesLayout$2;->this$0:Lcom/hf/UI/IndicesLayout;

    #getter for: Lcom/hf/UI/IndicesLayout;->mCity:Lcom/hf/model/CityModel;
    invoke-static {v4}, Lcom/hf/UI/IndicesLayout;->access$1(Lcom/hf/UI/IndicesLayout;)Lcom/hf/model/CityModel;

    move-result-object v4

    iget-object v4, v4, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/hf/UI/IndicesLayout$2;->val$position:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method
