.class public Lcom/mediatek/calendar/extension/ClearAllEventsExt;
.super Ljava/lang/Object;
.source "ClearAllEventsExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IOptionsMenuExt;


# static fields
.field private static final MENU_ITEM_ID:I = 0x7f1000cb

.field private static final TAG:Ljava/lang/String; = "ClearAllEventsExt"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mediatek/calendar/extension/ClearAllEventsExt;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private launchSelectClearableCalendars()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/calendar/extension/ClearAllEventsExt;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/mediatek/calendar/extension/ClearAllEventsExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 32
    const v0, 0x7f1000cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 33
    return-void
.end method

.method public onOptionsItemSelected(I)Z
    .locals 2
    .parameter "itemId"

    .prologue
    .line 37
    const v0, 0x7f1000cb

    if-ne v0, p1, :cond_0

    .line 38
    const-string v0, "ClearAllEventsExt"

    const-string v1, "delete all events."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/mediatek/calendar/extension/ClearAllEventsExt;->launchSelectClearableCalendars()V

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
