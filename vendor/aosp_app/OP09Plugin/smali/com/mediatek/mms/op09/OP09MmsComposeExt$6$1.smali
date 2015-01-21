.class Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;
.super Ljava/lang/Object;
.source "OP09MmsComposeExt.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;->this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;->this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    iget-object v0, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;->this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    iget-object v0, v0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->this$0:Lcom/mediatek/mms/op09/OP09MmsComposeExt;

    iget-object v1, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;->this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    iget-object v1, v1, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6$1;->this$1:Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;

    iget v3, v3, Lcom/mediatek/mms/op09/OP09MmsComposeExt$6;->val$simId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/mms/op09/OP09MmsComposeExt;->enableDRWarningDialog(Landroid/content/Context;ZI)V

    .line 548
    :cond_0
    return-void
.end method
