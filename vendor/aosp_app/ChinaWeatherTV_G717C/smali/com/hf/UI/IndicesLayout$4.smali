.class Lcom/hf/UI/IndicesLayout$4;
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


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesLayout;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesLayout$4;->this$0:Lcom/hf/UI/IndicesLayout;

    iput-object p2, p0, Lcom/hf/UI/IndicesLayout$4;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/hf/UI/IndicesLayout$4;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 345
    return-void
.end method
