.class Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1$1;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1$1;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->loadDataList()V
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    .line 98
    return-void
.end method
