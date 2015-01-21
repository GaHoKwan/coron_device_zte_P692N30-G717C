.class Lcom/mediatek/engineermode/cameranew/Camera$7;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cameranew/Camera;->showSingleInputDlg(Ljava/lang/CharSequence;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cameranew/Camera;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$inputEdit:Landroid/widget/EditText;

.field final synthetic val$listener:Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cameranew/Camera;Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->this$0:Lcom/mediatek/engineermode/cameranew/Camera;

    iput-object p2, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$listener:Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;

    iput-object p3, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$inputEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 2094
    iget-object v0, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$listener:Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;

    iget-object v1, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/mediatek/engineermode/cameranew/Camera$7;->val$inputEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/engineermode/cameranew/Camera$InputDialogOnClickListener;->onClick(Landroid/content/DialogInterface;ILjava/lang/String;)V

    .line 2095
    return-void
.end method
