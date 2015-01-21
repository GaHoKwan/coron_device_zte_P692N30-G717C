.class Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

.field final synthetic val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.BLACK_LIST_MODIFY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "number"

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v3, v3, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, rule:I
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-boolean v2, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v2, :cond_0

    .line 100
    or-int/lit8 v1, v1, 0x2

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-boolean v2, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v2, :cond_1

    .line 103
    or-int/lit8 v1, v1, 0x1

    .line 105
    :cond_1
    const-string v2, "rule"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 107
    return-void
.end method
