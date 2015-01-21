.class Lcom/android/mms/ui/ManageSimMessages$7$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$7;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    .line 1128
    .local v6, count:I
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSimMsgItemList()Ljava/util/Map;

    move-result-object v13

    .line 1129
    .local v13, simMsgList:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v12, selectedSimIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, position:I
    :goto_0
    if-ge v11, v6, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 1132
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->getMsgIndexByCursor(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/mms/ui/ManageSimMessages;->access$1500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    .line 1133
    .local v9, msgIndex:Ljava/lang/String;
    const-string v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1134
    .local v8, index:[Ljava/lang/String;
    aget-object v0, v8, v1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v0, v8, v1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    const/4 v10, 0x0

    .local v10, n:I
    :goto_1
    array-length v0, v8

    if-ge v10, v0, :cond_0

    .line 1136
    aget-object v0, v8, v10

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1138
    :cond_0
    sget-object v2, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    monitor-enter v2

    .line 1139
    :try_start_0
    sget-object v0, Lcom/android/mms/ui/ManageSimMessages;->sDeletedMessageSet:Ljava/util/HashSet;

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1141
    monitor-exit v2

    .line 1130
    .end local v10           #n:I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1141
    .restart local v10       #n:I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1144
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #index:[Ljava/lang/String;
    .end local v9           #msgIndex:Ljava/lang/String;
    .end local v10           #n:I
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 1146
    .local v5, argsSimMsg:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMmsManageSimMessagePlugin:Lcom/mediatek/mms/ext/IMmsManageSimMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1600(Lcom/android/mms/ui/ManageSimMessages;)Lcom/mediatek/mms/ext/IMmsManageSimMessage;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/mediatek/mms/ext/IMmsManageSimMessage;->filterUnoperatedMsgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1150
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/ManageSimMessages;->access$900()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "ForMultiDelete"

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    iput-boolean v14, v0, Lcom/android/mms/ui/ManageSimMessages;->isDeleting:Z

    .line 1154
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$7$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$7;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSimMessages$7;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #setter for: Lcom/android/mms/ui/ManageSimMessages;->mHaveDeleted:Z
    invoke-static {v0, v14}, Lcom/android/mms/ui/ManageSimMessages;->access$002(Lcom/android/mms/ui/ManageSimMessages;Z)Z

    .line 1156
    return-void
.end method
