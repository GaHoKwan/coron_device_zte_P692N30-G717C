.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 378
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 379
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    if-eqz v0, :cond_0

    .line 380
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v4

    iget-object v5, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getContactIdByNum(Ljava/lang/String;)I

    move-result v1

    .line 382
    .local v1, contactId:I
    if-gez v1, :cond_1

    .line 390
    .end local v1           #contactId:I
    :cond_0
    :goto_0
    return-void

    .line 385
    .restart local v1       #contactId:I
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 386
    .local v2, contactUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "finishActivityOnUpSelected"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-virtual {v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
