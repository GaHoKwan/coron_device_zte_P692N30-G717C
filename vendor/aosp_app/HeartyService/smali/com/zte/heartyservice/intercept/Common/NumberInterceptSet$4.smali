.class Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;
.super Ljava/lang/Object;
.source "NumberInterceptSet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->showAddToBlackListDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z

    move-result-object v1

    aput-boolean p3, v1, p2

    .line 160
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 162
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet$4;->this$0:Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;

    #getter for: Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;->access$600(Lcom/zte/heartyservice/intercept/Common/NumberInterceptSet;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
