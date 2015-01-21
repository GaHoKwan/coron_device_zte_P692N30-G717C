.class Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;
.super Landroid/os/Handler;
.source "CallEventMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "message"

    .prologue
    .line 84
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 86
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    new-instance v11, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v12, v12, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;-><init>(Landroid/content/Context;)V

    iput-object v11, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    .line 87
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v10}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->open()V

    .line 89
    const-string v10, "CallEventMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " number =====xx======="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-class v10, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    invoke-static {v10}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/numbermarker/NumMarkerManager;

    .line 91
    .local v4, mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->getInfoOfNum(Ljava/lang/String;)Ltmsdk/bg/tcc/NumMarker$NumMark;

    move-result-object v11

    iput-object v11, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->info:Ltmsdk/bg/tcc/NumMarker$NumMark;

    .line 92
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    const/4 v11, 0x0

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    sget-boolean v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isUseZDWS:Z

    if-nez v10, :cond_4

    .line 97
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->info:Ltmsdk/bg/tcc/NumMarker$NumMark;

    if-nez v10, :cond_3

    .line 98
    const-string v10, "CallEventMonitor"

    const-string v11, " fetch data from local "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->fetchData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 100
    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 101
    .local v6, miCount:I
    const-string v10, "CallEventMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " miCount =============="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-lez v6, :cond_0

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 108
    const-string v10, "num"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 109
    .local v7, nameColumn:I
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 110
    .local v9, type:I
    const-string v10, "CallEventMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " type =========="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v4}, Ltmsdk/common/module/numbermarker/NumMarkerManager;->getTagNameMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 112
    .local v3, mMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 113
    .local v5, mValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v11, v11, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0620

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .end local v3           #mMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5           #mValue:Ljava/lang/String;
    .end local v7           #nameColumn:I
    .end local v9           #type:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v6           #miCount:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->ignoreNumber:[Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$200(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, ignoreNumberList:Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 136
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    const/4 v11, 0x0

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v12}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getNumLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$302(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mLocation:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$300(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 143
    :cond_2
    const-string v10, "CallEventMonitor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " \tisMonitorEnable() ====="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$100(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->isMonitorEnable()Z

    move-result v10

    if-nez v10, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #calls: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hideReal()V
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$400(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    .line 152
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v10}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    goto/16 :goto_0

    .line 120
    .end local v2           #ignoreNumberList:Ljava/util/List;
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v11, v11, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a061f

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v15, v15, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->info:Ltmsdk/bg/tcc/NumMarker$NumMark;

    iget v15, v15, Ltmsdk/bg/tcc/NumMarker$NumMark;->count:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v15, v15, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->info:Ltmsdk/bg/tcc/NumMarker$NumMark;

    iget-object v15, v15, Ltmsdk/bg/tcc/NumMarker$NumMark;->tagName:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 124
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #getter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mNumber:Ljava/lang/String;
    invoke-static {v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$000(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sdk/util/SignUtil;->searchSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 125
    .local v8, sign:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 126
    const-string v10, ""

    const-string v11, "yy"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v11, v11, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0621

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    #setter for: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->mMark:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$102(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 128
    :cond_5
    const-string v10, ""

    const-string v11, "is marked"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 150
    .end local v8           #sign:Ljava/lang/String;
    .restart local v2       #ignoreNumberList:Ljava/util/List;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #calls: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->showReal()V
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$500(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    goto/16 :goto_2

    .line 156
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #calls: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hideReal()V
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$400(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    iget-object v10, v10, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->m_MarkLocalDataBaseAdapter_1:Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;

    invoke-virtual {v10}, Lcom/zte/heartyservice/intercept/Common/MarkDataBaseAdapter;->close()V

    goto/16 :goto_0

    .line 160
    .end local v2           #ignoreNumberList:Ljava/util/List;
    .end local v4           #mNumMarkerManager:Ltmsdk/common/module/numbermarker/NumMarkerManager;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor$1;->this$0:Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;

    #calls: Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->hideReal()V
    invoke-static {v10}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->access$400(Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;)V

    goto/16 :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
