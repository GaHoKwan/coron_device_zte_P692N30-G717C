.class Lcom/mediatek/calendar/lunar/LunarDatePicker$2;
.super Ljava/lang/Object;
.source "LunarDatePicker.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


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
    .line 309
    iput-object p1, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$800(Lcom/mediatek/calendar/lunar/LunarDatePicker;III)V

    .line 313
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->updateSpinners()V
    invoke-static {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$900(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/calendar/lunar/LunarDatePicker$2;->this$0:Lcom/mediatek/calendar/lunar/LunarDatePicker;

    #calls: Lcom/mediatek/calendar/lunar/LunarDatePicker;->notifyDateChanged()V
    invoke-static {v0}, Lcom/mediatek/calendar/lunar/LunarDatePicker;->access$1100(Lcom/mediatek/calendar/lunar/LunarDatePicker;)V

    .line 315
    return-void
.end method
