.class Lcom/autonavi/xmgd/user/ForgetPassword$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/ForgetPassword;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/ForgetPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/ForgetPassword$2;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/16 v2, 0x90

    const/16 v1, 0x81

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$2;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$800(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$2;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPasswordAgain:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$900(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$2;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$800(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/ForgetPassword$2;->this$0:Lcom/autonavi/xmgd/user/ForgetPassword;

    #getter for: Lcom/autonavi/xmgd/user/ForgetPassword;->mEditInputPasswordAgain:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/ForgetPassword;->access$900(Lcom/autonavi/xmgd/user/ForgetPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method
