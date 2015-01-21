.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt;->showDisableDRDialog(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$contents:Landroid/view/View;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$simId:I


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt;Landroid/app/Activity;Landroid/view/View;Landroid/widget/CheckBox;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$contents:Landroid/view/View;

    iput-object p4, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$checkbox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$context:Landroid/content/Context;

    iput p6, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$simId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$contents:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;

    invoke-direct {v2, p0}, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;-><init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 551
    return-void
.end method
