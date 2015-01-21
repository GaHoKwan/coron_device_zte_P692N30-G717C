.class Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;
.super Ljava/lang/Object;
.source "NetIdleHoursSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetIdleHoursSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTime"
.end annotation


# instance fields
.field private tHour:I

.field private tMinute:I

.field final synthetic this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/net/NetIdleHoursSetting;II)V
    .locals 0
    .parameter
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->this$0:Lcom/zte/heartyservice/net/NetIdleHoursSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput p2, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tHour:I

    .line 300
    iput p3, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tMinute:I

    .line 301
    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tHour:I

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget v0, p0, Lcom/zte/heartyservice/net/NetIdleHoursSetting$MyTime;->tMinute:I

    return v0
.end method
