.class Lcom/hf/UI/MainActivity$21$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity$21;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hf/UI/MainActivity$21;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity$21;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$21$3;->this$1:Lcom/hf/UI/MainActivity$21;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$21$3;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$3;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;
    invoke-static {v0}, Lcom/hf/UI/MainActivity$21;->access$3(Lcom/hf/UI/MainActivity$21;)Lcom/hf/UI/MainActivity;

    move-result-object v0

    const/4 v1, 0x0

    #setter for: Lcom/hf/UI/MainActivity;->isExit:Z
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$21(Lcom/hf/UI/MainActivity;Z)V

    .line 1167
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$3;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
