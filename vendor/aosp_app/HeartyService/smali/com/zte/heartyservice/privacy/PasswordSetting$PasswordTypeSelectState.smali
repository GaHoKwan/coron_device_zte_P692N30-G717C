.class Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;
.super Lcom/zte/heartyservice/privacy/PasswordSetting$State;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PasswordTypeSelectState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting$State;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$300(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$400(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mMaintView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$800(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    return-void
.end method

.method public next()Lcom/zte/heartyservice/privacy/PasswordSetting$State;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBtnLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$400(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mMaintView:Landroid/view/View;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$500(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    new-instance v0, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting$SetPasswordState;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-object v0
.end method
