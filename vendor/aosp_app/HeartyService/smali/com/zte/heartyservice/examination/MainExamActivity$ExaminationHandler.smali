.class Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;
.super Landroid/os/Handler;
.source "MainExamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/MainExamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExaminationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/examination/MainExamActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;-><init>(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 349
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->what:I

    packed-switch v15, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 757
    return-void

    .line 352
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->to_optimize_list:Ljava/util/List;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$400(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->ok_list:Ljava/util/List;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$500(Lcom/zte/heartyservice/examination/MainExamActivity;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->adapter:Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$600(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/zte/heartyservice/common/datatype/MultiSubListAdapter;->clearSuject()V

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x64

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mark:I
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$702(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x0

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$802(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mExaminationTask:Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$900(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;

    move-result-object v15

    sget-object v16, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 358
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a024f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 363
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0251

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 368
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 369
    .local v12, status:Z
    const/4 v15, 0x1

    if-ne v12, v15, :cond_1

    .line 370
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0252

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 372
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0253

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 379
    .end local v12           #status:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0254

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 384
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 385
    .restart local v12       #status:Z
    const/4 v15, 0x1

    if-ne v12, v15, :cond_2

    .line 386
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0255

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 388
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0256

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 395
    .end local v12           #status:Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0415

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 400
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 401
    .restart local v12       #status:Z
    const/4 v15, 0x1

    if-ne v12, v15, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0416

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 404
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0417

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 411
    .end local v12           #status:Z
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0418

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 416
    .restart local v12       #status:Z
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0419

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 419
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a041a

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->RETRIEVE:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x3

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 426
    .end local v12           #status:Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0616

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 430
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 431
    .local v13, time:J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-lez v15, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0614

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy-MM-dd HH:mm"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/sql/Date;

    move-object/from16 v0, v21

    invoke-direct {v0, v13, v14}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 438
    :cond_5
    const-wide/16 v15, -0x1

    cmp-long v15, v13, v15

    if-nez v15, :cond_6

    .line 439
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0618

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 442
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0615

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->BACKUP:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x3

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1302(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    .line 445
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mBackupDecrease:I
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1300(Lcom/zte/heartyservice/examination/MainExamActivity;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 450
    .end local v13           #time:J
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0257

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 455
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 456
    .restart local v12       #status:Z
    const/4 v15, 0x1

    if-ne v12, v15, :cond_7

    .line 457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0258

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 459
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0259

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 478
    .end local v12           #status:Z
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a025e

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 480
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1400(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    invoke-interface {v15}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 482
    :catch_0
    move-exception v7

    .line 483
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 489
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_f
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getExaminationOptimizableResult()Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;

    move-result-object v10

    .line 490
    .local v10, local:Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    iget v15, v10, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->exist_cache_app_num:I

    if-nez v15, :cond_8

    .line 491
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a025f

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 493
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0260

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/zte/heartyservice/examination/MainExamActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    iget-wide v0, v10, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->appcache:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 503
    .end local v10           #local:Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a025e

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 505
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1400(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->registerCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    invoke-interface {v15}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAppData()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 507
    :catch_1
    move-exception v7

    .line 508
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 514
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_11
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableInternalMemorySize()J

    move-result-wide v3

    .line 515
    .local v3, available:J
    const-wide/16 v15, 0x64

    mul-long/2addr v15, v3

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalInternalMemorySize()J

    move-result-wide v17

    div-long v5, v15, v17

    .line 516
    .local v5, availablePercent:J
    const-wide/32 v15, 0x6400000

    cmp-long v15, v3, v15

    if-gez v15, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0276

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->NOSTORAGE:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 519
    :cond_9
    const-string v15, "MainExamActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "liuji debug available = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-wide/32 v15, 0x3200000

    cmp-long v15, v3, v15

    if-gez v15, :cond_a

    const-wide/32 v15, 0xa00000

    cmp-long v15, v3, v15

    if-ltz v15, :cond_a

    .line 521
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x1

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1602(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 522
    :cond_a
    const-wide/32 v15, 0xa00000

    cmp-long v15, v3, v15

    if-gez v15, :cond_b

    const-wide/32 v15, 0x500000

    cmp-long v15, v3, v15

    if-ltz v15, :cond_b

    .line 523
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x2

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1602(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 524
    :cond_b
    const-wide/32 v15, 0x500000

    cmp-long v15, v3, v15

    if-gez v15, :cond_0

    .line 525
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->subtractStar:I
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1602(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 532
    .end local v3           #available:J
    .end local v5           #availablePercent:J
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0262

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 534
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    invoke-interface {v15}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listAutoRunApp()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 535
    :catch_2
    move-exception v7

    .line 536
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 542
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_13
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getExaminationOptimizableResult()Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;

    move-result-object v10

    .line 543
    .restart local v10       #local:Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    iget v15, v10, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->auto_run_app_num:I

    if-nez v15, :cond_c

    .line 544
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0263

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 546
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0264

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v10, Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;->auto_run_app_num:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 554
    .end local v10           #local:Lcom/zte/heartyservice/common/datatype/ExaminationOptimizableResult;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0265

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 556
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    invoke-interface {v15}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->listRunningProcess()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 557
    :catch_3
    move-exception v7

    .line 558
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 564
    .end local v7           #e:Landroid/os/RemoteException;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1700(Lcom/zte/heartyservice/examination/MainExamActivity;)I

    move-result v15

    if-nez v15, :cond_d

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0266

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1700(Lcom/zte/heartyservice/examination/MainExamActivity;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 570
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 572
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1500(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mISpeedUpCallBack:Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1400(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/zte/heartyservice/speedup/ISpeedUpService;->unregisterCallBack(Lcom/zte/heartyservice/speedup/ISpeedUpCallBack;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 573
    :catch_4
    move-exception v7

    .line 574
    .restart local v7       #e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 567
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0266

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->can_close:I
    invoke-static/range {v20 .. v20}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1700(Lcom/zte/heartyservice/examination/MainExamActivity;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto :goto_1

    .line 581
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0267

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 591
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0269

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 601
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 604
    .local v11, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1800(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    iget-object v0, v11, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x80

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 605
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a0268

    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1800(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v19, v20

    invoke-virtual/range {v17 .. v19}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const-string v16, "chenlu"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1800(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 608
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_5
    move-exception v7

    .line 609
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 616
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a026d

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 621
    :pswitch_1a
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    .line 622
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDetectedNotSecurityAppList()Ljava/util/List;

    move-result-object v9

    .line 623
    .local v9, list_all:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_e

    .line 624
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0269

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 626
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a026c

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log22OptimizeList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1200(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x1e

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$720(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 633
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    .end local v9           #list_all:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a026f

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 638
    :pswitch_1c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    .line 639
    .local v11, result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    iget v15, v11, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionAppNum:I

    if-nez v15, :cond_f

    .line 640
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0270

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->NOSENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 651
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0271

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget v0, v11, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionAppNum:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2OkList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V
    invoke-static/range {v15 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;)V

    goto/16 :goto_0

    .line 659
    .end local v11           #result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0273

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 660
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->exameState:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1900(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->endAnimation()V
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2000(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->showStar()V

    .line 663
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x1

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examinationCompleted:Z
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$802(Lcom/zte/heartyservice/examination/MainExamActivity;Z)Z

    goto/16 :goto_0

    .line 668
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0250

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 673
    :pswitch_1f
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0252

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->NETTRAFFIC:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 681
    :pswitch_20
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0255

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->POWERPROTECTED:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 689
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0416

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTOUPDATE:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 697
    :pswitch_22
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 698
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0258

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->PERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 705
    :pswitch_23
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0261

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->GABAGECLEAR:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 713
    :pswitch_24
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0263

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->AUTORUNNING:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 721
    :pswitch_25
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 722
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a0266

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->RUNNINGAPP:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x5

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 729
    :pswitch_26
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a026e

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/examination/MainExamActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->VIRRUS:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x1e

    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$712(Lcom/zte/heartyservice/examination/MainExamActivity;I)I

    goto/16 :goto_0

    .line 737
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    const/16 v16, 0x0

    #setter for: Lcom/zte/heartyservice/examination/MainExamActivity;->mClearTask:Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;
    invoke-static/range {v15 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2202(Lcom/zte/heartyservice/examination/MainExamActivity;Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;)Lcom/zte/heartyservice/examination/MainExamActivity$ClearTask;

    .line 738
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->examItemTxt:Landroid/widget/TextView;
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$1000(Lcom/zte/heartyservice/examination/MainExamActivity;)Landroid/widget/TextView;

    move-result-object v15

    const v16, 0x7f0a0274

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->endAnimation()V
    invoke-static {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2000(Lcom/zte/heartyservice/examination/MainExamActivity;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/MainExamActivity;->showStar()V

    goto/16 :goto_0

    .line 746
    :pswitch_28
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/zte/heartyservice/examination/ExamListItem;

    invoke-virtual {v15}, Lcom/zte/heartyservice/examination/ExamListItem;->getStateType()Lcom/zte/heartyservice/common/datatype/StateType;

    move-result-object v15

    sget-object v16, Lcom/zte/heartyservice/common/datatype/StateType;->SELECT:Lcom/zte/heartyservice/common/datatype/StateType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 747
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/examination/MainExamActivity$ExaminationHandler;->this$0:Lcom/zte/heartyservice/examination/MainExamActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/zte/heartyservice/examination/MainExamActivity;->tmp_permission_item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    invoke-static/range {v16 .. v16}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2300(Lcom/zte/heartyservice/examination/MainExamActivity;)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/zte/heartyservice/common/datatype/CommonListItem;->getRefName()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/zte/heartyservice/examination/ExamType;->SENSITIVEPERMISSION:Lcom/zte/heartyservice/examination/ExamType;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    #calls: Lcom/zte/heartyservice/examination/MainExamActivity;->log2ClearList(Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V
    invoke-static/range {v15 .. v18}, Lcom/zte/heartyservice/examination/MainExamActivity;->access$2100(Lcom/zte/heartyservice/examination/MainExamActivity;Ljava/lang/String;Lcom/zte/heartyservice/examination/ExamType;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_27
        :pswitch_1f
        :pswitch_20
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_28
        :pswitch_10
        :pswitch_11
        :pswitch_6
        :pswitch_7
        :pswitch_21
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
