.class Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;
.super Ljava/lang/Object;
.source "AtNightDoNotDisturbSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTime"
.end annotation


# instance fields
.field private tHour:I

.field private tMinute:I

.field final synthetic this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;II)V
    .locals 0
    .parameter
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p2, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tHour:I

    .line 291
    iput p3, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tMinute:I

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    iget v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tHour:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 285
    iget v0, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$MyTime;->tMinute:I

    return v0
.end method
