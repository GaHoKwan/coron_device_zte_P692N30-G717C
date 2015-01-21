.class Lcom/autonavi/xmgd/user/UserRegister$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/UserRegister;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/UserRegister$2;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$2;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$900(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$2;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPasswordAgain:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$1000(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$2;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPassword:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$900(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$2;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #getter for: Lcom/autonavi/xmgd/user/UserRegister;->mEditInputPasswordAgain:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/autonavi/xmgd/user/UserRegister;->access$1000(Lcom/autonavi/xmgd/user/UserRegister;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method
