.class public Lcom/mediatek/calendar/selectevent/EventSelectionFragment;
.super Lcom/android/calendar/agenda/AgendaFragment;
.source "EventSelectionFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventSelectionFragment"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/calendar/selectevent/EventSelectionFragment;-><init>(J)V

    .line 17
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 25
    const-string v0, "EventSelectionFragment"

    const-string v1, "EventSelectionFragment created"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected extFindListView(Landroid/view/View;)Lcom/android/calendar/agenda/AgendaListView;
    .locals 2
    .parameter "v"

    .prologue
    .line 36
    const-string v0, "EventSelectionFragment"

    const-string v1, "found EventsListView"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const v0, 0x7f1000b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/agenda/AgendaListView;

    return-object v0
.end method

.method protected extInflateFragmentView(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2
    .parameter "inflater"

    .prologue
    .line 30
    const-string v0, "EventSelectionFragment"

    const-string v1, "mtk_event_selection_fagment inflated"

    invoke-static {v0, v1}, Lcom/mediatek/calendar/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const v0, 0x7f040031

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
