.class public Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;
.super Ljava/lang/Object;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MoveBtnOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 600
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->isDefaultMemoryAvailable()Z

    move-result v2

    if-ne v3, v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createSoftwareMoveProgressDialog()V
    invoke-static {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$900(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 603
    .local v1, i:I
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveSelected(I)V
    invoke-static {v2, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->access$1000(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;I)V

    .line 612
    .end local v1           #i:I
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "<==>tsj"

    const-string v3, "MoveBtnOnClickListener Exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
