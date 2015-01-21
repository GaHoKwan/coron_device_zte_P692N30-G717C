.class Lcom/mediatek/calendar/lunar/LunarDatePicker$1;
.super Ljava/lang/Object;
.source "LunarDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendar/lunar/LunarDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 16
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateInputState()V
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$000(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v12}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$100(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 209
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 210
    .local v4, gregorianYear:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v3, v11, 0x1

    .line 211
    .local v3, gregorianMonth:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 212
    .local v2, gregorianDay:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    invoke-virtual {v11, v4, v3, v2}, Lcom/mediatek/calendar/lunar/LunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v6

    .line 216
    .local v6, lunarDates:[I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$400(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_2

    .line 217
    const/16 v11, 0x1b

    move/from16 v0, p2

    if-le v0, v11, :cond_0

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    .line 291
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 292
    .local v10, year:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 293
    .local v7, month:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 294
    .local v1, day:I
    invoke-static {}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$700()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onValueChange(), year: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", month: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", day: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V
    invoke-static {v11, v10, v7, v1}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$800(Lcom/mediatek/calendar/lunar/LunarDatePicker;III)V

    .line 298
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$900(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateCalendarView()V
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$1000(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->notifyDateChanged()V
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$1100(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 301
    return-void

    .line 219
    .end local v1           #day:I
    .end local v7           #month:I
    .end local v10           #year:I
    :cond_0
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_1

    const/16 v11, 0x1b

    move/from16 v0, p3

    if-le v0, v11, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 222
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    sub-int v13, p3, p2

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 224
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$500(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_e

    .line 225
    const/4 v5, 0x0

    .line 226
    .local v5, leapMonth:I
    const/4 v8, 0x0

    .line 227
    .local v8, monthCountDays:I
    const/16 v11, 0xa

    move/from16 v0, p2

    if-le v0, v11, :cond_4

    if-nez p3, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v5

    .line 229
    const/16 v11, 0xc

    if-ne v5, v11, :cond_3

    .line 230
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v8

    .line 234
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 232
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    const/16 v13, 0xc

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_1

    .line 236
    :cond_4
    if-nez p2, :cond_6

    const/16 v11, 0xa

    move/from16 v0, p3

    if-le v0, v11, :cond_6

    .line 237
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v5

    .line 238
    const/16 v11, 0xc

    if-ne v5, v11, :cond_5

    .line 239
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v8

    .line 244
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    neg-int v13, v8

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 241
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v12, v12, -0x1

    const/16 v13, 0xc

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_2

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->leapMonth(I)I

    move-result v5

    .line 248
    sub-int v11, p3, p2

    if-gez v11, :cond_a

    .line 249
    if-nez v5, :cond_7

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v13, p3, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    .line 263
    :goto_3
    neg-int v8, v8

    .line 280
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12, v8}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    .line 253
    :cond_7
    move/from16 v0, p3

    if-ge v0, v5, :cond_8

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v13, p3, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_3

    .line 256
    :cond_8
    move/from16 v0, p3

    if-ne v0, v5, :cond_9

    .line 257
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v8

    goto :goto_3

    .line 259
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    move/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_3

    .line 265
    :cond_a
    if-nez v5, :cond_b

    .line 266
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v13, p2, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_4

    .line 269
    :cond_b
    move/from16 v0, p2

    if-ge v0, v5, :cond_c

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    add-int/lit8 v13, p2, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto :goto_4

    .line 272
    :cond_c
    move/from16 v0, p2

    if-ne v0, v5, :cond_d

    .line 273
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    invoke-virtual {v11, v12}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v8

    goto/16 :goto_4

    .line 275
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v11

    const/4 v12, 0x0

    aget v12, v6, v12

    move/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Lcom/mediatek/calendar/lunar/LunarUtil;->daysOfALunarMonth(II)I

    move-result v8

    goto/16 :goto_4

    .line 282
    .end local v5           #leapMonth:I
    .end local v8           #monthCountDays:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v11}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$600(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v11

    move-object/from16 v0, p1

    if-ne v0, v11, :cond_10

    .line 283
    sub-int v11, p3, p2

    if-lez v11, :cond_f

    const/4 v9, 0x1

    .line 285
    .local v9, orientation:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mLunar:Lcom/mediatek/calendar/lunar/LunarUtil;
    invoke-static {v12}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$300(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Lcom/mediatek/calendar/lunar/LunarUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/calendar/lunar/LunarDatePicker$1;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #getter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v13}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$200(Lcom/mediatek/calendar/lunar/LunarDatePicker;)Ljava/util/Calendar;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x2

    aget v15, v6, v15

    invoke-virtual {v12, v13, v14, v15, v9}, Lcom/mediatek/calendar/lunar/LunarUtil;->decreaseOrIncreaseALunarYear(Ljava/util/Calendar;III)Ljava/util/Calendar;

    move-result-object v12

    #setter for: Lcom/mediatek/calendar/lunar/LunarDatePicker;->mTempDate:Ljava/util/Calendar;
    invoke-static {v11, v12}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$202(Lcom/mediatek/calendar/lunar/LunarDatePicker;Ljava/util/Calendar;)Ljava/util/Calendar;

    goto/16 :goto_0

    .line 283
    .end local v9           #orientation:I
    :cond_f
    const/4 v9, -0x1

    goto :goto_5

    .line 288
    :cond_10
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
.end method
