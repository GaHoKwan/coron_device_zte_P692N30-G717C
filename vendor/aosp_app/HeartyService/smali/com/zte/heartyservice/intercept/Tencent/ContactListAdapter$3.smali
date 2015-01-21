.class Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->showRemoveContactDialog(Lcom/zte/heartyservice/intercept/Tencent/Contact;)V
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
    .line 136
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$300(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/Contact;)Z

    .line 142
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mListdata:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->access$500(Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->notifyDataSetChanged()V

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 146
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget v0, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter$3;->val$contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;

    iget-object v1, v1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->showRestoreAllDialogByAddress(Ljava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method
