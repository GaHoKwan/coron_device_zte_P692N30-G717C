.class Lcom/hf/UI/InitDefaultActivity$8;
.super Ljava/lang/Object;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$8;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iput-object p2, p0, Lcom/hf/UI/InitDefaultActivity$8;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$8;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #calls: Lcom/hf/UI/InitDefaultActivity;->getCityFormLocation()V
    invoke-static {v0}, Lcom/hf/UI/InitDefaultActivity;->access$6(Lcom/hf/UI/InitDefaultActivity;)V

    .line 365
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$8;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 366
    return-void
.end method
