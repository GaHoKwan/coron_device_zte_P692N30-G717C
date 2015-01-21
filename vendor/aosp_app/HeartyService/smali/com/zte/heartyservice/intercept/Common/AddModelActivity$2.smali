.class Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;
.super Ljava/lang/Object;
.source "AddModelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

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

    .line 74
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$100(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)[Z

    move-result-object v1

    aput-boolean p3, v1, p2

    .line 75
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 77
    .local v0, btn:Landroid/widget/Button;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$100(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/AddModelActivity$2;->this$0:Lcom/zte/heartyservice/intercept/Common/AddModelActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->mChecked:[Z
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Common/AddModelActivity;->access$100(Lcom/zte/heartyservice/intercept/Common/AddModelActivity;)[Z

    move-result-object v1

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
