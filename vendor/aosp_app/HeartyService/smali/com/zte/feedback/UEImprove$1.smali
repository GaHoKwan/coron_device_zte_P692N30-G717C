.class Lcom/zte/feedback/UEImprove$1;
.super Ljava/lang/Thread;
.source "UEImprove.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/feedback/UEImprove;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/feedback/UEImprove;


# direct methods
.method constructor <init>(Lcom/zte/feedback/UEImprove;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 60
    iget-object v1, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    #calls: Lcom/zte/feedback/UEImprove;->isExistCrashLog()Z
    invoke-static {v1}, Lcom/zte/feedback/UEImprove;->access$000(Lcom/zte/feedback/UEImprove;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0678

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0676

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/feedback/UEImprove$1$2;

    invoke-direct {v3, p0}, Lcom/zte/feedback/UEImprove$1$2;-><init>(Lcom/zte/feedback/UEImprove$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/feedback/UEImprove$1;->this$0:Lcom/zte/feedback/UEImprove;

    iget-object v2, v2, Lcom/zte/feedback/UEImprove;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0677

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zte/feedback/UEImprove$1$1;

    invoke-direct {v3, p0}, Lcom/zte/feedback/UEImprove$1$1;-><init>(Lcom/zte/feedback/UEImprove$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 135
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 139
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 140
    return-void
.end method
