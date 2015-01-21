.class Lcom/hf/UI/LogoActivity$3;
.super Ljava/lang/Object;
.source "LogoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/LogoActivity;->showPermissionDialog(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/LogoActivity;

.field private final synthetic val$dialog:Lcom/hf/UI/HFDialog;


# direct methods
.method constructor <init>(Lcom/hf/UI/LogoActivity;Lcom/hf/UI/HFDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LogoActivity$3;->this$0:Lcom/hf/UI/LogoActivity;

    iput-object p2, p0, Lcom/hf/UI/LogoActivity$3;->val$dialog:Lcom/hf/UI/HFDialog;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$3;->val$dialog:Lcom/hf/UI/HFDialog;

    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/hf/UI/LogoActivity$3;->this$0:Lcom/hf/UI/LogoActivity;

    invoke-virtual {v0}, Lcom/hf/UI/LogoActivity;->finish()V

    .line 139
    return-void
.end method
