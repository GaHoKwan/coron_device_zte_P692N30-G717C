.class public Lcom/mediatek/calendar/selectevent/EventsListView;
.super Lcom/android/calendar/agenda/AgendaListView;
.source "EventsListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventsListView"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/agenda/AgendaListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "EventsListView"

    const-string v1, "EventsListView inited"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/mediatek/calendar/selectevent/EventsListView;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private shareSingleEvent(J)V
    .locals 5
    .parameter "eventId"

    .prologue
    .line 48
    const-string v2, "content://com.mediatek.calendarimporter/events"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 50
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    const-string v2, "EventsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick(), Email selected calendar, uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/mediatek/calendar/selectevent/EventsListView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/mediatek/calendar/extension/IAgendaChoiceForExt;

    if-eqz v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/mediatek/calendar/selectevent/EventsListView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/mediatek/calendar/extension/IAgendaChoiceForExt;

    invoke-interface {v2, v0}, Lcom/mediatek/calendar/extension/IAgendaChoiceForExt;->retSelectedEvent(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/calendar/agenda/AgendaListView;->getEventIdByPosition(I)J

    move-result-wide v0

    .line 40
    .local v0, eventId:J
    invoke-direct {p0, v0, v1}, Lcom/mediatek/calendar/selectevent/EventsListView;->shareSingleEvent(J)V

    goto :goto_0
.end method
