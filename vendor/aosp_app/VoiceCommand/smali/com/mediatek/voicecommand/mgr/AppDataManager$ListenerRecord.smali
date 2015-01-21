.class Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
.super Ljava/lang/Object;
.source "AppDataManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/mgr/AppDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListenerRecord"
.end annotation


# instance fields
.field mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/voicecommand/IVoiceCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field mPackageName:Ljava/lang/String;

.field mPid:I

.field mUid:I

.field final synthetic this$0:Lcom/mediatek/voicecommand/mgr/AppDataManager;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/mgr/AppDataManager;)V
    .locals 1
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->this$0:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z
    .locals 4
    .parameter "listener"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 370
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 372
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 373
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 374
    const/4 v2, 0x0

    .line 378
    :goto_1
    return v2

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_1
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->this$0:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    iget-object v1, v0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    monitor-enter v1

    .line 354
    :try_start_0
    const-string v0, "VCmdMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has died "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 356
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->this$0:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    #calls: Lcom/mediatek/voicecommand/mgr/AppDataManager;->unRegisterListenerLocked(Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V
    invoke-static {v0, p0}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->access$000(Lcom/mediatek/voicecommand/mgr/AppDataManager;Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z
    .locals 5
    .parameter "listener"

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, isDeleted:Z
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 391
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 393
    const/4 v1, 0x1

    .line 394
    add-int/lit8 v2, v2, -0x1

    .line 395
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    if-eqz v1, :cond_2

    .line 399
    invoke-interface {p1}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 400
    if-lez v2, :cond_3

    .line 401
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mListenerList:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    iput-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 406
    :cond_2
    :goto_1
    return v1

    .line 403
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    goto :goto_1
.end method
