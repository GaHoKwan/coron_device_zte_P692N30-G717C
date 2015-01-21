.class public Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
.super Ltmsdk/common/module/aresengine/SmsEntity;
.source "SmsLog.java"


# static fields
.field public static final COLUMN_ADDRESS:Ljava/lang/String; = "address"

.field public static final COLUMN_BODY:Ljava/lang/String; = "body"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_PERSON:Ljava/lang/String; = "person"

.field public static final COLUMN_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final COLUMN_READ:Ljava/lang/String; = "read"

.field public static final COLUMN_READ_EXTEND:Ljava/lang/String; = "read_extend"

.field public static final COLUMN_SERVICE_CENTER:Ljava/lang/String; = "service_center"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_SUBJECT:Ljava/lang/String; = "subject"

.field public static final COLUMN_SUBSCRIPTION:Ljava/lang/String; = null

.field public static final COLUMN_SYS_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"


# instance fields
.field public isHideDetail:Z

.field public read_extend:I

.field public subscription:I

.field public totalNumber:I

.field public unreadNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getSmsSubIdColumn()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->isHideDetail:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ltmsdk/common/module/aresengine/SmsEntity;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Ltmsdk/common/module/aresengine/SmsEntity;-><init>(Ltmsdk/common/module/aresengine/SmsEntity;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->isHideDetail:Z

    .line 66
    instance-of v0, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local p1
    iget v0, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    .line 58
    return-void

    .line 57
    .restart local p1
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method
