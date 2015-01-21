.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->showAddContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

.field final synthetic val$tvPhoneNumber:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;->val$tvPhoneNumber:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 590
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 591
    return-void
.end method
