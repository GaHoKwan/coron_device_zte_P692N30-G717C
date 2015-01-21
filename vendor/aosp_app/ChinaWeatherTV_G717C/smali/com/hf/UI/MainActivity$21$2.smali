.class Lcom/hf/UI/MainActivity$21$2;
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
    iput-object p1, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$21$2;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;
    invoke-static {v0}, Lcom/hf/UI/MainActivity$21;->access$3(Lcom/hf/UI/MainActivity$21;)Lcom/hf/UI/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/hf/UI/MainActivity;->isExit:Z
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$21(Lcom/hf/UI/MainActivity;Z)V

    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$2;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    :goto_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->isON:Z
    invoke-static {v0}, Lcom/hf/UI/MainActivity$21;->access$1(Lcom/hf/UI/MainActivity$21;)Z

    move-result v0

    iget-object v1, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->checked:Z
    invoke-static {v1}, Lcom/hf/UI/MainActivity$21;->access$2(Lcom/hf/UI/MainActivity$21;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;
    invoke-static {v0}, Lcom/hf/UI/MainActivity$21;->access$3(Lcom/hf/UI/MainActivity$21;)Lcom/hf/UI/MainActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hf/utils/AlarmUtil;->getInstance(Landroid/content/Context;)Lcom/hf/utils/AlarmUtil;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Lcom/hf/utils/AlarmUtil;->setWarningAlarm()V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$21$2;->this$1:Lcom/hf/UI/MainActivity$21;

    #getter for: Lcom/hf/UI/MainActivity$21;->this$0:Lcom/hf/UI/MainActivity;
    invoke-static {v0}, Lcom/hf/UI/MainActivity$21;->access$3(Lcom/hf/UI/MainActivity$21;)Lcom/hf/UI/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->finish()V

    .line 1156
    return-void

    .line 1149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
