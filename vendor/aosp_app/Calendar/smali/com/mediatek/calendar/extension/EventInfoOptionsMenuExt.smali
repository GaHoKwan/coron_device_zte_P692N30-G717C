.class public Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;
.super Ljava/lang/Object;
.source "EventInfoOptionsMenuExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IOptionsMenuExt;


# static fields
.field private static final MENU_ITEM_ID:I = 0x7f1000cf

.field private static mIsTabletConfig:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mIsTabletConfig:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mContext:Landroid/content/Context;

    .line 32
    iput-wide p2, p0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mEventId:J

    .line 34
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mContext:Landroid/content/Context;

    const v1, 0x7f090006

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mIsTabletConfig:Z

    .line 36
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 41
    const v1, 0x7f1000cf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 43
    .local v0, share:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mIsTabletConfig:Z

    if-nez v1, :cond_0

    .line 44
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 45
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(I)Z
    .locals 3
    .parameter "itemId"

    .prologue
    .line 52
    const v0, 0x7f1000cf

    if-ne v0, p1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/mediatek/calendar/extension/EventInfoOptionsMenuExt;->mEventId:J

    invoke-static {v0, v1, v2}, Lcom/mediatek/calendar/MTKUtils;->sendShareEvent(Landroid/content/Context;J)V

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
