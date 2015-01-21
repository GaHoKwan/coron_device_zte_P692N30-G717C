.class Lcom/android/contacts/group/GroupDetailFragment$2$1;
.super Landroid/os/Handler;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupDetailFragment$2;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/group/GroupDetailFragment$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupDetailFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$2$1;->this$1:Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 375
    const-string v0, "GroupDetailFragment"

    const-string v1, "[handleMessage] to restart group memeber loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$2$1;->this$1:Lcom/android/contacts/group/GroupDetailFragment$2;

    iget-object v0, v0, Lcom/android/contacts/group/GroupDetailFragment$2;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment;->access$900(Lcom/android/contacts/group/GroupDetailFragment;)V

    .line 377
    return-void
.end method
