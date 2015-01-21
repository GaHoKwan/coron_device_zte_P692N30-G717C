.class Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;
.super Ljava/lang/Object;
.source "ContactDetailHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryItem"
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCallDuration:Ljava/lang/String;

.field private mCallLogDate:Ljava/lang/String;

.field private mCallLogPhoneIcon:I

.field private mCallLogPhoneNumber:Ljava/lang/String;

.field private mCallLogSimIcon:I

.field private mEmptyText:Ljava/lang/String;

.field private mFromApp:I

.field private mMmsContent:Ljava/lang/String;

.field private mMmsDate:Ljava/lang/String;

.field private mMmsMMSsms:I

.field private mMmsPhoneNumber:Ljava/lang/String;

.field private mMmsSentReceive:I

.field private mMmsThreadId:I

.field final synthetic this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;


# direct methods
.method private constructor <init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;-><init>(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)V

    return-void
.end method

.method private formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inputTime"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 440
    if-nez p1, :cond_1

    .line 441
    const-string v1, "ContactDetailHistoryFragment"

    const-string v2, "--djb---formatDate  inputTime== null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x0

    .line 456
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_2

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "AM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->this$0:Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    #getter for: Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->access$200(Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getCallLogDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCallLogPhoneIcon()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogPhoneIcon:I

    return v0
.end method

.method public getCallLogPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCallLogSimIcon()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogSimIcon:I

    return v0
.end method

.method public getEmptyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mEmptyText:Ljava/lang/String;

    return-object v0
.end method

.method public getFromApp()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mFromApp:I

    return v0
.end method

.method public getMmsContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsDate:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsMMSsms()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsMMSsms:I

    return v0
.end method

.method public getMmsPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMmsSentReceive()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsSentReceive:I

    return v0
.end method

.method public getMmsThreadId()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsThreadId:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 387
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mAppName:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setCallDuration(Ljava/lang/String;)V
    .locals 0
    .parameter "callDuration"

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallDuration:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setCallLogDate(Ljava/lang/String;)V
    .locals 1
    .parameter "callLogDate"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogDate:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setCallLogPhoneIcon(I)V
    .locals 0
    .parameter "callLogPhoneIcon"

    .prologue
    .line 417
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogPhoneIcon:I

    .line 418
    return-void
.end method

.method public setCallLogPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "callLogPhoneNumber"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogPhoneNumber:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setCallLogSimIcon(I)V
    .locals 0
    .parameter "callLogSimIcon"

    .prologue
    .line 381
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mCallLogSimIcon:I

    .line 382
    return-void
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 0
    .parameter "emptyText"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mEmptyText:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setFromApp(I)V
    .locals 0
    .parameter "fromApp"

    .prologue
    .line 399
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mFromApp:I

    .line 400
    return-void
.end method

.method public setMmsContent(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsContent"

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsContent:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setMmsDate(Ljava/lang/String;)V
    .locals 1
    .parameter "mmsDate"

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsDate:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public setMmsMMSsms(I)V
    .locals 0
    .parameter "mmsMMSsms"

    .prologue
    .line 375
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsMMSsms:I

    .line 376
    return-void
.end method

.method public setMmsPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "mmsPhoneNumber"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsPhoneNumber:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setMmsSentReceive(I)V
    .locals 0
    .parameter "mmsSentReceive"

    .prologue
    .line 369
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsSentReceive:I

    .line 370
    return-void
.end method

.method public setMmsThreadId(I)V
    .locals 0
    .parameter "mmsThreadId"

    .prologue
    .line 363
    iput p1, p0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment$HistoryItem;->mMmsThreadId:I

    .line 364
    return-void
.end method
