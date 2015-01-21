.class Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    .line 1007
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1008
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 1314
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1316
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2900(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1317
    .local v1, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1318
    .local v3, listPositionOffset:I
    if-nez v1, :cond_1

    .line 1319
    new-instance v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 1328
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1329
    iget v4, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1330
    iput-object p2, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1331
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1332
    iget-object v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1335
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    .line 1337
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1338
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1349
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$3002(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1350
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1351
    .local v2, info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$3000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1352
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$3012(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 1357
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1324
    .restart local v1       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1354
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$3102(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1356
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 52
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1013
    if-nez p3, :cond_1

    .line 1014
    const-string v3, "AgendaWindowAdapter"

    const-string v4, "onQueryComplete, cursor is null."

    invoke-static {v3, v4}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1016
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1305
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v26, p2

    .line 1021
    check-cast v26, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1029
    .local v26, data:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mCleanQueryInitiated:Z

    .line 1033
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1034
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1039
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v46

    .line 1040
    .local v46, tempCursorSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v50

    .line 1041
    .local v50, totalCount:I
    if-nez v46, :cond_12

    const/4 v3, 0x3

    move/from16 v0, v50

    if-ge v0, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mBlankView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$502(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    .line 1055
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$700(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1056
    new-instance v32, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;)V

    .line 1064
    .local v32, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->headerFooterOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget-object v4, v4, Lcom/android/calendar/agenda/AgendaWindowAdapter;->headerFooterOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$900(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$702(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    .line 1075
    .end local v32           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 1076
    .local v25, cursorSize:I
    if-gtz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_18

    .line 1077
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v38

    .line 1078
    .local v38, listPositionOffset:I
    const/16 v39, -0x1

    .line 1079
    .local v39, newPosition:I
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-nez v3, :cond_14

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1081
    if-eqz v38, :cond_7

    .line 1082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaListView;->shiftSelection(I)V

    .line 1115
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_9

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 1117
    move-object/from16 v0, v26

    iget-wide v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_9

    .line 1118
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findInstanceIdFromPosition(I)J
    invoke-static {v4, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J

    move-result-wide v4

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1302(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1124
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_c

    .line 1125
    const/16 v29, 0x0

    .line 1126
    .local v29, found:Z
    const/4 v3, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1127
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1128
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1130
    const/16 v29, 0x1

    .line 1135
    :cond_b
    if-nez v29, :cond_c

    .line 1136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const-wide/16 v4, -0x1

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1302(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1141
    .end local v29           #found:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mShowEventOnStart:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_e

    .line 1142
    const/16 v44, 0x0

    .line 1143
    .local v44, tempCursor:Landroid/database/Cursor;
    const/16 v45, -0x1

    .line 1146
    .local v45, tempCursorPosition:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/agenda/AgendaWindowAdapter;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 1147
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1148
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedInstanceId:J
    invoke-static {v3, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1302(Lcom/android/calendar/agenda/AgendaWindowAdapter;J)J

    .line 1154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    new-instance v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;-><init>()V

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1602(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 1155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mSelectedVH:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move-result-object v4

    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, v4, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->allDay:Z

    .line 1157
    move-object/from16 v44, p3

    .line 1163
    :cond_d
    :goto_4
    if-eqz v44, :cond_e

    .line 1164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->buildEventInfoFromCursor(Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    invoke-static {v3, v0, v1, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1900(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/database/Cursor;IZ)Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;

    move-result-object v27

    .line 1166
    .local v27, event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findStartTimeFromPosition(I)J
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2000(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)J

    move-result-wide v22

    .line 1167
    .local v22, selectedTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v8

    const-wide/16 v10, 0x2

    move-object/from16 v0, v27

    iget-wide v12, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v27

    iget-wide v14, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->begin:J

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->end:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;->allDay:Z

    invoke-static {v3, v4}, Lcom/android/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v20

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v23}, Lcom/android/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    .line 1177
    .end local v22           #selectedTime:J
    .end local v27           #event:Lcom/android/calendar/agenda/AgendaWindowAdapter$EventInfo;
    .end local v38           #listPositionOffset:I
    .end local v39           #newPosition:I
    .end local v44           #tempCursor:Landroid/database/Cursor;
    .end local v45           #tempCursorPosition:I
    :cond_e
    :goto_5
    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2100()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1178
    const/16 v49, -0x1

    .line 1179
    .local v49, totalAgendaRangeStart:I
    const/16 v48, -0x1

    .line 1181
    .local v48, totalAgendaRangeEnd:I
    if-eqz v25, :cond_1a

    .line 1183
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1187
    .local v51, x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v5, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static {v3, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2302(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    .line 1188
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_19

    .line 1189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2408(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    .line 1194
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v49, v0

    .line 1195
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v48, v0

    .line 1244
    .end local v51           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_10
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v49

    move/from16 v1, v48

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v3, v0, v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2600(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)V

    .line 1250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1252
    .local v34, info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    new-instance v47, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v47, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 1254
    .local v40, now:J
    move-object/from16 v0, v47

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1255
    move-object/from16 v0, v47

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v40

    invoke-static {v0, v1, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v24

    .line 1256
    .local v24, JulianToday:I
    if-eqz v34, :cond_1f

    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v0, v24

    if-lt v0, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v24

    if-gt v0, v3, :cond_1f

    .line 1258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .line 1259
    .local v36, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    const/16 v30, 0x0

    .line 1260
    .local v30, foundDay:Z
    :cond_11
    :goto_8
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    if-nez v30, :cond_1f

    .line 1261
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    .end local v34           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    check-cast v34, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1262
    .restart local v34       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    const/16 v33, 0x0

    .local v33, i:I
    :goto_9
    move-object/from16 v0, v34

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->size:I

    move/from16 v0, v33

    if-ge v0, v3, :cond_11

    .line 1263
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v3

    move/from16 v0, v24

    if-lt v3, v0, :cond_1e

    .line 1264
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/agenda/AgendaByDayAdapter;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/android/calendar/agenda/AgendaByDayAdapter;->setAsFirstDayAfterYesterday(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1265
    const/16 v30, 0x1

    .line 1266
    goto :goto_8

    .line 1045
    .end local v24           #JulianToday:I
    .end local v25           #cursorSize:I
    .end local v30           #foundDay:Z
    .end local v33           #i:I
    .end local v34           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v36           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .end local v40           #now:J
    .end local v47           #time:Landroid/text/format/Time;
    .end local v48           #totalAgendaRangeEnd:I
    .end local v49           #totalAgendaRangeStart:I
    :cond_12
    if-gtz v46, :cond_13

    const/4 v3, 0x3

    move/from16 v0, v50

    if-le v0, v3, :cond_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$500(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mBlankView:Landroid/widget/LinearLayout;
    invoke-static {v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$600(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    const/4 v4, 0x0

    #setter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mHasBlankView:Z
    invoke-static {v3, v4}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$502(Lcom/android/calendar/agenda/AgendaWindowAdapter;Z)Z

    goto/16 :goto_1

    .line 1085
    .restart local v25       #cursorSize:I
    .restart local v38       #listPositionOffset:I
    .restart local v39       #newPosition:I
    :cond_14
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 1086
    .local v31, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    move-object/from16 v0, v31

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->findEventPositionNearestTime(Landroid/text/format/Time;J)I
    invoke-static {v3, v0, v4, v5}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1100(Lcom/android/calendar/agenda/AgendaWindowAdapter;Landroid/text/format/Time;J)I

    move-result v39

    .line 1088
    if-ltz v39, :cond_7

    .line 1089
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    iget v3, v3, Lcom/android/calendar/agenda/AgendaWindowAdapter;->mListViewScrollState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1095
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/agenda/AgendaListView;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$400(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Lcom/android/calendar/agenda/AgendaListView;

    move-result-object v3

    add-int/lit8 v4, v39, 0x1

    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 1097
    const-string v3, "AgendaWindowAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real postion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int v5, v5, v39

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", top deviation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", goToTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", data.id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    iget-wide v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v7, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v7, actualTime:Landroid/text/format/Time;
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v3

    const-wide/16 v5, 0x400

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object v8, v7

    invoke-virtual/range {v3 .. v11}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    goto/16 :goto_2

    .line 1155
    .end local v7           #actualTime:Landroid/text/format/Time;
    .end local v31           #goToTime:Landroid/text/format/Time;
    .restart local v44       #tempCursor:Landroid/database/Cursor;
    .restart local v45       #tempCursorPosition:I
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1159
    :cond_17
    const/4 v3, -0x1

    move/from16 v0, v39

    if-eq v0, v3, :cond_d

    .line 1160
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorByPosition(I)Landroid/database/Cursor;
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)Landroid/database/Cursor;

    move-result-object v44

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move/from16 v0, v39

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->getCursorPositionByPosition(I)I
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1800(Lcom/android/calendar/agenda/AgendaWindowAdapter;I)I

    move-result v45

    goto/16 :goto_4

    .line 1175
    .end local v38           #listPositionOffset:I
    .end local v39           #newPosition:I
    .end local v44           #tempCursor:Landroid/database/Cursor;
    .end local v45           #tempCursorPosition:I
    :cond_18
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 1190
    .restart local v48       #totalAgendaRangeEnd:I
    .restart local v49       #totalAgendaRangeStart:I
    .restart local v51       #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_19
    :try_start_2
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    if-nez v3, :cond_f

    .line 1191
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2508(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    goto/16 :goto_6

    .line 1299
    .end local v51           #x:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1197
    :cond_1a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1200
    .local v43, querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1201
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1202
    .local v28, first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1000(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;

    .line 1204
    .local v37, last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, v28

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-gt v3, v5, :cond_1b

    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-ge v3, v5, :cond_1b

    .line 1205
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1208
    :cond_1b
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    add-int/lit8 v5, v5, 0x1

    if-gt v3, v5, :cond_1c

    move-object/from16 v0, v37

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move-object/from16 v0, v43

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    if-ge v3, v5, :cond_1c

    .line 1209
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move-object/from16 v0, v37

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1212
    :cond_1c
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v49, v0

    .line 1213
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v48, v0

    .line 1221
    .end local v28           #first:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v37           #last:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    :goto_a
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v3, :pswitch_data_0

    .line 1238
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2304(Lcom/android/calendar/agenda/AgendaWindowAdapter;)I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_10

    .line 1240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_7

    .line 1215
    :cond_1d
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v49, v0

    .line 1216
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v48, v0

    goto :goto_a

    .line 1223
    :pswitch_0
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v49, v0

    .line 1224
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x3c

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_b

    .line 1227
    :pswitch_1
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v48, v0

    .line 1228
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x3c

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_b

    .line 1231
    :pswitch_2
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v49, v0

    .line 1232
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v48, v0

    .line 1233
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/lit8 v3, v3, -0x1e

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    .line 1234
    move-object/from16 v0, v43

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    add-int/lit8 v3, v3, 0x1e

    move-object/from16 v0, v43

    iput v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    .line 1262
    .end local v43           #querySpec:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .restart local v24       #JulianToday:I
    .restart local v30       #foundDay:Z
    .restart local v33       #i:I
    .restart local v34       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v36       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    .restart local v40       #now:J
    .restart local v47       #time:Landroid/text/format/Time;
    :cond_1e
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_9

    .line 1271
    .end local v30           #foundDay:Z
    .end local v33           #i:I
    .end local v36           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;>;"
    :cond_1f
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1274
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .line 1275
    .local v35, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    :goto_c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1276
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;

    .line 1277
    .local v42, queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, v42

    iget v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->queryType:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v42

    iget v5, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->start:I

    move-object/from16 v0, v42

    iget v6, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->end:I

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->isInRange(II)Z
    invoke-static {v3, v5, v6}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2700(Lcom/android/calendar/agenda/AgendaWindowAdapter;II)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1281
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    move-object/from16 v0, v42

    #calls: Lcom/android/calendar/agenda/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V
    invoke-static {v3, v0}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2800(Lcom/android/calendar/agenda/AgendaWindowAdapter;Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;)V

    .line 1291
    .end local v42           #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    :cond_21
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/agenda/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v3}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$2200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    if-nez v3, :cond_22

    .line 1292
    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 1293
    invoke-static {}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$1200()[I

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v3, v5

    .line 1299
    :cond_22
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1271
    .end local v24           #JulianToday:I
    .end local v34           #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .end local v35           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .end local v40           #now:J
    .end local v47           #time:Landroid/text/format/Time;
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v3

    .line 1285
    .restart local v24       #JulianToday:I
    .restart local v34       #info:Lcom/android/calendar/agenda/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v35       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v40       #now:J
    .restart local v42       #queryData:Lcom/android/calendar/agenda/AgendaWindowAdapter$QuerySpec;
    .restart local v47       #time:Landroid/text/format/Time;
    :cond_23
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_c

    .line 1221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
