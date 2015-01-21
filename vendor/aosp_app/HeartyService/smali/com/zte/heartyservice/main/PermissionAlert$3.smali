.class Lcom/zte/heartyservice/main/PermissionAlert$3;
.super Ljava/lang/Object;
.source "PermissionAlert.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$TimeOutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/PermissionAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/PermissionAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/PermissionAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/main/PermissionAlert$3;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doWhenMinusOneSeconds(Lcom/zte/heartyservice/common/datatype/NewDialog;I)V
    .locals 6
    .parameter "dialog"
    .parameter "total"

    .prologue
    .line 90
    const v0, 0x7f0e00a3

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionAlert$3;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    const v2, 0x7f0a045b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doWhenTimeOut(Lcom/zte/heartyservice/common/datatype/NewDialog;)V
    .locals 6
    .parameter "dialog"

    .prologue
    .line 99
    const v0, 0x7f0e00a3

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/zte/heartyservice/common/datatype/NewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/main/PermissionAlert$3;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    const v2, 0x7f0a045b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/PermissionAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert$3;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    #calls: Lcom/zte/heartyservice/main/PermissionAlert;->doWhenChooseNotAllow()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/PermissionAlert;->access$100(Lcom/zte/heartyservice/main/PermissionAlert;)V

    .line 101
    invoke-virtual {p1}, Lcom/zte/heartyservice/common/datatype/NewDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method
