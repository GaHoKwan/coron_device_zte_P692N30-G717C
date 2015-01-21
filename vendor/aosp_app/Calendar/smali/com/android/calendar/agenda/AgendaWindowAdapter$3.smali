.class Lcom/android/calendar/agenda/AgendaWindowAdapter$3;
.super Ljava/lang/Object;
.source "AgendaWindowAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/agenda/AgendaWindowAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1494
    iput-object p1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$3;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1496
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1512
    :goto_0
    :pswitch_0
    return v3

    .line 1498
    :pswitch_1
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$3;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$100(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calendar/extension/ExtensionFactory;->getCalendarTheme(Landroid/content/Context;)Lcom/mediatek/calendar/extension/ICalendarThemeExt;

    move-result-object v0

    .line 1500
    .local v0, calendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;
    invoke-interface {v0}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->isThemeManagerEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-interface {v0}, Lcom/mediatek/calendar/extension/ICalendarThemeExt;->getThemeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1503
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaWindowAdapter$3;->this$0:Lcom/android/calendar/agenda/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/agenda/AgendaWindowAdapter;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/calendar/agenda/AgendaWindowAdapter;->access$3200(Lcom/android/calendar/agenda/AgendaWindowAdapter;)Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1509
    .end local v0           #calendarThemeExt:Lcom/mediatek/calendar/extension/ICalendarThemeExt;
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
