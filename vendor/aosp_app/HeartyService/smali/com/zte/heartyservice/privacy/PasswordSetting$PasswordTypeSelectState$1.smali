.class Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;
.super Ljava/lang/Object;
.source "PasswordSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;->this$1:Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 132
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;->this$1:Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mPasswordType:I
    invoke-static {v0, p3}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$602(Lcom/zte/heartyservice/privacy/PasswordSetting;I)I

    .line 133
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState$1;->this$1:Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$PasswordTypeSelectState;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 134
    return-void
.end method
