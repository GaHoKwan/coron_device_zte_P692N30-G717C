.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$6;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 427
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$6;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$6;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->notifyDataSetChanged()V

    .line 431
    return-void
.end method
