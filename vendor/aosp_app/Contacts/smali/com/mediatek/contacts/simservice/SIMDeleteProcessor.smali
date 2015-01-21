.class public Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;
.super Lcom/mediatek/contacts/simservice/SIMProcessorBase;
.source "SIMDeleteProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;
    }
.end annotation


# static fields
.field public static final LOCAL_CONTACT_URI:Ljava/lang/String; = "local_contact_uri"

.field public static final SIM_WHERE:Ljava/lang/String; = "mSimWhere"

.field private static final TAG:Ljava/lang/String; = "SIMDeleteProcessor"

.field private static mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mLocalContactUri:Landroid/net/Uri;

.field private mSimUri:Landroid/net/Uri;

.field private mSimWhere:Ljava/lang/String;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V
    .locals 1
    .parameter "context"
    .parameter "slotId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p3, p4}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;-><init>(Landroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .line 20
    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimUri:Landroid/net/Uri;

    .line 21
    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mLocalContactUri:Landroid/net/Uri;

    .line 22
    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimWhere:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSlotId:I

    .line 50
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mContext:Landroid/content/Context;

    .line 51
    iput p2, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSlotId:I

    .line 52
    iput-object p3, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mIntent:Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public static registerListener(Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 36
    instance-of v0, p0, Lcom/android/contacts/interactions/ContactDeletionInteraction;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "SIMDeleteProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[registerListener]listener added to SIMDeleteProcessor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sput-object p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    .line 40
    :cond_0
    return-void
.end method

.method public static unregisterListener(Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 43
    const-string v0, "SIMDeleteProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregisterListener]listener removed from SIMDeleteProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    .line 45
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "SIMDeleteProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dowork]cancel remove work. Thread id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimUri:Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mIntent:Landroid/content/Intent;

    const-string v1, "mSimWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimWhere:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mIntent:Landroid/content/Intent;

    const-string v1, "local_contact_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mLocalContactUri:Landroid/net/Uri;

    .line 69
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mSimWhere:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 70
    const-string v0, "SIMDeleteProcessor"

    const-string v1, "[doWork] Delete SIM contact failed"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    invoke-interface {v0}, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;->onSIMDeleteFailed()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mLocalContactUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/contacts/ContactSaveService;->createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 76
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;

    invoke-interface {v0}, Lcom/mediatek/contacts/simservice/SIMDeleteProcessor$Listener;->onSIMDeleteCompleted()V

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x4

    return v0
.end method
