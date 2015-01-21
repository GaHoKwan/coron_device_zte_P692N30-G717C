.class Lcom/hf/UI/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showTranslationDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$5;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/hf/UI/MainActivity$5;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->cancel()V

    .line 423
    return-void
.end method
