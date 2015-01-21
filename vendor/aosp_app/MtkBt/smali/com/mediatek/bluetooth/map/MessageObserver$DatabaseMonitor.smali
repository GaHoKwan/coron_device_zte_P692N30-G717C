.class public Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;
.super Ljava/lang/Thread;
.source "MessageObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MessageObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseMonitor"
.end annotation


# static fields
.field public static final MONITER_TYPE_ONLY_QUERY:I = 0x0

.field public static final MONITER_TYPE_QUERY_AND_NOTIFY:I = 0x1


# instance fields
.field private mQueryType:I

.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MessageObserver;


# direct methods
.method public constructor <init>(Lcom/mediatek/bluetooth/map/MessageObserver;I)V
    .locals 1
    .parameter
    .parameter "type"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->mQueryType:I

    .line 95
    iput p2, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->mQueryType:I

    .line 96
    return-void
.end method

.method private query()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v1, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v2, v2, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-interface {v0, v2}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->queryMessage(Ljava/util/HashMap;)V

    .line 112
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: size->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v3, v3, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/bluetooth/map/MessageObserver;->log(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$000(Lcom/mediatek/bluetooth/map/MessageObserver;Ljava/lang/String;)V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private queryAndNotify()V
    .locals 12

    .prologue
    .line 116
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v6, currentMessage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v11, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->queryMessage(Ljava/util/HashMap;)V

    .line 127
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database has been changed, mType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I
    invoke-static {v2}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " previous size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v2, v2, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/MessageObserver;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$000(Lcom/mediatek/bluetooth/map/MessageObserver;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 135
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 136
    .local v9, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 138
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 141
    .local v10, key:Ljava/lang/Long;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v1

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->revertMailboxType(I)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, folder:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v8, :cond_1

    const-string v0, "inbox"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/bluetooth/map/ControllerListener;->onNewMessage(JI)V

    goto :goto_1

    .line 177
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v8           #folder:Ljava/lang/String;
    .end local v9           #iterator:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/Long;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 150
    .restart local v9       #iterator:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 152
    .restart local v7       #entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 154
    .restart local v10       #key:Ljava/lang/Long;
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iget-object v0, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->revertMailboxType(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, oldFolder:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageDeleted(JILjava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v4           #oldFolder:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->revertMailboxType(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    .restart local v4       #oldFolder:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mHelper:Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$100(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;

    move-result-object v1

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;->revertMailboxType(I)Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, newFolder:Ljava/lang/String;
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 168
    const-string v0, "deleted"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageDeleted(JILjava/lang/String;)V

    goto/16 :goto_2

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$200(Lcom/mediatek/bluetooth/map/MessageObserver;)Lcom/mediatek/bluetooth/map/ControllerListener;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    #getter for: Lcom/mediatek/bluetooth/map/MessageObserver;->mType:I
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$300(Lcom/mediatek/bluetooth/map/MessageObserver;)I

    move-result v3

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/bluetooth/map/ControllerListener;->onMessageShifted(JILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 176
    .end local v4           #oldFolder:Ljava/lang/String;
    .end local v5           #newFolder:Ljava/lang/String;
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v10           #key:Ljava/lang/Long;
    :cond_6
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    iput-object v6, v0, Lcom/mediatek/bluetooth/map/MessageObserver;->previousMessage:Ljava/util/HashMap;

    .line 177
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->mQueryType:I

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->query()V

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->mQueryType:I

    if-ne v0, v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->queryAndNotify()V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->this$0:Lcom/mediatek/bluetooth/map/MessageObserver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid motinor type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/bluetooth/map/MessageObserver$DatabaseMonitor;->mQueryType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/bluetooth/map/MessageObserver;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/bluetooth/map/MessageObserver;->access$000(Lcom/mediatek/bluetooth/map/MessageObserver;Ljava/lang/String;)V

    goto :goto_0
.end method
