.class Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;
.super Ljava/lang/Object;
.source "ContactsMultiDeletionFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteRequestConnection"
.end annotation


# instance fields
.field private mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

.field final synthetic this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->this$0:Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;-><init>(Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 150
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    check-cast p2, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;->getService()Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    .line 152
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 156
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "Disconnected from MultiChoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public sendDeleteRequest(Ljava/util/List;)Z
    .locals 3
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
    .line 139
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "Send an delete request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "mService is not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    new-instance v1, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    iget-object v2, p0, Lcom/mediatek/contacts/list/ContactsMultiDeletionFragment$DeleteRequestConnection;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-direct {v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;-><init>(Landroid/app/Service;)V

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleDeleteRequest(Ljava/util/List;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;)V

    .line 145
    const/4 v0, 0x1

    goto :goto_0
.end method
