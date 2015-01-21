.class Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallLogContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/dialpad/DialpadFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 2470
    iput-object p1, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    .line 2471
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2472
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call log observer onChange length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/dialpad/DialpadFragment;->access$600(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/dialpad/DialpadFragment;->log(Ljava/lang/String;)V

    .line 2477
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mIsForeground:Z
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$800(Lcom/android/contacts/dialpad/DialpadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2478
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #getter for: Lcom/android/contacts/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$600(Lcom/android/contacts/dialpad/DialpadFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    iget-object v0, p0, Lcom/android/contacts/dialpad/DialpadFragment$CallLogContentObserver;->this$0:Lcom/android/contacts/dialpad/DialpadFragment;

    #calls: Lcom/android/contacts/dialpad/DialpadFragment;->queryLastOutgoingCall()V
    invoke-static {v0}, Lcom/android/contacts/dialpad/DialpadFragment;->access$900(Lcom/android/contacts/dialpad/DialpadFragment;)V

    .line 2482
    :cond_0
    return-void
.end method
