.class public final enum Lcom/zte/aliveupdate/common/datatype/PeriodType;
.super Ljava/lang/Enum;
.source "PeriodType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/aliveupdate/common/datatype/PeriodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/aliveupdate/common/datatype/PeriodType;

.field public static final enum EVERY_FIVE_HOUR:Lcom/zte/aliveupdate/common/datatype/PeriodType;

.field public static final enum EVERY_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

.field public static final enum EVERY_TIME:Lcom/zte/aliveupdate/common/datatype/PeriodType;

.field public static final enum EVERY_WEEK:Lcom/zte/aliveupdate/common/datatype/PeriodType;

.field public static final enum EVETY_THREE_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;


# instance fields
.field private timePeriod:J

.field private ui_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    const-string v1, "EVERY_TIME"

    const-wide/16 v3, 0x0

    const v5, 0x7f0a002c

    invoke-direct/range {v0 .. v5}, Lcom/zte/aliveupdate/common/datatype/PeriodType;-><init>(Ljava/lang/String;IJI)V

    sput-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_TIME:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    .line 18
    new-instance v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    const-string v4, "EVERY_FIVE_HOUR"

    const-wide/32 v6, 0x66ff300

    const v8, 0x7f0a002c

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/zte/aliveupdate/common/datatype/PeriodType;-><init>(Ljava/lang/String;IJI)V

    sput-object v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_FIVE_HOUR:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    .line 19
    new-instance v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    const-string v4, "EVERY_WEEK"

    const-wide/32 v6, 0x1ee62800

    const v8, 0x7f0a002d

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/zte/aliveupdate/common/datatype/PeriodType;-><init>(Ljava/lang/String;IJI)V

    sput-object v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_WEEK:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    .line 20
    new-instance v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    const-string v4, "EVERY_MONTH"

    const-wide v6, 0x39ef8b000L

    const v8, 0x7f0a002e

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/zte/aliveupdate/common/datatype/PeriodType;-><init>(Ljava/lang/String;IJI)V

    sput-object v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    .line 21
    new-instance v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    const-string v4, "EVETY_THREE_MONTH"

    const-wide v6, 0xadcea1000L

    const v8, 0x7f0a002f

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/zte/aliveupdate/common/datatype/PeriodType;-><init>(Ljava/lang/String;IJI)V

    sput-object v3, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVETY_THREE_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zte/aliveupdate/common/datatype/PeriodType;

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_TIME:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_FIVE_HOUR:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_WEEK:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVETY_THREE_MONTH:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    aput-object v1, v0, v12

    sput-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->$VALUES:[Lcom/zte/aliveupdate/common/datatype/PeriodType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter "timePeriod"
    .parameter "ui_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-wide p3, p0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->timePeriod:J

    .line 28
    iput p5, p0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->ui_id:I

    .line 29
    return-void
.end method

.method public static getDefault()Lcom/zte/aliveupdate/common/datatype/PeriodType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->EVERY_FIVE_HOUR:Lcom/zte/aliveupdate/common/datatype/PeriodType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/aliveupdate/common/datatype/PeriodType;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;

    return-object v0
.end method

.method public static values()[Lcom/zte/aliveupdate/common/datatype/PeriodType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->$VALUES:[Lcom/zte/aliveupdate/common/datatype/PeriodType;

    invoke-virtual {v0}, [Lcom/zte/aliveupdate/common/datatype/PeriodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/aliveupdate/common/datatype/PeriodType;

    return-object v0
.end method


# virtual methods
.method public getTimePeriod()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->timePeriod:J

    return-wide v0
.end method

.method public saveChecked()V
    .locals 3

    .prologue
    .line 40
    invoke-static {}, Lcom/zte/aliveupdate/main/AliveUpdateApp;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ALIVE_UPDATE_PEROID_TYPE"

    invoke-virtual {p0}, Lcom/zte/aliveupdate/common/datatype/PeriodType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method

.method public setCheck(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "b"

    .prologue
    .line 35
    iget v1, p0, Lcom/zte/aliveupdate/common/datatype/PeriodType;->ui_id:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 36
    .local v0, radio:Landroid/widget/RadioButton;
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 37
    return-void
.end method
