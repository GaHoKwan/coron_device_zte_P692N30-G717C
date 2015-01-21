.class Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;
.super Ljava/lang/Object;
.source "ZTECallsInterceptActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, p3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 196
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 197
    .local v1, count:I
    if-lez v1, :cond_1

    .line 250
    :goto_1
    return-void

    .line 194
    .end local v1           #count:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 202
    .restart local v1       #count:I
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0233

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 205
    const v3, 0x7f07004f

    const/4 v4, -0x1

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;

    invoke-direct {v5, p0, p3}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    const v3, 0x7f0a0174

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTECallsInterceptActivity$3;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 248
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 249
    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_1
.end method
