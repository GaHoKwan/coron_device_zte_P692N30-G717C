.class Lcom/autonavi/xmgd/user/UserRegister$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/user/UserRegister;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/user/UserRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/user/UserRegister$3;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/user/UserRegister$3;->this$0:Lcom/autonavi/xmgd/user/UserRegister;

    #setter for: Lcom/autonavi/xmgd/user/UserRegister;->isCheckedDeclare:Z
    invoke-static {v0, p2}, Lcom/autonavi/xmgd/user/UserRegister;->access$1102(Lcom/autonavi/xmgd/user/UserRegister;Z)Z

    return-void
.end method
