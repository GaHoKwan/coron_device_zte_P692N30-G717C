.class public Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
.super Ltmsdk/common/module/aresengine/CallLogEntity;
.source "CallLogx.java"


# static fields
.field public static final CALL_LOG_NORMAL:I = 0x0

.field public static final CALL_LOG_PRIVATE:I = 0x1

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_DURATION:Ljava/lang/String; = "duration"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_NEW:Ljava/lang/String; = "tagnew"

.field public static final COLUMN_NUMBER:Ljava/lang/String; = "number"

.field public static final COLUMN_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final COLUMN_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final COLUMN_PRIVATE_FLAG:Ljava/lang/String; = "privateflag"

.field public static final COLUMN_READ_EXTEND:Ljava/lang/String; = "read_extend"

.field public static final COLUMN_SUBSCRIPTION:Ljava/lang/String; = null

.field public static final COLUMN_SYS_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_SYS_NEW:Ljava/lang/String; = "new"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public hideDetail:Z

.field public numberlabel:Ljava/lang/String;

.field public numbertype:I

.field public read_extend:I

.field public subscription:I

.field public tagnew:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getCallSubIdColumn()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/CallLogEntity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->hideDetail:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/CallLogEntity;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/CallLogEntity;-><init>(Ltmsdk/common/module/aresengine/CallLogEntity;)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->hideDetail:Z

    .line 58
    instance-of v0, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .end local p1
    iget v0, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 61
    :cond_0
    return-void
.end method
