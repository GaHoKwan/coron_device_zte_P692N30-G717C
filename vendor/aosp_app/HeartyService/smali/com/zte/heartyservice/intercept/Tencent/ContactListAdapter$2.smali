.class Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;
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
    .line 115
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$2;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->showRemoveContactDialog(Lcom/zte/heartyservice/intercept/Tencent/Contact;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;Lcom/zte/heartyservice/intercept/Tencent/Contact;)V

    .line 120
    return-void
.end method
