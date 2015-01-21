.class Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;
.super Ljava/lang/Object;
.source "TimingSaveElectricitySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTime"
.end annotation


# instance fields
.field private tHour:I

.field private tMinute:I

.field final synthetic this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;II)V
    .locals 0
    .parameter
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput p2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tHour:I

    .line 366
    iput p3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tMinute:I

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    iget v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 360
    iget v0, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tMinute:I

    return v0
.end method
