.class Lcom/powermo/smartshow/frameworks/ae;
.super Landroid/os/Handler;


# static fields
.field public static final CLEAR_CLIP:I = 0xa

.field public static final CONFLICT_COVERED_SCREEN:I = 0x3

.field public static final CONFLICT_COVER_SCREEN:I = 0x2

.field public static final EXIT_MULTI_WINDOW:I = 0x6

.field public static final UNCOVER_CONFLICT_SCREEN:I = 0x4

.field public static final UPDATE_CONFLICT_COVER_SCREEN:I = 0x5

.field public static final UPDATE_FOCUS_HINT:I = 0x9

.field public static final UPDATE_SCREEN_THUMBNAIL:I = 0x8

.field public static final UPDATE_STATUS:I = 0x1

.field public static final UPDATE_STATUS_RMT:I = 0x7


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/ad;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/frameworks/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->f()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->e()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->g()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/l;->n(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/powermo/smartshow/frameworks/l;->a(IIZ)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    :goto_1
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v2}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/a;->i()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v2}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v2, v1}, Lcom/powermo/smartshow/frameworks/l;->m(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3}, Lcom/powermo/smartshow/frameworks/l;->e(II)V

    goto :goto_0

    :pswitch_7
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->b(Lcom/powermo/smartshow/frameworks/ad;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x5

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget v0, v0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->c(Lcom/powermo/smartshow/frameworks/ad;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "SmartShowMultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit multiwindow timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget v2, v2, Lcom/powermo/smartshow/frameworks/ad;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v2}, Lcom/powermo/smartshow/frameworks/ad;->c(Lcom/powermo/smartshow/frameworks/ad;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->c(Lcom/powermo/smartshow/frameworks/ad;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iput v4, v0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iput-boolean v1, v0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iget v2, v2, Lcom/powermo/smartshow/frameworks/ad;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ad;->a(ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iput v4, v0, Lcom/powermo/smartshow/frameworks/ad;->g:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    iput v4, v0, Lcom/powermo/smartshow/frameworks/ad;->e:I

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ae;->a:Lcom/powermo/smartshow/frameworks/ad;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ah;->a(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method
