.class Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;
.super Ljava/lang/Object;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 354
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setAllListCheckStates(Z)V

    .line 355
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isDefaultMemoryAvailable()Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const v2, 0x7f0a012f

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 366
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllSelected()V
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$100(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->showDialog(I)V

    goto :goto_0
.end method
