.class Lcom/hf/UI/MainActivity$19;
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

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$19;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$19;->val$dialog:Lcom/hf/UI/HFDialog;

    iput-object p3, p0, Lcom/hf/UI/MainActivity$19;->val$url:Ljava/lang/String;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 984
    iget-object v0, p0, Lcom/hf/UI/MainActivity$19;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 985
    iget-object v0, p0, Lcom/hf/UI/MainActivity$19;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v1, p0, Lcom/hf/UI/MainActivity$19;->val$url:Ljava/lang/String;

    #calls: Lcom/hf/UI/MainActivity;->update(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/hf/UI/MainActivity;->access$23(Lcom/hf/UI/MainActivity;Ljava/lang/String;)V

    .line 986
    return-void
.end method
