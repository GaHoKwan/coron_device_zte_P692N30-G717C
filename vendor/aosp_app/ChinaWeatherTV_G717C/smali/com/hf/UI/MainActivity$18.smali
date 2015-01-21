.class Lcom/hf/UI/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showUpdateDialog(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;

.field private final synthetic val$type:Z


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$18;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$18;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-boolean p3, p0, Lcom/hf/UI/MainActivity$18;->val$type:Z

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/hf/UI/MainActivity$18;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 969
    iget-boolean v0, p0, Lcom/hf/UI/MainActivity$18;->val$type:Z

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/hf/UI/MainActivity$18;->this$0:Lcom/hf/UI/MainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/hf/UI/MainActivity;->isExit:Z
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$21(Lcom/hf/UI/MainActivity;Z)V

    .line 971
    iget-object v0, p0, Lcom/hf/UI/MainActivity$18;->this$0:Lcom/hf/UI/MainActivity;

    invoke-virtual {v0}, Lcom/hf/UI/MainActivity;->finish()V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/hf/UI/MainActivity$18;->this$0:Lcom/hf/UI/MainActivity;

    #calls: Lcom/hf/UI/MainActivity;->checkAD()V
    invoke-static {v0}, Lcom/hf/UI/MainActivity;->access$22(Lcom/hf/UI/MainActivity;)V

    goto :goto_0
.end method
