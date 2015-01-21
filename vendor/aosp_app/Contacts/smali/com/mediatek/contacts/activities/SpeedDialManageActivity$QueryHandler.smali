.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SpeedDialManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mediatek/contacts/activities/SpeedDialManageActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    .line 1014
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1016
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1018
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x9

    .line 1022
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete(), cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    instance-of v1, p2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;

    if-eqz v1, :cond_1

    .line 1028
    check-cast p2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;

    .end local p2
    iget v0, p2, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryInfo;->mQueryIndex:I

    .line 1029
    .local v0, index:I
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete(), index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mQueryTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1031
    if-eqz p3, :cond_0

    .line 1032
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1073
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 1038
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v1

    if-gt v1, v5, :cond_4

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 1039
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorRow(ILandroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$600(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;ILandroid/database/Cursor;)V

    .line 1040
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$000(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 1056
    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    .line 1057
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1059
    :cond_3
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$504(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    .line 1060
    const-string v1, "SpeedDialManageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mQueryTimes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v1

    if-gt v1, v5, :cond_6

    .line 1062
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->goOnQuery()V
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$800(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    goto :goto_0

    .line 1041
    :cond_4
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v1

    if-gt v1, v5, :cond_2

    .line 1042
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "goOnQuery2(), query, get nothing after query "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getSpeedDialExtension()Lcom/android/contacts/ext/SpeedDialExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP01"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/SpeedDialExtension;->clearPrefStateIfNecessary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1045
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$700(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/database/MatrixCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;II)V

    .line 1049
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "onQueryComplete() skip clearPrefStateIfNecessary()!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :goto_2
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mPrefNumContactState:[Z
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$000(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)[Z

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v2

    aput-boolean v6, v1, v2

    goto/16 :goto_1

    .line 1051
    :cond_5
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    iget-object v3, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;
    invoke-static {v3}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$700(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/database/MatrixCursor;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mQueryTimes:I
    invoke-static {v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$500(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->populateMatrixCursorEmpty(Landroid/content/Context;Landroid/database/MatrixCursor;I)V

    goto :goto_2

    .line 1064
    :cond_6
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$900(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1065
    const-string v1, "SpeedDialManageActivity"

    const-string v2, "onQueryComplete(), query stop in onQueryComplete, before updatePreferences"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {v6}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1002(Z)Z

    .line 1068
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->dismissProgressIndication()V
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1100(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    .line 1069
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->updatePreferences()V
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1200(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    .line 1070
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #calls: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->showToastIfNecessary()V
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1300(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V

    .line 1071
    iget-object v1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mAdapter:Landroid/widget/SimpleCursorAdapter;
    invoke-static {v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$1400(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$QueryHandler;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    #getter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mMatrixCursor:Landroid/database/MatrixCursor;
    invoke-static {v2}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$700(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method
