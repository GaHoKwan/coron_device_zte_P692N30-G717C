.class Lcom/android/mms/data/Contact$3;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact;->getGroupAvatar(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$lock:Ljava/lang/Object;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact;Landroid/content/Context;JLjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/mms/data/Contact$3;->this$0:Lcom/android/mms/data/Contact;

    iput-object p2, p0, Lcom/android/mms/data/Contact$3;->val$context:Landroid/content/Context;

    iput-wide p3, p0, Lcom/android/mms/data/Contact$3;->val$threadId:J

    iput-object p5, p0, Lcom/android/mms/data/Contact$3;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/mms/data/Contact$3;->this$0:Lcom/android/mms/data/Contact;

    iget-object v1, p0, Lcom/android/mms/data/Contact$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/data/Contact$3;->val$threadId:J

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/mms/ipmessage/ContactManager;->getAvatarByThreadId(J)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mIpMessageAvatarBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1670
    iget-object v1, p0, Lcom/android/mms/data/Contact$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1671
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1672
    monitor-exit v1

    .line 1673
    return-void

    .line 1672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
