.class Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractPricacyForefatherListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYSPACE_BROADCAST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->finish()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->EXIT_PRICACYIMAGEVIDEOFILE_BROADCAST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;

    #getter for: Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->needCheckSD:Z
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->access$000(Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const v0, 0x7f0a0313

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity$1;->this$0:Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AbstractPricacyForefatherListActivity;->finish()V

    goto :goto_0
.end method
