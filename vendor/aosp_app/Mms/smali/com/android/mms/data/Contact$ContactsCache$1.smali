.class Lcom/android/mms/data/Contact$ContactsCache$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache;

.field final synthetic val$c:Lcom/android/mms/data/Contact;

.field final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iput-object p2, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    iput-object p3, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    #calls: Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->access$1000(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V

    .line 711
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$obj:Ljava/lang/Object;

    monitor-enter v1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 713
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$1;->val$c:Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Z)Z

    .line 716
    return-void

    .line 713
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
