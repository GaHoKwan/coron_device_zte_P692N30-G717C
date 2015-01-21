.class Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;
.super Ljava/lang/Object;
.source "MultiContactsDuplicationFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

.field final synthetic this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;-><init>(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 297
    const-string v0, "CopyMultiContacts"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    check-cast p2, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;->getService()Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    .line 299
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 303
    const-string v0, "CopyMultiContacts"

    const-string v1, "Disconnected from MultiChoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void
.end method

.method public sendCopyRequest(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    const-string v0, "CopyMultiContacts"

    const-string v1, "Send an copy request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    if-nez v0, :cond_0

    .line 288
    const-string v0, "CopyMultiContacts"

    const-string v1, "mService is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    new-instance v1, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;-><init>(Landroid/app/Service;)V

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountSrc:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$000(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment$CopyRequestConnection;->this$0:Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;

    #getter for: Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->mAccountDst:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;->access$100(Lcom/mediatek/contacts/list/MultiContactsDuplicationFragment;)Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleCopyRequest(Ljava/util/List;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Landroid/accounts/Account;Landroid/accounts/Account;)V

    .line 292
    const/4 v0, 0x1

    goto :goto_0
.end method
