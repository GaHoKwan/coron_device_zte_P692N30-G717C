.class public Lcom/mediatek/calendar/extension/DefaultEditEventViewExt;
.super Ljava/lang/Object;
.source "DefaultEditEventViewExt.java"

# interfaces
.implements Lcom/mediatek/calendar/extension/IEditEventViewExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateStringFromMillis(J)Ljava/lang/String;
    .locals 1
    .parameter "millis"

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public isExtensionEnabled()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public onAccountItemSelected(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 36
    return-void
.end method

.method public onDateClicked(Landroid/view/View;Landroid/text/format/Time;)V
    .locals 0
    .parameter "v"
    .parameter "time"

    .prologue
    .line 18
    return-void
.end method

.method public setExtUI(Lcom/android/calendar/CalendarEventModel;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 32
    return-void
.end method

.method public updateDatePickerSelection()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
