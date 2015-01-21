.class Lcom/autonavi/xmgd/user/GDAccount$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/GDAccount;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/GDAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/GDAccount$2;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$2;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$400(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/GDAccount$2;->this$0:Lcom/autonavi/xmgd/user/GDAccount;

    #getter for: Lcom/autonavi/xmgd/user/GDAccount;->mEditPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/GDAccount;->access$400(Lcom/autonavi/xmgd/user/GDAccount;)Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
