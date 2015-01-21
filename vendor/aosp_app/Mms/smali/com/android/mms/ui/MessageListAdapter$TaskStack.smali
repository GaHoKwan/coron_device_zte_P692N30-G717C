.class Lcom/android/mms/ui/MessageListAdapter$TaskStack;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mThreadOver:Z

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThreadOver:Z

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    .line 1105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageListAdapter$TaskStack$1;-><init>(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1128
    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessageListAdapter$TaskStack;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1139
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThreadOver:Z

    .line 1140
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1141
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1142
    monitor-exit v1

    .line 1143
    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1134
    monitor-exit v1

    .line 1135
    return-void

    .line 1134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
