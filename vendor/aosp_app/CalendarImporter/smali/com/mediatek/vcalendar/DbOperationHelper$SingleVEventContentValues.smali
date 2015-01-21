.class public Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;
.super Ljava/lang/Object;
.source "DbOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vcalendar/DbOperationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleVEventContentValues"
.end annotation


# instance fields
.field private final mAlarmsValuesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mAttendeesValuesList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mEventValues:Landroid/content/ContentValues;

    .line 352
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAlarmsValuesList:Ljava/util/LinkedList;

    .line 353
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAttendeesValuesList:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mEventValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAlarmsValuesList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAttendeesValuesList:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public getAlarmsList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAlarmsValuesList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getAttendeesList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mAttendeesValuesList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getEventValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventContentValues;->mEventValues:Landroid/content/ContentValues;

    return-object v0
.end method
