.class public interface abstract Lcom/mediatek/calendar/extension/IEditEventViewExt;
.super Ljava/lang/Object;
.source "IEditEventViewExt.java"


# virtual methods
.method public abstract getDateStringFromMillis(J)Ljava/lang/String;
.end method

.method public abstract isExtensionEnabled()Z
.end method

.method public abstract onAccountItemSelected(Landroid/database/Cursor;)V
.end method

.method public abstract onDateClicked(Landroid/view/View;Landroid/text/format/Time;)V
.end method

.method public abstract setExtUI(Lcom/android/calendar/CalendarEventModel;)V
.end method

.method public abstract updateDatePickerSelection()V
.end method
