.class public Lcom/mediatek/calendar/extension/CalendarThemeExt;
.super Ljava/lang/Object;
.source "CalendarThemeExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/ICalendarThemeExt;


# static fields
.field private static final THEME_COLOR_DEFAULT:I = -0x19cc4a1b


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/calendar/extension/CalendarThemeExt;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getThemeColor()I
    .locals 3

    .prologue
    .line 22
    iget-object v2, p0, Lcom/mediatek/calendar/extension/CalendarThemeExt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 23
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v0

    .line 24
    .local v0, colorValue:I
    if-nez v0, :cond_0

    const v0, -0x19cc4a1b

    .end local v0           #colorValue:I
    :cond_0
    return v0
.end method

.method public isThemeManagerEnable()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/mediatek/calendar/features/Features;->isThemeManagerEnabled()Z

    move-result v0

    return v0
.end method
