.class Lcom/hf/UI/InitDefaultActivity$9;
.super Ljava/lang/Object;
.source "InitDefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->showHttpDialog(Lcom/hf/model/CityModel;)V
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
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$9;->this$0:Lcom/hf/UI/InitDefaultActivity;

    iput-object p2, p0, Lcom/hf/UI/InitDefaultActivity$9;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$9;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 405
    return-void
.end method